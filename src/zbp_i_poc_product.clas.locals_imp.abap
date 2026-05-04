CLASS lhc_Product DEFINITION INHERITING FROM cl_abap_behavior_handler.
  PRIVATE SECTION.
    METHODS get_instance_features FOR INSTANCE FEATURES
      IMPORTING keys REQUEST requested_features FOR Product RESULT result.

    METHODS get_instance_authorizations FOR INSTANCE AUTHORIZATION
      IMPORTING keys REQUEST requested_authorizations FOR Product RESULT result.

    METHODS get_global_authorizations FOR GLOBAL AUTHORIZATION
      IMPORTING REQUEST requested_authorizations FOR Product RESULT result.

    METHODS Activate FOR MODIFY
      IMPORTING keys FOR ACTION Product~Activate.
    METHODS createProduct FOR MODIFY
      IMPORTING keys FOR ACTION Product~createProduct.
    METHODS syncToS4HANA FOR DETERMINE ON SAVE
      IMPORTING keys FOR Product~syncToS4HANA.
*    METHODS RequestApproved FOR MODIFY
*      IMPORTING keys FOR ACTION Product~RequestApproved.
*
*    METHODS RequestRejected FOR MODIFY
*      IMPORTING keys FOR ACTION Product~RequestRejected.
    METHODS ReSendRequest FOR MODIFY
      IMPORTING keys FOR ACTION Product~ReSendRequest RESULT result.

    METHODS triggerWorkflow FOR DETERMINE ON SAVE
      IMPORTING keys FOR Product~triggerWorkflow." RESULT result.

ENDCLASS.


