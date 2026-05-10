CLASS zcl_r_rap_wf01 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    TYPES: BEGIN OF gts_product,

             "------------------------------------------------------------
             " 0..*  sub-entities  →  JSON arrays
             "------------------------------------------------------------
             _productbasictext         TYPE STANDARD TABLE OF zi_poc_product_12 WITH EMPTY KEY,
             _productchangemaster      TYPE STANDARD TABLE OF zi_poc_product_11 WITH EMPTY KEY,
             _productdescription       TYPE STANDARD TABLE OF zi_poc_product_01 WITH EMPTY KEY,
             _productewmwarehouse      TYPE STANDARD TABLE OF zi_poc_product_10 WITH EMPTY KEY,
             _productinspectiontext    TYPE STANDARD TABLE OF zi_poc_product_13 WITH EMPTY KEY,
             _productinternalcomment   TYPE STANDARD TABLE OF zi_poc_product_15 WITH EMPTY KEY,
             _productplant             TYPE STANDARD TABLE OF zi_poc_product_04 WITH EMPTY KEY,
             _productpurchaseordertext TYPE STANDARD TABLE OF zi_poc_product_14 WITH EMPTY KEY,
             _productsalesdelivery     TYPE STANDARD TABLE OF zi_poc_product_05 WITH EMPTY KEY,
             _productunitofmeasure     TYPE STANDARD TABLE OF zi_poc_product_06 WITH EMPTY KEY,
             _productvaluation         TYPE STANDARD TABLE OF zi_poc_product_07 WITH EMPTY KEY,

             "------------------------------------------------------------
             " 0..1  sub-entities  →  JSON objects
             "------------------------------------------------------------
             _productprocurement       TYPE zi_poc_product_03,
             _productqualitymanagement TYPE zi_poc_product_09,
             _productsales             TYPE zi_poc_product_02,
             _productstorage           TYPE zi_poc_product_08.

             "------------------------------------------------------------
             " Root product fields (Product, ProductType, BaseUnit, …)
             "------------------------------------------------------------
             INCLUDE                   TYPE zc_poc_product.

    TYPES: END OF gts_product.

    INTERFACES if_swf_cpwf_callback.
    INTERFACES if_oo_adt_classrun.

    METHODS trigger_workflow
      IMPORTING is_payload TYPE gts_product.
  PROTECTED SECTION.
  PRIVATE SECTION.
    TYPES: gty_action TYPE c LENGTH 2.

    CONSTANTS:
      BEGIN OF gcs_action,
        accepted TYPE gty_action VALUE '01',
        rejected TYPE gty_action VALUE '02',
      END OF gcs_action.

    TYPES: BEGIN OF gts_outcome,
             action TYPE gty_action,
             reason TYPE string,
           END OF gts_outcome.

    "INTERFACE data TYPE for information exchange.
    TYPES: BEGIN OF gts_context,
             payload   TYPE gts_product,
             approver  TYPE string,
             requester TYPE string,
           END OF gts_context.
    METHODS call_api_external
      IMPORTING if_product TYPE matnr.

    "Constants for workflow,
    CONSTANTS:
*      BEGIN OF travel_status,
*        open     TYPE c LENGTH 1 VALUE 'O', "Open,
*        accepted TYPE c LENGTH 1 VALUE 'A', "Accepted,
*        rejected TYPE c LENGTH 1 VALUE 'X', "Rejected,
*        waiting  TYPE c LENGTH 1 VALUE 'W', "Awaiting Approval,
*      END OF travel_status,
      gcf_travel_wf_defid   TYPE if_swf_cpwf_api=>cpwf_def_id_long VALUE 'jp20.ips-dev-6uhgdk1z.workflowrequesttocreateorupdateaproduct.mainProcess',
      gcf_wf_retention_days TYPE if_swf_cpwf_api=>retention_time VALUE '30',
      gcf_callback_class    TYPE if_swf_cpwf_api=>callback_classname VALUE  'zcl_r_rap_wf01',
      gcf_consumer          TYPE string VALUE 'DEFAULT'.


ENDCLASS.



CLASS zcl_r_rap_wf01 IMPLEMENTATION.
  METHOD if_swf_cpwf_callback~workflow_instance_completed.

    TYPES: BEGIN OF callback_context,
             start_event TYPE gts_context,
           END OF callback_context.

    DATA: callback_context TYPE callback_context.

    TRY.

*       Get the API of workflow.
        DATA(cpwf_api) = cl_swf_cpwf_api_factory_a4c=>get_api_instance( ).

*       Get the Context of workflow using workflow handler ID in jason format
*       Convert it into internal data format callback_context.
        DATA(context_xstring) = cpwf_api->get_workflow_context( iv_cpwf_handle = iv_cpwf_handle ).
        DATA(outcome) = cpwf_api->get_workflow_outcome( iv_cpwf_handle = iv_cpwf_handle ).

        cpwf_api->get_context_data_from_json(
          EXPORTING
            iv_context      = context_xstring
            it_name_mapping = VALUE #( ( abap = 'start_event' json = 'startEvent' ) )
          IMPORTING
            ev_data         = callback_context
        ).

      CATCH cx_swf_cpwf_api INTO DATA(exception).
    ENDTRY.

    DATA: lds_outcome TYPE gts_outcome,
          ldf_product TYPE matnr.

    ldf_product = callback_context-start_event-payload-product.

    IF lds_outcome-action = gcs_action-accepted."Approved
      DATA(status)    = 'X'.

      "Call API service TDD
      call_api_external( if_product = ldf_product ).
    ELSE."Rejected
    ENDIF.

    IF sy-subrc = 0.
      " Update the status of the travel based on the workflow outcome.

