CLASS lsc_zi_poc_product DEFINITION INHERITING FROM cl_abap_behavior_saver.

  PROTECTED SECTION.
    METHODS adjust_numbers REDEFINITION.

    METHODS save_modified  REDEFINITION.

ENDCLASS.


CLASS lsc_zi_poc_product IMPLEMENTATION.

  METHOD adjust_numbers.
    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY _ProductDescription
         ALL FIELDS
         WITH VALUE #( FOR <structure> IN mapped-_productdescription
                       ( %pky = VALUE #( %pid     = <structure>-%pid
                                         product  = <structure>-%tmp-product
                                         Language = <structure>-%tmp-Language ) ) )
         RESULT DATA(ldt_results)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(lds_hfailed).
    LOOP AT mapped-_productdescription ASSIGNING FIELD-SYMBOL(<fds_phdr>).
      READ TABLE ldt_results INTO DATA(lds_results)                                             ##PRIMKEY[PID]
           WITH KEY %pid     = <fds_phdr>-%pid
                    product  = <fds_phdr>-%tmp-product
                    Language = <fds_phdr>-%tmp-Language.
      IF sy-subrc = 0.
        <fds_phdr>-product  = lds_results-Product.
        <fds_phdr>-Language = lds_results-LanguageForEdit.
      ENDIF.
    ENDLOOP.

    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY _ProductPlant
         ALL FIELDS
         WITH VALUE #( FOR <structure_plant> IN mapped-_ProductPlant
                       ( %pky = VALUE #( %pid     = <structure_plant>-%pid
                                         product  = <structure_plant>-%tmp-product
                                         Plant    = <structure_plant>-%tmp-Plant ) ) )
         RESULT DATA(ldt_results_plant)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(lds_hfailed_plant).
    LOOP AT mapped-_ProductPlant ASSIGNING FIELD-SYMBOL(<fds_pro_plant>).
      READ TABLE ldt_results_plant INTO DATA(lds_results_plant)                                             ##PRIMKEY[PID]
           WITH KEY %pid     = <fds_pro_plant>-%pid
                    product  = <fds_pro_plant>-%tmp-product
                    Plant    = <fds_pro_plant>-%tmp-Plant.
      IF sy-subrc = 0.
        <fds_pro_plant>-product  = lds_results_plant-Product.
        <fds_pro_plant>-Plant = lds_results_plant-PlantForEdit.
      ENDIF.
    ENDLOOP.

    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY _ProductEWMWarehouse
         ALL FIELDS
         WITH VALUE #( FOR <structure_EWM> IN mapped-_ProductEWMWarehouse
                       ( %pky = VALUE #( %pid     = <structure_EWM>-%pid
                                         product  = <structure_EWM>-%tmp-product
                                         Warehouse    = <structure_EWM>-%tmp-Warehouse
                                         Businesspartner    = <structure_EWM>-%tmp-Businesspartner
                                         ) ) )
         RESULT DATA(ldt_results_EWM)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(lds_hfailed_ewm).
    LOOP AT mapped-_ProductEWMWarehouse ASSIGNING FIELD-SYMBOL(<fds_pro_EWM>).
      READ TABLE ldt_results_EWM INTO DATA(lds_results_EWM)                                             ##PRIMKEY[PID]
           WITH KEY %pid     = <fds_pro_EWM>-%pid
                    product  = <fds_pro_EWM>-%tmp-product
                    Warehouse    = <fds_pro_EWM>-%tmp-Warehouse
                    Businesspartner = <fds_pro_EWM>-%tmp-Businesspartner.
      IF sy-subrc = 0.
        <fds_pro_EWM>-product  = lds_results_EWM-Product.
        <fds_pro_EWM>-Warehouse = lds_results_EWM-Warehouseforedit.
        <fds_pro_EWM>-Businesspartner = lds_results_EWM-Businesspartnerforedit.
      ENDIF.
    ENDLOOP.

    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY _ProductSalesDelivery
         ALL FIELDS
         WITH VALUE #( FOR <structure_sd> IN mapped-_ProductSalesDelivery
                       ( %pky = VALUE #( %pid                     = <structure_sd>-%pid
                                         product                  = <structure_sd>-%tmp-product
                                         ProductSalesOrg          = <structure_sd>-%tmp-ProductSalesOrg
                                         ProductDistributionChnl  = <structure_sd>-%tmp-ProductDistributionChnl ) ) )
         RESULT DATA(ldt_results_sd)
         " TODO: variable is assigned but never used (ABAP cleaner)
         FAILED DATA(lds_hfailed_sd).
    LOOP AT mapped-_ProductSalesDelivery ASSIGNING FIELD-SYMBOL(<fds_pro_sd>).
      READ TABLE ldt_results_sd INTO DATA(lds_results_sd)                                             ##PRIMKEY[PID]
           WITH KEY %pid                     = <fds_pro_sd>-%pid
                    product                  = <fds_pro_sd>-%tmp-product
                    ProductSalesOrg          = <fds_pro_sd>-%tmp-ProductSalesOrg
                    ProductDistributionChnl  = <fds_pro_sd>-%tmp-ProductDistributionChnl.
      IF sy-subrc = 0.
        <fds_pro_sd>-product                 = lds_results_sd-Product.
        <fds_pro_sd>-ProductSalesOrg         = lds_results_sd-ProductSalesOrgForEdit.
        <fds_pro_sd>-ProductDistributionChnl = lds_results_sd-ProductDistributionChnlForEdit.
      ENDIF.
    ENDLOOP.

    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY _ProductValuation
         ALL FIELDS
         WITH VALUE #( FOR <structure_val> IN mapped-_ProductValuation
                       ( %pky = VALUE #( %pid           = <structure_val>-%pid
                                         product        = <structure_val>-%tmp-product
                                         ValuationArea  = <structure_val>-%tmp-ValuationArea
                                         ValuationType  = <structure_val>-%tmp-ValuationType ) ) )
         RESULT DATA(ldt_results_val)
         FAILED DATA(lds_hfailed_val).
    LOOP AT mapped-_ProductValuation ASSIGNING FIELD-SYMBOL(<fds_pro_val>).
      READ TABLE ldt_results_val INTO DATA(lds_results_val)                                             ##PRIMKEY[PID]
           WITH KEY %pid           = <fds_pro_val>-%pid
                    product        = <fds_pro_val>-%tmp-product
                    ValuationArea  = <fds_pro_val>-%tmp-ValuationArea
                    ValuationType  = <fds_pro_val>-%tmp-ValuationType.
      IF sy-subrc = 0.
        <fds_pro_val>-product       = lds_results_val-Product.
        <fds_pro_val>-ValuationArea = lds_results_val-ValuationAreaForEdit.
        <fds_pro_val>-ValuationType = lds_results_val-ValuationTypeForEdit.
      ENDIF.
    ENDLOOP.
  ENDMETHOD.

  METHOD save_modified.
  ENDMETHOD.