CLASS lhc_Product IMPLEMENTATION.

  METHOD get_instance_features.
    READ ENTITIES OF zi_poc_product IN LOCAL MODE
     ENTITY Product
       FIELDS ( Product )
       WITH CORRESPONDING #( keys )
     RESULT DATA(lds_product)
     FAILED failed.

    "編集」ボタンを非表示にする
    result = VALUE #(
   FOR ls_product IN lds_product
   (
     %tky = ls_product-%tky

     %action-ReSendRequest =
       COND #(
         WHEN ls_product-IsApproval = abap_true
           THEN if_abap_behv=>fc-o-disabled
         ELSE
           if_abap_behv=>fc-o-enabled
       )
   )
 ).
  ENDMETHOD.

  METHOD get_instance_authorizations.
  ENDMETHOD.

  METHOD get_global_authorizations.
  ENDMETHOD.

  METHOD Activate.
  ENDMETHOD.

  METHOD createProduct.

    CHECK keys IS NOT INITIAL.

    MODIFY ENTITIES OF zi_poc_product IN LOCAL MODE
           ENTITY Product
           CREATE
           FIELDS ( Product ProductDescription ProductTypeCode baseunit productstandardid materialrevisionlevel externalproductgroup referenceproduct )
           WITH VALUE #( FOR key IN keys
                         ( %cid                  = key-%cid
                           %is_draft             = key-%param-%is_draft
                           Product               = key-%param-Product
                           ProductDescription    = key-%param-ProductDescription
                           ProductTypeCode       = key-%param-ProductTypeCode
                           BaseUnit              = key-%param-BaseUnit
                           ProductStandardID     = key-%param-ProductStandardID
                           MaterialRevisionLevel = key-%param-MaterialRevisionLevel
                           ExternalProductGroup  = key-%param-ExternalProductGroup
                           ReferenceProduct      = key-%param-ReferenceProduct ) )
           CREATE BY \_ProductDescription
           FIELDS ( Product ProductDescription language )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid               = 'PRO_DES'
                                                  %is_draft          = key-%param-%is_draft
                                                  Product            = key-%param-Product
                                                  ProductDescription = key-%param-ProductDescription
                                                  Language           = sy-langu ) ) ) )
           CREATE BY \_ProductSales
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_SAL'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductProcurement
           FIELDS ( Product PurchaseOrderQuantityUnit )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid                      = 'PRO_PRO'
                                                  %is_draft                 = key-%param-%is_draft
                                                  Product                   = key-%param-Product
                                                  PurchaseOrderQuantityUnit = key-%param-BaseUnit ) ) ) )
           CREATE BY \_ProductPlant
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_PLA'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductSalesDelivery
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_SAL_DEL'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductUnitOfMeasure
           FIELDS ( Product BaseUnit )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_UOM'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product
                                                  BaseUnit  = key-%param-BaseUnit ) ) ) )
           CREATE BY \_ProductValuation
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_VAL'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductStorage
           FIELDS ( Product BaseUnit )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_STO'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product
                                                  BaseUnit  = key-%param-BaseUnit ) ) ) )
           CREATE BY \_ProductQualityManagement
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_QUAL'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductEWMWarehouse
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_EWM'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductChangeMaster
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_CHG'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductBasicText
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_BAS_TXT'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductInspectionText
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_INSP_TXT'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductPurchaseOrderText
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i

                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_PO_TXT'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )
           CREATE BY \_ProductInternalComment
           FIELDS ( Product )
           WITH VALUE #( FOR key IN keys INDEX INTO i

                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid      = 'PRO_INT_COM'
                                                  %is_draft = key-%param-%is_draft
                                                  Product   = key-%param-Product ) ) ) )

           MAPPED mapped.
  ENDMETHOD.

    METHOD syncToS4HANA.
     RETURN.
     TYPES: BEGIN OF ty_product_desc_min,
             product             TYPE zsc_ce_product=>tys_product_description_type-product,
             language            TYPE zsc_ce_product=>tys_product_description_type-language,
             product_description TYPE zsc_ce_product=>tys_product_description_type-product_description,
           END OF ty_product_desc_min.
    TYPES tyt_product_desc_min TYPE STANDARD TABLE OF ty_product_desc_min WITH DEFAULT KEY.
    TYPES: BEGIN OF ty_product_plant_min,
             product TYPE zsc_ce_product=>tys_product_plant_type-product,
             plant   TYPE zsc_ce_product=>tys_product_plant_type-plant,
           END OF ty_product_plant_min.
    TYPES tyt_product_plant_min TYPE STANDARD TABLE OF ty_product_plant_min WITH DEFAULT KEY.
    " 2. Gắn các entity con tối giản vào Root
    TYPES: BEGIN OF ty_product_deep_insert,
             product              TYPE zsc_ce_product=>tys_product_type-product,
             product_type_2       TYPE zsc_ce_product=>tys_product_type-product_type_2,
             base_unit            TYPE zsc_ce_product=>tys_product_type-base_unit,
             base_isounit         TYPE zsc_ce_product=>tys_product_type-base_isounit,
             industry_sector      TYPE zsc_ce_product=>tys_product_type-industry_sector,
             _productdescription  TYPE tyt_product_desc_min,
             _productplant        TYPE tyt_product_plant_min,
           END OF ty_product_deep_insert.
    " 2. Đọc dữ liệu RAP
    READ ENTITIES OF zi_poc_product IN LOCAL MODE
      ENTITY Product
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_products)

      ENTITY Product BY \_ProductDescription
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_descriptions)

      ENTITY Product BY \_ProductPlant
      ALL FIELDS WITH CORRESPONDING #( keys )
      RESULT DATA(lt_plants).

    DATA: lo_http_client  TYPE REF TO if_web_http_client,
          lo_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy.

    LOOP AT lt_products INTO DATA(ls_product).
      TRY.
          DATA(lo_destination) = cl_http_destination_provider=>create_by_comm_arrangement(
                             comm_scenario  = 'ZCS_POC_PRODUCT_OUT'
                             service_id     = 'ZOS_CE_PRODUCT_REST' ).
          lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_destination ).

          lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
             EXPORTING
             is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                 proxy_model_id      = 'ZSC_CE_PRODUCT'
                                                 proxy_model_version = '0001' )
            io_http_client             = lo_http_client
            iv_relative_service_root   = '/sap/opu/odata4/sap/api_product/srvd_a2x/sap/product/0003' ).

          DATA(lo_request) = lo_client_proxy->create_resource_for_entity_set( 'PRODUCT' )->create_request_for_create( ).

          DATA ls_deep_product TYPE ty_product_deep_insert.

          ls_deep_product-product         = ls_product-Product.
          ls_deep_product-product_type_2  = ls_product-ProductTypeCode.
          ls_deep_product-base_unit       = ls_product-BaseUnit.
          ls_deep_product-industry_sector = 'M'.

          IF ls_product-BaseUnit IS NOT INITIAL.
            SELECT SINGLE UnitOfMeasureISOCode FROM I_UnitOfMeasure
              WHERE UnitOfMeasure = @ls_product-BaseUnit INTO @ls_deep_product-base_isounit.
          ENDIF.

          LOOP AT lt_descriptions INTO DATA(ls_desc) WHERE Product = ls_product-Product.
            APPEND VALUE #( language            = ls_desc-Language
                            product             = ls_product-Product
                            product_description = ls_desc-ProductDescription )
                   TO ls_deep_product-_productdescription.
          ENDLOOP.

          LOOP AT lt_plants INTO DATA(ls_plant) WHERE Product = ls_product-Product.
            APPEND VALUE #( plant   = ls_plant-Plant
                            product = ls_product-Product ) TO ls_deep_product-_productplant.
          ENDLOOP.

          " 5. Gửi request
          lo_request->set_business_data( is_business_data = ls_deep_product ).
          DATA(lo_response) = lo_request->execute( ).

          APPEND VALUE #( %tky = ls_product-%tky
                          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-success
                                                        text     = 'Product synced successfully' )
                        ) TO reported-product.

        CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
          DATA(lv_error_text) = lx_remote->get_text( ).
          DATA(lv_detailed) = lx_remote->get_longtext( ).
          IF lv_detailed IS INITIAL AND lx_remote->previous IS BOUND.
            lv_detailed = lx_remote->previous->get_text( ).
          ENDIF.

          APPEND VALUE #( %tky = ls_product-%tky
                          %msg = new_message_with_text(
                                   severity = if_abap_behv_message=>severity-warning
                                   text     = CONV #( lv_detailed ) )
                        ) TO reported-product.
        CATCH /iwbep/cx_gateway INTO DATA(lx_gateway).
          DATA(lv_gw_msg) = lx_gateway->get_text( ).
          APPEND VALUE #( %tky = ls_product-%tky
                          %msg = new_message_with_text(
                                   severity = if_abap_behv_message=>severity-warning
                                   text     = CONV #( lv_gw_msg ) )
                        ) TO reported-product.
        CATCH cx_root INTO DATA(lx_exception).
          DATA(lv_root_msg) = lx_exception->get_text( ).
          IF lx_exception->previous IS BOUND.
            lv_root_msg = |{ lv_root_msg } -- { lx_exception->previous->get_text( ) }|.
          ENDIF.
          IF strlen( lv_root_msg ) > 220.
            lv_root_msg = lv_root_msg(220).
          ENDIF.
          APPEND VALUE #( %tky = ls_product-%tky
                          %msg = new_message_with_text(
                                   severity = if_abap_behv_message=>severity-warning
                                   text     = CONV #( lv_root_msg ) )
                        ) TO reported-product.
      ENDTRY.
    ENDLOOP.
  ENDMETHOD.