*      MODIFY ENTITIES OF zr_rap_travel_rd02 " Replace the suffix with your choosen group id.
*                ENTITY travel
*                   UPDATE FIELDS ( OverallStatus )
*                      WITH VALUE #( ( traveluuid    = traveluuid
*                                      OverallStatus = status
*                                    ) )
*                    FAILED DATA(ls_failed)
*                    REPORTED DATA(ls_reported).
*      COMMIT ENTITIES.
    ENDIF.

  ENDMETHOD.


  METHOD trigger_workflow.
*register the workflow
    TRY.
        MODIFY ENTITIES OF i_cpwf_inst
           ENTITY CPWFInstance "Changed#RD
           EXECUTE registerWorkflow
           FROM VALUE #( ( %key-CpWfHandle      = ''     "cl_system_uuid=>create_uuid_x16_static( )
                        %param-RetentionTime = gcf_wf_retention_days
                        %param-PaWfDefId     = gcf_travel_wf_defid
                        %param-CallbackClass = gcf_callback_class
                        %param-Consumer      = gcf_consumer ) )
           MAPPED   DATA(mapped_wf)
           FAILED   DATA(failed_wf)
           REPORTED DATA(reported_wf).

        IF mapped_wf IS NOT INITIAL.

          DATA: lds_context TYPE gts_context.
          lds_context-payload = is_payload.
          lds_context-approver = 'nguyen.duy.tan@ips.ne.jp'.

          TRY.
              DATA(ldf_bp_id) = cl_abap_context_info=>get_user_business_partner_id(
*                                iv_buser =
                                        ).
            CATCH cx_abap_context_info_error.
              "handle exception
          ENDTRY.

          SELECT SINGLE userid
          FROM I_BusinessUserBasic
          WHERE BusinessPartner = @ldf_bp_id
          INTO @DATA(ldf_user_id)
          PRIVILEGED ACCESS.

          SELECT SINGLE \_AddrCurDefaultEmailAddress-EmailAddress
          FROM I_user AS Address
          WHERE UserID =     @ldf_user_id
          INTO @DATA(ldf_email)
          PRIVILEGED ACCESS.

          lds_context-requester = ldf_email.
*          " Set the workflow context for the new workflow instances
          DATA: ldt_name_mapping TYPE if_swf_cpwf_api=>name_mappings.

          SELECT *
            FROM zw00117t_vn
            INTO TABLE @DATA(ldt_zw00117t_vn).

          ldt_name_mapping = CORRESPONDING #( ldt_zw00117t_vn ).

          TRY.
              DATA(lo_cpwf_api) = cl_swf_cpwf_api_factory_a4c=>get_api_instance( ).
              DATA(lo_json_conv) = lo_cpwf_api->get_json_converter(
                                     it_name_mapping              = ldt_name_mapping
*                                     iv_camel_case                = abap_true
*                                     iv_capital_letter            = abap_true
*                                     it_uppercase_word            =
*                                     iv_suppress_empty_components = abap_true
*                                     iv_uppercase                 = abap_false
                                   ).
              DATA(ldf_context_json) = lo_json_conv->serialize( data = lds_context ).
            CATCH cx_swf_cpwf_api.
          ENDTRY.
*pass the Payload to workflow
          MODIFY ENTITIES OF i_cpwf_inst
           ENTITY CPWFInstance
           EXECUTE setPayload
           FROM VALUE #( ( %key-CpWfHandle = mapped_wf-cpwfinstance[ 1 ]-CpWfHandle
                          %param-context  = ldf_context_json ) )
                MAPPED   mapped_wf
                FAILED   failed_wf
                REPORTED reported_wf ##NO_LOCAL_MODE.

        ENDIF.
      CATCH cx_uuid_error.
        "handle exception
    ENDTRY.

  ENDMETHOD.


  METHOD call_api_external.

    MODIFY ENTITIES OF zi_poc_product
              ENTITY Product
                 UPDATE FIELDS ( IsApproval )
                    WITH VALUE #( ( Product    = if_product
                                    IsApproval = abap_true
                                    %control-IsApproval     = if_abap_behv=>mk-on
                                  ) )
                  FAILED DATA(ls_failed)
                  REPORTED DATA(ls_reported).
    COMMIT ENTITIES.

    READ ENTITIES OF zi_poc_product
      ENTITY Product
        EXECUTE syncToCloud
          FROM VALUE #( ( %cid = 'APPROVAL_001'
                          %param = VALUE #(  product = if_product ) ) )
      RESULT DATA(lt_result)
      FAILED DATA(lds_failed)
      REPORTED DATA(lds_reported).
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.
    DATA(lo_helper) = NEW lcl_helper( ).
    lo_helper->generate_mapping( out ).
  ENDMETHOD.

ENDCLASS.