ENDCLASS.


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

    METHODS triggerWorkflow FOR DETERMINE ON SAVE
      IMPORTING keys FOR Product~triggerWorkflow.

    METHODS syncToCloud FOR READ
      IMPORTING keys FOR FUNCTION Product~syncToCloud RESULT result.
    METHODS resolveComplianceText FOR DETERMINE ON MODIFY
      IMPORTING keys FOR Product~resolveComplianceText.
ENDCLASS.


CLASS lhc_Product IMPLEMENTATION.

  METHOD get_instance_features.
    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY Product
         FIELDS ( Product )
         WITH CORRESPONDING #( keys )
         RESULT DATA(lds_product)
         FAILED failed.

    " 編集」ボタンを非表示にする
*    result = VALUE #( FOR lds_product_tmp IN lds_product
*                      ( %tky                  = lds_product_tmp-%tky
*
*                        %action-ReSendRequest = COND #(
*                                                  WHEN lds_product_tmp-IsApproval = abap_true
*                                                  THEN if_abap_behv=>fc-o-disabled
*                                                  ELSE if_abap_behv=>fc-o-enabled ) ) ).
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
           FIELDS ( Product ProductDescription language LanguageForEdit )
           WITH VALUE #( FOR key IN keys INDEX INTO i
                         ( %cid_ref  = key-%cid
                           %is_draft = key-%param-%is_draft
                           %target   = VALUE #( ( %cid               = 'PRO_DES'
                                                  %is_draft          = key-%param-%is_draft
                                                  Product            = key-%param-Product
                                                  ProductDescription = key-%param-ProductDescription
                                                  LanguageForEdit    = sy-langu
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

  METHOD triggerworkflow.

    DATA lds_payload TYPE zcl_r_rap_wf01=>gts_product.

    IF keys IS INITIAL.
      RETURN.
    ENDIF.

    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY Product ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_products)
         ENTITY Product BY \_ProductDescription ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_descriptions)
         ENTITY Product BY \_ProductSales ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_sales)
         ENTITY Product BY \_ProductProcurement ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_procurement)
         ENTITY Product BY \_ProductPlant ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_plants)
         ENTITY Product BY \_ProductSalesDelivery ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_sales_del)
         ENTITY Product BY \_ProductUnitOfMeasure ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_uom)
         ENTITY Product BY \_ProductValuation ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_valuation)
         ENTITY Product BY \_ProductStorage ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_storage)
         ENTITY Product BY \_ProductQualityManagement ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_quality)
         ENTITY Product BY \_ProductEWMWarehouse ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_ewm)
         ENTITY Product BY \_ProductBasicText ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_basic_text)
         ENTITY Product BY \_ProductInspectionText ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_insp_text)
         ENTITY Product BY \_ProductPurchaseOrderText ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_po_text)
         ENTITY Product BY \_ProductInternalComment ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_int_comment).

    CLEAR lds_payload.

    " Single structure
    lds_payload = CORRESPONDING #( ldt_products[ 1 ] ).

    lds_payload-_productprocurement       = CORRESPONDING #( ldt_procurement[ 1 ] ).

    lds_payload-_productqualitymanagement = CORRESPONDING #( ldt_quality[ 1 ] ).

    lds_payload-_productsales             = CORRESPONDING #( ldt_sales[ 1 ] ).

    lds_payload-_productstorage           = CORRESPONDING #( ldt_storage[ 1 ] ).

    " Internal tables
    lds_payload-_productbasictext         = CORRESPONDING #( ldt_basic_text ).

    lds_payload-_productdescription       = CORRESPONDING #( ldt_descriptions ).

    lds_payload-_productewmwarehouse      = CORRESPONDING #( ldt_ewm ).

    lds_payload-_productinspectiontext    = CORRESPONDING #( ldt_insp_text ).

    lds_payload-_productinternalcomment   = CORRESPONDING #( ldt_int_comment ).

    lds_payload-_productplant             = CORRESPONDING #( ldt_plants ).

    lds_payload-_productpurchaseordertext = CORRESPONDING #( ldt_po_text ).

    lds_payload-_productsalesdelivery     = CORRESPONDING #( ldt_sales_del ).

    lds_payload-_productunitofmeasure     = CORRESPONDING #( ldt_uom ).

    lds_payload-_productvaluation         = CORRESPONDING #( ldt_valuation ).

    NEW zcl_r_rap_wf01( )->trigger_workflow( is_payload = lds_payload ).
  ENDMETHOD.

  METHOD syncToCloud.

    DATA: lds_keys TYPE TABLE FOR READ IMPORT zi_poc_product.



    TYPES ty_uom TYPE I_UnitOfMeasure-UnitOfMeasure.
    TYPES: BEGIN OF ty_uom_iso,
             UnitOfMeasure        TYPE ty_uom,
             UnitOfMeasureISOCode TYPE string,
           END OF ty_uom_iso.
    TYPES:
      BEGIN OF ty_deep_product,
        product                    TYPE c LENGTH 18,
        product_type_2             TYPE c LENGTH 4,
        base_unit                  TYPE c LENGTH 3,
        base_isounit               TYPE c LENGTH 3,
        industry_sector            TYPE c LENGTH 1,
        cross_plant_status         TYPE c LENGTH 2,
        product_group              TYPE c LENGTH 9,
        product_old_id             TYPE c LENGTH 40,
        basic_product              TYPE c LENGTH 48,
        item_category_group        TYPE c LENGTH 4,
        division                   TYPE c LENGTH 2,
        gross_weight               TYPE p LENGTH 7                                       DECIMALS 3,
        net_weight                 TYPE p LENGTH 7                                       DECIMALS 3,
        weight_unit                TYPE c LENGTH 3,
        weight_isounit             TYPE c LENGTH 3,
        product_volume             TYPE p LENGTH 7                                       DECIMALS 3,
        volume_unit                TYPE c LENGTH 3,
        volume_isounit             TYPE c LENGTH 3,
        is_marked_for_deletion     TYPE abap_bool,
        product_is_configurable    TYPE abap_bool,
        is_batch_management_requir TYPE abap_bool,
        authorization_group        TYPE c LENGTH 4,
        handling_unit_type         TYPE c LENGTH 4,
        maximum_capacity           TYPE p LENGTH 7                                       DECIMALS 3,
        over_capacity_tolerance    TYPE p LENGTH 3                                       DECIMALS 1,
        has_variable_tare_weight   TYPE abap_bool,
        unit_for_max_packaging_dim TYPE c LENGTH 3,
        max_packgg_dimension_isoun TYPE c LENGTH 3,
        maximum_packaging_length   TYPE p LENGTH 7                                       DECIMALS 3,
        maximum_packaging_width    TYPE p LENGTH 7                                       DECIMALS 3,
        maximum_packaging_height   TYPE p LENGTH 7                                       DECIMALS 3,

        product_description        TYPE zcs_demo_product=>tyt_product_description_type,
        product_plant              TYPE zcs_demo_product=>tyt_product_plant_type,
        product_sales_delivery     TYPE zcs_demo_product=>tyt_product_sales_delivery_typ,
        product_unit_of_measure    TYPE zcs_demo_product=>tyt_product_unit_of_measure_ty,
        product_valuation          TYPE zcs_demo_product=>tyt_product_valuation_type,
        product_sales              TYPE zcs_demo_product=>tyt_product_sales_type,
        product_procurement        TYPE zcs_demo_product=>tyt_product_procurement_type,
        product_storage            TYPE zcs_demo_product=>tyt_product_storage_type,
        product_quality_management TYPE zcs_demo_product=>tyt_product_quality_manageme_2,
        product_basic_text         TYPE zcs_demo_product=>tyt_product_basic_texts_type,
        product_inspection_text    TYPE zcs_demo_product=>tyt_product_inspection_texts_t,
        product_purchase_order_tex TYPE zcs_demo_product=>tyt_product_purchase_order_t_2,
        product_internal_comment   TYPE zcs_demo_product=>tyt_product_internal_note_text,
      END OF ty_deep_product.

    DATA: lo_http_client  TYPE REF TO if_web_http_client,
          lo_client_proxy TYPE REF TO /iwbep/if_cp_client_proxy,
          lo_request      TYPE REF TO /iwbep/if_cp_request_create,
          lo_node_root    TYPE REF TO /iwbep/if_cp_data_desc_node.
    DATA: ldt_collected_uom TYPE TABLE OF ty_uom,
          ldt_iso_mapping   TYPE TABLE OF ty_uom_iso.
    DATA lds_deep_data TYPE ty_deep_product.
    DATA ldf_base_iso   TYPE string.
    DATA ldf_weight_iso TYPE string.
    DATA ldf_volume_iso TYPE string.

    LOOP AT keys INTO DATA(ls_function_call).
      APPEND VALUE #( product = ls_function_call-%param-product )
             TO lds_keys.
    ENDLOOP.

    READ ENTITIES OF zi_poc_product IN LOCAL MODE
         ENTITY Product ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_products)
         ENTITY Product BY \_ProductDescription ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_descriptions)
         ENTITY Product BY \_ProductSales ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_sales)
         ENTITY Product BY \_ProductProcurement ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_procurement)
         ENTITY Product BY \_ProductPlant ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_plants)
         ENTITY Product BY \_ProductSalesDelivery ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_sales_del)
         ENTITY Product BY \_ProductUnitOfMeasure ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_uom)
         ENTITY Product BY \_ProductValuation ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_valuation)
         ENTITY Product BY \_ProductStorage ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_storage)
         ENTITY Product BY \_ProductQualityManagement ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_quality)
         ENTITY Product BY \_ProductEWMWarehouse ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_ewm)
         ENTITY Product BY \_ProductBasicText ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_basic_text)
         ENTITY Product BY \_ProductInspectionText ALL FIELDS WITH CORRESPONDING #( keys ) RESULT DATA(ldt_insp_text)
         ENTITY Product BY \_ProductPurchaseOrderText ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_po_text)
         ENTITY Product BY \_ProductInternalComment ALL FIELDS WITH CORRESPONDING #( lds_keys ) RESULT DATA(ldt_int_comment).

    TRY.
        DATA(lo_dest) = cl_http_destination_provider=>create_by_comm_arrangement(
                            comm_scenario = 'ZCS_POC_PRODUCT_OUT'
                            service_id    = 'ZOS_CE_PRODUCT_REST' ).
        lo_http_client = cl_web_http_client_manager=>create_by_http_destination( lo_dest ).

        lo_client_proxy = /iwbep/cl_cp_factory_remote=>create_v4_remote_proxy(
                              is_proxy_model_key       = VALUE #( repository_id       = 'DEFAULT'
                                                                  proxy_model_id      = 'ZSC_CE_PRODUCT_01'
                                                                  proxy_model_version = '0001' )
                              io_http_client           = lo_http_client
                              iv_relative_service_root = '/sap/opu/odata4/sap/api_product/srvd_a2x/sap/product/0002' ).

      CATCH cx_root INTO DATA(lx_init).
        LOOP AT ldt_products INTO DATA(lds_err_prod).
          APPEND VALUE #( %tky = lds_err_prod-%tky
                          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                        text     = |Proxy Error: { lx_init->get_text( ) }| ) )
                 TO reported-product.
        ENDLOOP.
        RETURN.
    ENDTRY.

    LOOP AT ldt_products INTO DATA(lds_p).
      IF lds_p-BaseUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_p-BaseUnit ) TO ldt_collected_uom.
      ENDIF.
      IF lds_p-WeightUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_p-WeightUnit ) TO ldt_collected_uom.
      ENDIF.
      IF lds_p-VolumeUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_p-VolumeUnit ) TO ldt_collected_uom.
      ENDIF.
    ENDLOOP.
    LOOP AT ldt_uom INTO DATA(lds_u_node).
      IF lds_u_node-AlternativeUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_u_node-AlternativeUnit ) TO ldt_collected_uom.
      ENDIF.
    ENDLOOP.
    LOOP AT ldt_sales_del INTO DATA(lds_sd_node).
      IF lds_sd_node-DeliveryQuantityUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_sd_node-DeliveryQuantityUnit ) TO ldt_collected_uom.
      ENDIF.
      IF lds_sd_node-SalesMeasureUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_sd_node-SalesMeasureUnit ) TO ldt_collected_uom.
      ENDIF.
    ENDLOOP.
    LOOP AT ldt_procurement INTO DATA(lds_proc_node).
      IF lds_proc_node-PurchaseOrderQuantityUnit IS NOT INITIAL.
        APPEND CONV ty_uom( lds_proc_node-PurchaseOrderQuantityUnit ) TO ldt_collected_uom.
      ENDIF.
    ENDLOOP.
    SORT ldt_collected_uom.
    DELETE ADJACENT DUPLICATES FROM ldt_collected_uom.

    IF ldt_collected_uom IS NOT INITIAL.
      SELECT UnitOfMeasure, UnitOfMeasureISOCode
        FROM I_UnitOfMeasure
        FOR ALL ENTRIES IN @ldt_collected_uom
        WHERE UnitOfMeasure = @ldt_collected_uom-table_line
        INTO TABLE @ldt_iso_mapping.
    ENDIF.

    LOOP AT ldt_products INTO DATA(lds_product).
      CLEAR: lds_deep_data,
             ldf_base_iso,
             ldf_weight_iso,
             ldf_volume_iso.

      READ TABLE ldt_iso_mapping INTO DATA(lds_iso) WITH KEY UnitOfMeasure = lds_product-BaseUnit.
      IF sy-subrc = 0.
        ldf_base_iso = lds_iso-UnitOfMeasureISOCode.
      ENDIF.

      READ TABLE ldt_iso_mapping INTO lds_iso WITH KEY UnitOfMeasure = lds_product-WeightUnit.
      IF sy-subrc = 0.
        ldf_weight_iso = lds_iso-UnitOfMeasureISOCode.
      ENDIF.

      READ TABLE ldt_iso_mapping INTO lds_iso WITH KEY UnitOfMeasure = lds_product-VolumeUnit.
      IF sy-subrc = 0.
        ldf_volume_iso = lds_iso-UnitOfMeasureISOCode.
      ENDIF.

      " Map Root
      lds_deep_data-product                    = lds_product-Product.
      lds_deep_data-product_type_2             = lds_product-ProductTypeCode.
      lds_deep_data-base_unit                  = lds_product-BaseUnit.
      lds_deep_data-base_isounit               = ldf_base_iso.
      lds_deep_data-industry_sector            = 'M'.
      lds_deep_data-cross_plant_status         = lds_product-CrossPlantStatus.
      lds_deep_data-product_group              = lds_product-ProductGroup.
      lds_deep_data-product_old_id             = lds_product-ProductOldID.
      lds_deep_data-basic_product              = lds_product-BasicMaterial.
      lds_deep_data-item_category_group        = lds_product-ItemCategoryGroup.
      lds_deep_data-division                   = lds_product-Division.
      lds_deep_data-authorization_group        = lds_product-AuthorizationGroup.
      lds_deep_data-is_marked_for_deletion     = lds_product-IsMarkedForDeletion.
      lds_deep_data-product_is_configurable    = lds_product-ProductIsConfigurable.
      lds_deep_data-is_batch_management_requir = lds_product-IsBatchManagementRequired.
      lds_deep_data-handling_unit_type         = lds_product-HandlingUnitType.
      lds_deep_data-maximum_capacity           = lds_product-MaximumCapacity.
      lds_deep_data-over_capacity_tolerance    = lds_product-OvercapacityTolerance.
      IF lds_product-UnitForMaxPackagingDimensions IS NOT INITIAL.
        lds_deep_data-unit_for_max_packaging_dim = lds_product-UnitForMaxPackagingDimensions.
        SELECT SINGLE UnitOfMeasureISOCode
          FROM I_UnitOfMeasure
          WHERE UnitOfMeasure = @lds_product-UnitForMaxPackagingDimensions
          INTO @lds_deep_data-max_packgg_dimension_isoun.
      ENDIF.
      lds_deep_data-has_variable_tare_weight = lds_product-HasVariableTareWeight.
      IF lds_product-UnitForMaxPackagingDimensions IS NOT INITIAL.
        lds_deep_data-unit_for_max_packaging_dim = lds_product-UnitForMaxPackagingDimensions.
        READ TABLE ldt_iso_mapping INTO lds_iso WITH KEY UnitOfMeasure = lds_product-UnitForMaxPackagingDimensions.
        IF sy-subrc = 0.
          lds_deep_data-max_packgg_dimension_isoun = lds_iso-UnitOfMeasureISOCode.
        ENDIF.
        lds_deep_data-maximum_packaging_length = lds_product-MaximumPackagingLength.
        lds_deep_data-maximum_packaging_width  = lds_product-MaximumPackagingWidth.
        lds_deep_data-maximum_packaging_height = lds_product-MaximumPackagingHeight.
      ENDIF.

      IF lds_product-WeightUnit IS NOT INITIAL.
        lds_deep_data-gross_weight   = lds_product-GrossWeight.
        lds_deep_data-net_weight     = lds_product-NetWeight.
        lds_deep_data-weight_unit    = lds_product-WeightUnit.
        lds_deep_data-weight_isounit = ldf_weight_iso.
      ENDIF.
      IF lds_product-VolumeUnit IS NOT INITIAL.
        lds_deep_data-product_volume = lds_product-MaterialVolume.
        lds_deep_data-volume_unit    = lds_product-VolumeUnit.
        lds_deep_data-volume_isounit = ldf_volume_iso.
      ENDIF.

      " Map Descriptions
      LOOP AT ldt_descriptions INTO DATA(lds_desc) WHERE Product = lds_product-Product.
        IF lds_desc-Language IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product             = lds_product-Product
                        language            = lds_desc-Language
                        product_description = lds_desc-ProductDescription ) TO lds_deep_data-product_description.
      ENDLOOP.

      " Map Sales (02)
      LOOP AT ldt_sales INTO DATA(lds_sales) WHERE Product = lds_product-Product.
        APPEND VALUE #( product                    = lds_product-Product
                        sales_status               = lds_sales-SalesStatus
                        transportation_group       = lds_sales-TransportationGroup
                        sales_status_validity_date = lds_sales-SalesStatusValidityDate )
               TO lds_deep_data-product_sales.
      ENDLOOP.

      " Map Plant (04)
      LOOP AT ldt_plants INTO DATA(lds_plt) WHERE Product = lds_product-Product.
        IF lds_plt-Plant IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product       = lds_product-Product
                        plant         = lds_plt-Plant
                        profit_center = lds_plt-ProfitCenter
                        base_unit     = lds_product-BaseUnit
                        base_isounit  = ldf_base_iso ) TO lds_deep_data-product_plant.
      ENDLOOP.

      " Map Sales Delivery (05)
      LOOP AT ldt_sales_del INTO DATA(lds_sdel) WHERE Product = lds_product-Product.
        IF lds_sdel-ProductSalesOrg IS INITIAL OR lds_sdel-ProductDistributionChnl IS INITIAL.
          CONTINUE.
        ENDIF.
        DATA(lds_sdel_target) = VALUE zcs_demo_product=>tys_product_sales_delivery_typ(
                                          product                   = lds_product-Product
                                          product_sales_org         = lds_sdel-ProductSalesOrg
                                          product_distribution_chnl = lds_sdel-ProductDistributionChnl
                                          item_category_group       = lds_sdel-ItemCategoryGroup
                                          base_unit                 = lds_product-BaseUnit
                                          base_isounit              = ldf_base_iso ).
        IF lds_sdel-DeliveryQuantityUnit IS NOT INITIAL.
          lds_sdel_target-delivery_quantity_unit = lds_sdel-DeliveryQuantityUnit.
          READ TABLE ldt_iso_mapping INTO DATA(lds_iso_dqu) WITH KEY UnitOfMeasure = lds_sdel-DeliveryQuantityUnit.
          IF sy-subrc = 0.
            lds_sdel_target-delivery_quantity_isounit = lds_iso_dqu-UnitOfMeasureISOCode.
          ENDIF.
        ENDIF.
        IF lds_sdel-SalesMeasureUnit IS NOT INITIAL.
          lds_sdel_target-sales_measure_unit = lds_sdel-SalesMeasureUnit.
          READ TABLE ldt_iso_mapping INTO DATA(lds_iso_smu) WITH KEY UnitOfMeasure = lds_sdel-SalesMeasureUnit.
          IF sy-subrc = 0.
            lds_sdel_target-sales_measure_isounit = lds_iso_smu-UnitOfMeasureISOCode.
          ENDIF.
        ENDIF.
        APPEND lds_sdel_target TO lds_deep_data-product_sales_delivery.
      ENDLOOP.

      " Map Unit of Measure (06)
      LOOP AT ldt_uom INTO lds_u_node WHERE Product = lds_product-Product.
        IF lds_u_node-AlternativeUnit IS INITIAL.
          CONTINUE.
        ENDIF.
        DATA(lds_uom_target) = VALUE zcs_demo_product=>tys_product_unit_of_measure_ty(
                                         product                    = lds_product-Product
                                         alternative_unit           = lds_u_node-AlternativeUnit
                                         alternative_sapunit        = lds_u_node-AlternativeUnit
                                         quantity_numerator         = lds_u_node-QuantityNumerator
                                         quantity_denominator       = lds_u_node-QuantityDenominator
                                         base_unit                  = lds_product-BaseUnit
                                         base_isounit               = ldf_base_iso
                                         global_trade_item_number   = lds_u_node-GlobalTradeItemNumber
                                         global_trade_item_number_c = lds_u_node-GlobalTradeItemNumberCategory ).
        READ TABLE ldt_iso_mapping INTO DATA(lds_iso_alt) WITH KEY UnitOfMeasure = lds_u_node-AlternativeUnit.
        IF sy-subrc = 0.
          lds_uom_target-alternative_isounit = lds_iso_alt-UnitOfMeasureISOCode.
        ENDIF.
        APPEND lds_uom_target TO lds_deep_data-product_unit_of_measure.
      ENDLOOP.

      " Map Valuation (07)
      LOOP AT ldt_valuation INTO DATA(lds_val) WHERE Product = lds_product-Product.
        IF lds_val-ValuationArea IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product                    = lds_product-Product
                        valuation_area             = lds_val-ValuationArea
                        valuation_class            = lds_val-ValuationClass
                        price_determination_contro = lds_val-PriceDeterminationControl
                        base_unit                  = lds_product-BaseUnit
                        base_isounit               = ldf_base_iso ) TO lds_deep_data-product_valuation.
      ENDLOOP.

      " Map Storage (08)
      LOOP AT ldt_storage INTO DATA(lds_stor) WHERE Product = lds_product-Product.
        APPEND VALUE #( product                    = lds_product-Product
                        storage_conditions         = lds_stor-StorageConditions
                        prod_temperature_condition = lds_stor-TemperatureConditionInd
                        hazardous_product          = lds_stor-HazardousMaterialNumber
                        label_type                 = lds_stor-LabelType
                        label_form                 = lds_stor-LabelForm
                        nmbr_of_gror_gislips_to_pr = lds_stor-NmbrOfGROrGISlipsToPrintQty
                        min_remaining_shelf_life   = lds_stor-MinRemainingShelfLife
                        shelf_life_expiration_date = lds_stor-ShelfLifeExpirationDatePeriod
                        base_unit                  = lds_product-BaseUnit
                        base_isounit               = ldf_base_iso ) TO lds_deep_data-product_storage.
      ENDLOOP.

      " Map Quality (09)
      " TODO: variable is assigned but never used (ABAP cleaner)
      LOOP AT ldt_quality INTO DATA(lds_qual) WHERE Product = lds_product-Product.
        APPEND VALUE #( product = lds_product-Product ) TO lds_deep_data-product_quality_management.
      ENDLOOP.

      " Map Basic Text
      LOOP AT ldt_basic_text INTO DATA(lds_btext) WHERE Product = lds_product-Product.
        IF lds_btext-TextObjectType IS INITIAL OR lds_btext-Language IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product           = lds_product-Product
                        text_object_type  = lds_btext-TextObjectType
                        language          = lds_btext-Language
                        product_long_text = lds_btext-ProductLongText ) TO lds_deep_data-product_basic_text.
      ENDLOOP.

      " Map Inspection Text
      LOOP AT ldt_insp_text INTO DATA(lds_itext) WHERE Product = lds_product-Product.
        IF lds_itext-TextObjectType IS INITIAL OR lds_itext-Language IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product           = lds_product-Product
                        text_object_type  = lds_itext-TextObjectType
                        language          = lds_itext-Language
                        product_long_text = lds_itext-ProductLongText ) TO lds_deep_data-product_inspection_text.
      ENDLOOP.

      " Map PO Text
      LOOP AT ldt_po_text INTO DATA(lds_potext) WHERE Product = lds_product-Product.
        IF lds_potext-TextObjectType IS INITIAL OR lds_potext-Language IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product           = lds_product-Product
                        text_object_type  = lds_potext-TextObjectType
                        language          = lds_potext-Language
                        product_long_text = lds_potext-ProductLongText ) TO lds_deep_data-product_purchase_order_tex.
      ENDLOOP.

      " Map Internal Comment
      LOOP AT ldt_int_comment INTO DATA(lds_inttext) WHERE Product = lds_product-Product.
        IF lds_inttext-TextObjectType IS INITIAL OR lds_inttext-Language IS INITIAL.
          CONTINUE.
        ENDIF.
        APPEND VALUE #( product           = lds_product-Product
                        text_object_type  = lds_inttext-TextObjectType
                        language          = lds_inttext-Language
                        product_long_text = lds_inttext-ProductLongText ) TO lds_deep_data-product_internal_comment.
      ENDLOOP.

      TRY.
          lo_request = lo_client_proxy->create_resource_for_entity_set( 'PRODUCT' )->create_request_for_create( ).
          lo_node_root = lo_request->create_data_descripton_node( ).

          DATA(ldt_root_props) = VALUE string_table( ( `PRODUCT` )
                                                     ( `PRODUCT_TYPE_2` )
                                                     ( `BASE_UNIT` )
                                                     ( `BASE_ISOUNIT` )
                                                     ( `INDUSTRY_SECTOR` )
                                                     ( `CROSS_PLANT_STATUS` )
                                                     ( `PRODUCT_GROUP` )
                                                     ( `PRODUCT_OLD_ID` )
                                                     ( `BASIC_PRODUCT` )
                                                     ( `ITEM_CATEGORY_GROUP` )
                                                     ( `DIVISION` )
                                                     ( `AUTHORIZATION_GROUP` )
                                                     ( `IS_MARKED_FOR_DELETION` )
                                                     ( `PRODUCT_IS_CONFIGURABLE` )
                                                     ( `IS_BATCH_MANAGEMENT_REQUIR` ) ).

          APPEND `HANDLING_UNIT_TYPE` TO ldt_root_props.
          APPEND `MAXIMUM_CAPACITY` TO ldt_root_props.
          APPEND `OVERCAPACITY_TOLERANCE` TO ldt_root_props.
          APPEND `HAS_VARIABLE_TARE_WEIGHT` TO ldt_root_props.
          IF lds_deep_data-unit_for_max_packaging_dim IS NOT INITIAL.
            APPEND `UNIT_FOR_MAX_PACKAGING_DIM` TO ldt_root_props.
            APPEND `MAX_PACKGG_DIMENSION_ISOUN` TO ldt_root_props.
            APPEND `MAXIMUM_PACKAGING_LENGTH` TO ldt_root_props.
            APPEND `MAXIMUM_PACKAGING_WIDTH` TO ldt_root_props.
            APPEND `MAXIMUM_PACKAGING_HEIGHT` TO ldt_root_props.
          ENDIF.

          IF lds_deep_data-weight_unit IS NOT INITIAL.
            APPEND `GROSS_WEIGHT` TO ldt_root_props.
            APPEND `NET_WEIGHT` TO ldt_root_props.
            APPEND `WEIGHT_UNIT` TO ldt_root_props.
            APPEND `WEIGHT_ISOUNIT` TO ldt_root_props.
          ENDIF.

          IF lds_deep_data-volume_unit IS NOT INITIAL.
            APPEND `PRODUCT_VOLUME` TO ldt_root_props.
            APPEND `VOLUME_UNIT` TO ldt_root_props.
            APPEND `VOLUME_ISOUNIT` TO ldt_root_props.
          ENDIF.

          lo_node_root->set_properties( ldt_root_props ).

          IF lds_deep_data-product_description IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_DESCRIPTION' ).
          ENDIF.

          IF lds_deep_data-product_plant IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_PLANT' )->set_properties( VALUE string_table( ( `PRODUCT` )
                                                                                            ( `PLANT` )
                                                                                            ( `PROFIT_CENTER` )
                                                                                            ( `BASE_UNIT` )
                                                                                            ( `BASE_ISOUNIT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_sales IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_SALES' )->set_properties(
                                                         VALUE string_table( ( `PRODUCT` )
                                                                             ( `SALES_STATUS` )
                                                                             ( `TRANSPORTATION_GROUP` )
                                                                             ( `SALES_STATUS_VALIDITY_DATE` ) ) ).
          ENDIF.

          IF lds_deep_data-product_sales_delivery IS NOT INITIAL.
            DATA(ldt_sdel_props) = VALUE string_table( ( `PRODUCT` )
                                                       ( `PRODUCT_SALES_ORG` )
                                                       ( `PRODUCT_DISTRIBUTION_CHNL` )
                                                       ( `ITEM_CATEGORY_GROUP` )
                                                       ( `BASE_UNIT` )
                                                       ( `BASE_ISOUNIT` ) ).
            " Thêm delivery unit fields chỉ khi đã populate
            READ TABLE lds_deep_data-product_sales_delivery INDEX 1 INTO DATA(lds_sdel_chk).
            IF sy-subrc = 0.
              IF lds_sdel_chk-delivery_quantity_unit IS NOT INITIAL.
                APPEND `DELIVERY_QUANTITY_UNIT` TO ldt_sdel_props.
                APPEND `DELIVERY_QUANTITY_ISOUNIT` TO ldt_sdel_props.
              ENDIF.
              IF lds_sdel_chk-sales_measure_unit IS NOT INITIAL.
                APPEND `SALES_MEASURE_UNIT` TO ldt_sdel_props.
                APPEND `SALES_MEASURE_ISOUNIT` TO ldt_sdel_props.
              ENDIF.
            ENDIF.
            lo_node_root->add_child( 'PRODUCT_SALES_DELIVERY' )->set_properties( ldt_sdel_props ).
          ENDIF.

          IF lds_deep_data-product_unit_of_measure IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_UNIT_OF_MEASURE' )->set_properties(
                                                                   VALUE string_table( ( `PRODUCT` )
                                                                                       ( `ALTERNATIVE_UNIT` )
                                                                                       ( `ALTERNATIVE_SAPUNIT` )
                                                                                       ( `ALTERNATIVE_ISOUNIT` )
                                                                                       ( `QUANTITY_NUMERATOR` )
                                                                                       ( `QUANTITY_DENOMINATOR` )
                                                                                       ( `BASE_UNIT` )
                                                                                       ( `BASE_ISOUNIT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_valuation IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_VALUATION' )->set_properties(
                                                             VALUE string_table( ( `PRODUCT` )
                                                                                 ( `VALUATION_AREA` )
                                                                                 ( `VALUATION_CLASS` )
                                                                                 ( `PRICE_DETERMINATION_CONTRO` )
                                                                                 ( `BASE_UNIT` )
                                                                                 ( `BASE_ISOUNIT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_storage IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_STORAGE' )->set_properties(
                                                           VALUE string_table( ( `PRODUCT` )
                                                                               ( `STORAGE_CONDITIONS` )
                                                                               ( `HAZARDOUS_PRODUCT` )
                                                                               ( `PROD_TEMPERATURE_CONDITION` )
                                                                               ( `LABEL_TYPE` )
                                                                               ( `LABEL_FORM` )
                                                                               ( `NMBR_OF_GROR_GISLIPS_TO_PR` )
                                                                               ( `MIN_REMAINING_SHELF_LIFE` )
                                                                               ( `SHELF_LIFE_EXPIRATION_DATE` )
                                                                               ( `BASE_UNIT` )
                                                                               ( `BASE_ISOUNIT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_quality_management IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_QUALITY_MANAGEMENT' )->set_properties(
                VALUE string_table( ( `PRODUCT` )
                                    ( `QLTY_MGMT_IN_PROCMT_IS_ACT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_basic_text IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_BASIC_TEXT' )->set_properties(
                                                              VALUE string_table( ( `PRODUCT` )
                                                                                  ( `TEXT_OBJECT_TYPE` )
                                                                                  ( `LANGUAGE` )
                                                                                  ( `PRODUCT_LONG_TEXT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_inspection_text IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_INSPECTION_TEXT' )->set_properties(
                VALUE string_table( ( `PRODUCT` ) ( `TEXT_OBJECT_TYPE` ) ( `LANGUAGE` ) ( `PRODUCT_LONG_TEXT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_purchase_order_tex IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_PURCHASE_ORDER_TEX' )->set_properties(
                VALUE string_table( ( `PRODUCT` ) ( `TEXT_OBJECT_TYPE` ) ( `LANGUAGE` ) ( `PRODUCT_LONG_TEXT` ) ) ).
          ENDIF.

          IF lds_deep_data-product_internal_comment IS NOT INITIAL.
            lo_node_root->add_child( 'PRODUCT_INTERNAL_COMMENT' )->set_properties(
                VALUE string_table( ( `PRODUCT` ) ( `TEXT_OBJECT_TYPE` ) ( `LANGUAGE` ) ( `PRODUCT_LONG_TEXT` ) ) ).
          ENDIF.

          lo_request->set_deep_business_data( is_business_data    = lds_deep_data
                                              io_data_description = lo_node_root ).

          " TODO: variable is assigned but never used (ABAP cleaner)
          DATA(lo_response) = lo_request->execute( ).

          APPEND VALUE #(
              %tky = lds_product-%tky
              %msg = new_message_with_text( severity = if_abap_behv_message=>severity-success
                                            text     = |Product { lds_product-Product } synced successfully| ) )
                 TO reported-product.

        CATCH /iwbep/cx_cp_remote INTO DATA(lx_remote).
          APPEND VALUE #( %tky = lds_product-%tky
                          %msg = new_message_with_text( severity = if_abap_behv_message=>severity-error
                                                        text     = CONV #( lx_remote->http_error_body ) ) )
                 TO reported-product.
      ENDTRY.
    ENDLOOP.
  ENDMETHOD.

  METHOD resolveComplianceText.
    READ ENTITIES OF zi_poc_product IN LOCAL MODE
      ENTITY Product
        FIELDS ( IsChemicalComplianceRelevant )
        WITH CORRESPONDING #( keys )
      RESULT DATA(lt_products).
    LOOP AT lt_products ASSIGNING FIELD-SYMBOL(<product>).
      DATA(lv_text) = SWITCH string(
        <product>-IsChemicalComplianceRelevant
        WHEN 'Y' THEN |Yes|
        WHEN 'N' THEN |No|
        ELSE |Not Decided| ).
      MODIFY ENTITIES OF zi_poc_product IN LOCAL MODE
        ENTITY Product
          UPDATE FIELDS ( ComplianceRelevantText )
          WITH VALUE #( (
            %tky = <product>-%tky
            ComplianceRelevantText = lv_text ) )
        REPORTED DATA(lt_reported).
    ENDLOOP.
  ENDMETHOD.

ENDCLASS.