*  METHOD RequestApproved.
*    data(ldt_keys) = keys.
*  ENDMETHOD.
*
*  METHOD RequestRejected.
*  ENDMETHOD.

  METHOD ReSendRequest.
*    DATA(lds_key) = keys[ 1 ].
*    APPEND VALUE #( %tky = lds_key-%tky ) TO failed-product.
*    reported = VALUE #( product = VALUE #( ( %tky = lds_key-%tky %msg = new_message_with_text(
*                                                                          severity = if_abap_behv_message=>severity-error
*                                                                          text     = 'Test'
*                                                                        ) ) ) ).
*    RETURN.
*
*    MODIFY ENTITIES OF zi_poc_product IN LOCAL MODE
*    ENTITY Product
*    UPDATE FIELDS ( IsApproval )
*    WITH VALUE #(  FOR key IN keys
*                   ( Product                 = key-Product
*                     IsApproval              =  abap_true
*                    %control-IsApproval      = cl_abap_behv=>flag_changed ) )
*    FAILED DATA(lds_update_failed)
*    REPORTED DATA(lds_update_reported).
    READ ENTITIES OF zi_poc_product IN LOCAL MODE
           ENTITY Product
               ALL FIELDS
               WITH CORRESPONDING #( keys )
               RESULT DATA(ldt_products).

    IF keys IS NOT INITIAL.

      DATA(lds_product) = ldt_products[ 1 ].

      IF lds_product-%is_draft <> if_abap_behv=>mk-on.
        NEW zcl_r_rap_wf01( )->trigger_workflow( ).
      ENDIF.
    ENDIF.

    result = CORRESPONDING #( ldt_products ).

  ENDMETHOD.

  METHOD triggerworkflow.

    IF keys IS NOT INITIAL.
      READ ENTITIES OF zi_poc_product IN LOCAL MODE
             ENTITY Product
                 ALL FIELDS
                 WITH CORRESPONDING #( keys )
                 RESULT DATA(ldt_products).

      DATA(lds_product) = ldt_products[ 1 ].

*      SELECT SINGLE name FROM /DMO/I_Agency WHERE AgencyID = @ls_travel-AgencyID
*      INTO @DATA(agency_name).
*
*      SELECT SINGLE firstname, lastname, title FROM /DMO/I_Customer
*      WHERE CustomerID = @ls_travel-customerID
*      INTO ( @DATA(firstname), @DATA(lastname), @DATA(title) ).

      IF lds_product-%is_draft <> if_abap_behv=>mk-on.

        NEW zcl_r_rap_wf01( )->trigger_workflow( ).

      ENDIF.
      " Replace the suffix with your choosen group id.
      "This is done to update the Overall Travel Status to Awaiting Approval.
*        MODIFY ENTITIES OF zr_rap_travel_rd02 IN LOCAL MODE
*              ENTITY travel
*                 UPDATE FIELDS ( OverallStatus )
*                 WITH VALUE #( FOR key IN keys ( %tky          = key-%tky
*                                            OverallStatus = travel_status-waiting ) )
*                FAILED DATA(ls_failed)
*                REPORTED DATA(ls_reported).
    ENDIF.
  ENDMETHOD.

ENDCLASS.
