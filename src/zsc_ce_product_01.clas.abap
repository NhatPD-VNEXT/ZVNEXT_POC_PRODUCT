"! <p class="shorttext synchronized">Consumption model for client proxy - generated</p>
"! This class has been generated based on the metadata with namespace
"! <em>com.sap.gateway.srvd_a2x.api_product_2.v0001</em>
CLASS zsc_ce_product_01 DEFINITION
  PUBLIC
  INHERITING FROM /iwbep/cl_v4_abs_pm_model_prov
  CREATE PUBLIC.

  PUBLIC SECTION.

    TYPES:
      "! <p class="shorttext synchronized">Types for primitive collection fields</p>
      BEGIN OF tys_types_for_prim_colls,
        "! additionalTargets
        "! Used for TYS_SAP_MESSAGE-ADDITIONAL_TARGETS
        additional_targets TYPE string,
      END OF tys_types_for_prim_colls.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of SAP_MESSAGE</p>
      BEGIN OF tys_value_controls_1,
        "! TARGET
        target       TYPE /iwbep/v4_value_control,
        "! LONGTEXT_URL
        longtext_url TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_1.

    TYPES:
      "! <p class="shorttext synchronized">SAP__Message</p>
      BEGIN OF tys_sap_message,
        "! <em>Value Control Structure</em>
        value_controls     TYPE tys_value_controls_1,
        "! code
        code               TYPE string,
        "! message
        message            TYPE string,
        "! target
        target             TYPE string,
        "! additionalTargets
        additional_targets TYPE STANDARD TABLE OF tys_types_for_prim_colls-additional_targets WITH DEFAULT KEY,
        "! transition
        transition         TYPE abap_bool,
        "! numericSeverity
        numeric_severity   TYPE int1,
        "! longtextUrl
        longtext_url       TYPE string,
      END OF tys_sap_message,
      "! <p class="shorttext synchronized">List of SAP__Message</p>
      tyt_sap_message TYPE STANDARD TABLE OF tys_sap_message WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_PURCHASE_ORDER_T_2</p>
      BEGIN OF tys_value_controls_2,
        "! PROD_LONG_TXT_CREATION_DAT
        prod_long_txt_creation_dat TYPE /iwbep/v4_value_control,
        "! PROD_LONG_TXT_LAST_CHANGED
        prod_long_txt_last_changed TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_2.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_INTERNAL_NOTE_TEXT</p>
      BEGIN OF tys_value_controls_3,
        "! PROD_LONG_TXT_CREATION_DAT
        prod_long_txt_creation_dat TYPE /iwbep/v4_value_control,
        "! PROD_LONG_TXT_LAST_CHANGED
        prod_long_txt_last_changed TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_3.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PLANT_MRPTEXTS_TYPE</p>
      BEGIN OF tys_value_controls_4,
        "! PROD_LONG_TXT_CREATION_DAT
        prod_long_txt_creation_dat TYPE /iwbep/v4_value_control,
        "! PROD_LONG_TXT_LAST_CHANGED
        prod_long_txt_last_changed TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_4.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_UNIT_OF_MEASURE_TY</p>
      BEGIN OF tys_value_controls_5,
        "! PRODUCT_UNIT_OF_MEASURE_EA
        product_unit_of_measure_ea TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_5.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_PLANT_TYPE</p>
      BEGIN OF tys_value_controls_6,
        "! PROFILE_VALIDITY_START_DAT
        profile_validity_start_dat TYPE /iwbep/v4_value_control,
        "! PROD_PLANT_INTERNATIONAL_T
        prod_plant_international_t TYPE /iwbep/v4_value_control,
        "! PROD_PLNT_MRPTEXT
        prod_plnt_mrptext          TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_COSTING
        product_plant_costing      TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_FORECAST
        product_plant_forecast     TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_INSP_TYPE_SE
        product_plant_insp_type_se TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_MRP
        product_plant_mrp          TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_PROCUREMENT
        product_plant_procurement  TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_PURCHASE_TAX
        product_plant_purchase_tax TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_QUALITY_MANA
        product_plant_quality_mana TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_SALES
        product_plant_sales        TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_STORAGE
        product_plant_storage      TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_STORAGE_LOCA
        product_plant_storage_loca TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_SUPPLY_PLANN
        product_plant_supply_plann TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT_WORK_SCHEDUL
        product_plant_work_schedul TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_6.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_EWMWAREHOUSE_TYPE</p>
      BEGIN OF tys_value_controls_7,
        "! PRODUCT_INTERNAL_UUID
        product_internal_uuid      TYPE /iwbep/v4_value_control,
        "! SUPPLY_CHAIN_UNIT_UUID
        supply_chain_unit_uuid     TYPE /iwbep/v4_value_control,
        "! EWMPARTY_ENTITLED_TO_DISPO
        ewmparty_entitled_to_dispo TYPE /iwbep/v4_value_control,
        "! PRODUCT_EWMSTORAGE_TYPE
        product_ewmstorage_type    TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_7.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_EWMSTORAGE_TYPE_TY</p>
      BEGIN OF tys_value_controls_8,
        "! PRODUCT_INTERNAL_UUID
        product_internal_uuid      TYPE /iwbep/v4_value_control,
        "! SUPPLY_CHAIN_UNIT_UUID
        supply_chain_unit_uuid     TYPE /iwbep/v4_value_control,
        "! EWMPARTY_ENTITLED_TO_DISPO
        ewmparty_entitled_to_dispo TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_8.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_SALES_DELIVERY_TYP</p>
      BEGIN OF tys_value_controls_9,
        "! PRODUCT_SALES_STATUS_VALID
        product_sales_status_valid TYPE /iwbep/v4_value_control,
        "! PROD_SALES_DELIVERY_SALES
        prod_sales_delivery_sales  TYPE /iwbep/v4_value_control,
        "! PRODUCT_SALES_DELIVERY_TEX
        product_sales_delivery_tex TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_9.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_VALUATION_ACCOUN_2</p>
      BEGIN OF tys_value_controls_10,
        "! FUTURE_PRICE_VALIDITY_STAR
        future_price_validity_star TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_10.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_VALUATION_LEDGER_3</p>
      BEGIN OF tys_value_controls_11,
        "! FUTURE_PRICE_VALIDITY_STAR
        future_price_validity_star TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_11.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_TYPE</p>
      BEGIN OF tys_value_controls_12,
        "! CREATION_DATE
        creation_date              TYPE /iwbep/v4_value_control,
        "! CREATION_DATE_TIME
        creation_date_time         TYPE /iwbep/v4_value_control,
        "! LAST_CHANGE_DATE
        last_change_date           TYPE /iwbep/v4_value_control,
        "! CROSS_PLANT_STATUS_VALIDIT
        cross_plant_status_validit TYPE /iwbep/v4_value_control,
        "! LAST_CHANGE_DATE_TIME
        last_change_date_time      TYPE /iwbep/v4_value_control,
        "! PRODUCT_BASIC_TEXT
        product_basic_text         TYPE /iwbep/v4_value_control,
        "! PRODUCT_CHANGE_MASTER
        product_change_master      TYPE /iwbep/v4_value_control,
        "! PRODUCT_DESCRIPTION
        product_description        TYPE /iwbep/v4_value_control,
        "! PRODUCT_EWMWAREHOUSE
        product_ewmwarehouse       TYPE /iwbep/v4_value_control,
        "! PRODUCT_INSPECTION_TEXT
        product_inspection_text    TYPE /iwbep/v4_value_control,
        "! PRODUCT_INTERNAL_COMMENT
        product_internal_comment   TYPE /iwbep/v4_value_control,
        "! PRODUCT_PLANT
        product_plant              TYPE /iwbep/v4_value_control,
        "! PRODUCT_PROCUREMENT
        product_procurement        TYPE /iwbep/v4_value_control,
        "! PRODUCT_PURCHASE_ORDER_TEX
        product_purchase_order_tex TYPE /iwbep/v4_value_control,
        "! PRODUCT_QUALITY_MANAGEMENT
        product_quality_management TYPE /iwbep/v4_value_control,
        "! PRODUCT_SALES
        product_sales              TYPE /iwbep/v4_value_control,
        "! PRODUCT_SALES_DELIVERY
        product_sales_delivery     TYPE /iwbep/v4_value_control,
        "! PRODUCT_STORAGE
        product_storage            TYPE /iwbep/v4_value_control,
        "! PRODUCT_UNIT_OF_MEASURE
        product_unit_of_measure    TYPE /iwbep/v4_value_control,
        "! PRODUCT_VALUATION
        product_valuation          TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_12.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_VALUATION_TYPE</p>
      BEGIN OF tys_value_controls_13,
        "! PRODUCT_VALUATION_ACCOUNTI
        product_valuation_accounti TYPE /iwbep/v4_value_control,
        "! PRODUCT_VALUATION_COSTING
        product_valuation_costing  TYPE /iwbep/v4_value_control,
        "! PRODUCT_VALUATION_LEDGER_A
        product_valuation_ledger_a TYPE /iwbep/v4_value_control,
        "! PRODUCT_VALUATION_LEDGER_P
        product_valuation_ledger_p TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_13.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_SALES_TYPE</p>
      BEGIN OF tys_value_controls_14,
        "! SALES_STATUS_VALIDITY_DATE
        sales_status_validity_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_14.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_PLANT_SUPPLY_PLA_2</p>
      BEGIN OF tys_value_controls_15,
        "! EFFECTIVE_OUT_DATE
        effective_out_date TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_15.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_SALES_DELIVERY_T_2</p>
      BEGIN OF tys_value_controls_16,
        "! PROD_LONG_TXT_CREATION_DAT
        prod_long_txt_creation_dat TYPE /iwbep/v4_value_control,
        "! PROD_LONG_TXT_LAST_CHANGED
        prod_long_txt_last_changed TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_16.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_BASIC_TEXTS_TYPE</p>
      BEGIN OF tys_value_controls_17,
        "! PROD_LONG_TXT_CREATION_DAT
        prod_long_txt_creation_dat TYPE /iwbep/v4_value_control,
        "! PROD_LONG_TXT_LAST_CHANGED
        prod_long_txt_last_changed TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_17.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_PLANT_FORECAST_TYP</p>
      BEGIN OF tys_value_controls_18,
        "! CONSUMPTION_REF_USAGE_END
        consumption_ref_usage_end TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_18.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_INSPECTION_TEXTS_T</p>
      BEGIN OF tys_value_controls_19,
        "! PROD_LONG_TXT_CREATION_DAT
        prod_long_txt_creation_dat TYPE /iwbep/v4_value_control,
        "! PROD_LONG_TXT_LAST_CHANGED
        prod_long_txt_last_changed TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_19.

    TYPES:
      "! <p class="shorttext synchronized">Value Control Structure of PRODUCT_VALUATION_COSTIN_2</p>
      BEGIN OF tys_value_controls_20,
        "! FUTURE_PLND_PRICE_1_VALDTY
        future_plnd_price_1_valdty TYPE /iwbep/v4_value_control,
        "! FUTURE_PLND_PRICE_2_VALDTY
        future_plnd_price_2_valdty TYPE /iwbep/v4_value_control,
        "! FUTURE_PLND_PRICE_3_VALDTY
        future_plnd_price_3_valdty TYPE /iwbep/v4_value_control,
      END OF tys_value_controls_20.

    TYPES:
      "! <p class="shorttext synchronized">PlantMRPTexts_Type</p>
      BEGIN OF tys_plant_mrptexts_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_4,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! <em>Key property</em> TextObjectType
        text_object_type           TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ProductPlantMRPText
        product_plant_mrptext      TYPE string,
        "! ProdLongTxtCreationDateTime
        prod_long_txt_creation_dat TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProdLongTxtLastChangedDateTime
        prod_long_txt_last_changed TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_plant_mrptexts_type,
      "! <p class="shorttext synchronized">List of PlantMRPTexts_Type</p>
      tyt_plant_mrptexts_type TYPE STANDARD TABLE OF tys_plant_mrptexts_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductBasicTexts_Type</p>
      BEGIN OF tys_product_basic_texts_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_17,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> TextObjectType
        text_object_type           TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ProductLongText
        product_long_text          TYPE string,
        "! ProdLongTxtCreationDateTime
        prod_long_txt_creation_dat TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProdLongTxtLastChangedDateTime
        prod_long_txt_last_changed TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_basic_texts_type,
      "! <p class="shorttext synchronized">List of ProductBasicTexts_Type</p>
      tyt_product_basic_texts_type TYPE STANDARD TABLE OF tys_product_basic_texts_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductChangeMaster_Type</p>
      BEGIN OF tys_product_change_master_type,
        "! <em>Key property</em> Product
        product        TYPE c LENGTH 40,
        "! <em>Key property</em> ChangeNumber
        change_number  TYPE c LENGTH 12,
        "! RevisionLevel
        revision_level TYPE c LENGTH 2,
      END OF tys_product_change_master_type,
      "! <p class="shorttext synchronized">List of ProductChangeMaster_Type</p>
      tyt_product_change_master_type TYPE STANDARD TABLE OF tys_product_change_master_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductDescription_Type</p>
      BEGIN OF tys_product_description_type,
        "! <em>Key property</em> Product
        product             TYPE c LENGTH 40,
        "! <em>Key property</em> Language
        language            TYPE c LENGTH 2,
        "! ProductDescription
        product_description TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages        TYPE tyt_sap_message,
        "! odata.etag
        etag                TYPE string,
      END OF tys_product_description_type,
      "! <p class="shorttext synchronized">List of ProductDescription_Type</p>
      tyt_product_description_type TYPE STANDARD TABLE OF tys_product_description_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductEWMStorageType_Type</p>
      BEGIN OF tys_product_ewmstorage_type_ty,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_8,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> EWMWarehouse
        ewmwarehouse               TYPE c LENGTH 4,
        "! <em>Key property</em> EntitledToDisposeParty
        entitled_to_dispose_party  TYPE c LENGTH 10,
        "! <em>Key property</em> EWMStorageType
        ewmstorage_type            TYPE c LENGTH 4,
        "! ProductInternalUUID
        product_internal_uuid      TYPE sysuuid_x16,
        "! SupplyChainUnitUUID
        supply_chain_unit_uuid     TYPE sysuuid_x16,
        "! EWMPartyEntitledToDisposeUUID
        ewmparty_entitled_to_dispo TYPE sysuuid_x16,
        "! EWMStorageSectionMethod
        ewmstorage_section_method  TYPE c LENGTH 4,
        "! EWMStorageBinType
        ewmstorage_bin_type        TYPE c LENGTH 4,
        "! EWMMaximumNumberOfBins
        ewmmaximum_number_of_bins  TYPE c LENGTH 3,
        "! EWMMaximumStorageQuantity
        ewmmaximum_storage_quantit TYPE p LENGTH 8 DECIMALS 3,
        "! EWMMaxStorQuantityBaseUnit
        ewmmax_stor_quantity_base  TYPE c LENGTH 3,
        "! EWMMaxStorQtyBaseUnitISOCode
        ewmmax_stor_qty_base_unit  TYPE c LENGTH 3,
        "! EWMMaxStorQuantityDisplayUnit
        ewmmax_stor_quantity_displ TYPE c LENGTH 3,
        "! EWMMaxStorageQtyDspUnitISOCode
        ewmmax_storage_qty_dsp_uni TYPE c LENGTH 3,
        "! EWMMinimumStorageQuantity
        ewmminimum_storage_quantit TYPE p LENGTH 8 DECIMALS 3,
        "! EWMMinStorQuantityBaseUnit
        ewmmin_stor_quantity_base  TYPE c LENGTH 3,
        "! EWMMinStorQtyBaseUnitISOCode
        ewmmin_stor_qty_base_unit  TYPE c LENGTH 3,
        "! EWMMinStorQuantityDisplayUnit
        ewmmin_stor_quantity_displ TYPE c LENGTH 3,
        "! EWMMinStorageQtyDspUnitISOCode
        ewmmin_storage_qty_dsp_uni TYPE c LENGTH 3,
        "! EWMMinReplnmtQuantity
        ewmmin_replnmt_quantity    TYPE p LENGTH 8 DECIMALS 3,
        "! EWMMinReplnmtQtyBaseUnit
        ewmmin_replnmt_qty_base_un TYPE c LENGTH 3,
        "! EWMMinReplnmtQtyBsUnitISOCode
        ewmmin_replnmt_qty_bs_unit TYPE c LENGTH 3,
        "! EWMMinReplnmtQtyDisplayUnit
        ewmmin_replnmt_qty_display TYPE c LENGTH 3,
        "! EWMMinReplnmtQtyDspUnitISOCode
        ewmmin_replnmt_qty_dsp_uni TYPE c LENGTH 3,
        "! EWMMinStorQtyOfMaxStorQtyInPct
        ewmmin_stor_qty_of_max_sto TYPE p LENGTH 3 DECIMALS 2,
        "! EWMSpltPtwyThresholdInPercent
        ewmsplt_ptwy_threshold_in  TYPE p LENGTH 3 DECIMALS 2,
        "! EWMProdIsSplitOnPtwy
        ewmprod_is_split_on_ptwy   TYPE abap_bool,
        "! EWMProdIsSkippedOnPtwy
        ewmprod_is_skipped_on_ptwy TYPE abap_bool,
        "! EWMHasNoReplenishment
        ewmhas_no_replenishment    TYPE abap_bool,
        "! EWMStorageBinSearchRule
        ewmstorage_bin_search_rule TYPE c LENGTH 1,
        "! EWMProdQuantityClassification
        ewmprod_quantity_classific TYPE c LENGTH 1,
        "! EWMProdPtwyQtyClassification
        ewmprod_ptwy_qty_classific TYPE c LENGTH 1,
        "! EWMPtwySequence
        ewmptwy_sequence           TYPE c LENGTH 2,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_ewmstorage_type_ty,
      "! <p class="shorttext synchronized">List of ProductEWMStorageType_Type</p>
      tyt_product_ewmstorage_type_ty TYPE STANDARD TABLE OF tys_product_ewmstorage_type_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductEWMWarehouse_Type</p>
      BEGIN OF tys_product_ewmwarehouse_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_7,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> EWMWarehouse
        ewmwarehouse               TYPE c LENGTH 4,
        "! <em>Key property</em> EntitledToDisposeParty
        entitled_to_dispose_party  TYPE c LENGTH 10,
        "! ProductInternalUUID
        product_internal_uuid      TYPE sysuuid_x16,
        "! SupplyChainUnitUUID
        supply_chain_unit_uuid     TYPE sysuuid_x16,
        "! EWMPartyEntitledToDisposeUUID
        ewmparty_entitled_to_dispo TYPE sysuuid_x16,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! EWMProductProcessBlockProfile
        ewmproduct_process_block_p TYPE c LENGTH 2,
        "! EWMProcessTypeControlCode
        ewmprocess_type_control_co TYPE c LENGTH 2,
        "! EWMStggAreaDeterminationGroup
        ewmstgg_area_determination TYPE c LENGTH 4,
        "! RequiredMinShelfLife
        required_min_shelf_life    TYPE p LENGTH 6 DECIMALS 0,
        "! EWMPtwyControlStrategy
        ewmptwy_control_strategy   TYPE c LENGTH 4,
        "! EWMStorageSectionMethod
        ewmstorage_section_method  TYPE c LENGTH 4,
        "! EWMStorageBinType
        ewmstorage_bin_type        TYPE c LENGTH 4,
        "! EWMBulkStorageMethod
        ewmbulk_storage_method     TYPE c LENGTH 2,
        "! EWMStockRemovalControlStrategy
        ewmstock_removal_control_s TYPE c LENGTH 4,
        "! EWMStockDeterminationGroup
        ewmstock_determination_gro TYPE c LENGTH 2,
        "! EWMPhysInventoryCountingCycle
        ewmphys_inventory_counting TYPE c LENGTH 1,
        "! EWMPreferredUnit
        ewmpreferred_unit          TYPE c LENGTH 3,
        "! EWMPreferredUnitISOCode
        ewmpreferred_unit_isocode  TYPE c LENGTH 3,
        "! EWMQualityInspectionGroup
        ewmquality_inspection_grou TYPE c LENGTH 4,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_ewmwarehouse_type,
      "! <p class="shorttext synchronized">List of ProductEWMWarehouse_Type</p>
      tyt_product_ewmwarehouse_type TYPE STANDARD TABLE OF tys_product_ewmwarehouse_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductInspectionTexts_Type</p>
      BEGIN OF tys_product_inspection_texts_t,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_19,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> TextObjectType
        text_object_type           TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ProductLongText
        product_long_text          TYPE string,
        "! ProdLongTxtCreationDateTime
        prod_long_txt_creation_dat TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProdLongTxtLastChangedDateTime
        prod_long_txt_last_changed TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_inspection_texts_t,
      "! <p class="shorttext synchronized">List of ProductInspectionTexts_Type</p>
      tyt_product_inspection_texts_t TYPE STANDARD TABLE OF tys_product_inspection_texts_t WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductInternalNoteTexts_Type</p>
      BEGIN OF tys_product_internal_note_text,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_3,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> TextObjectType
        text_object_type           TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ProductLongText
        product_long_text          TYPE string,
        "! ProdLongTxtCreationDateTime
        prod_long_txt_creation_dat TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProdLongTxtLastChangedDateTime
        prod_long_txt_last_changed TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_internal_note_text,
      "! <p class="shorttext synchronized">List of ProductInternalNoteTexts_Type</p>
      tyt_product_internal_note_text TYPE STANDARD TABLE OF tys_product_internal_note_text WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantCosting_Type</p>
      BEGIN OF tys_product_plant_costing_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! IsCoProduct
        is_co_product              TYPE abap_bool,
        "! CostingLotSize
        costing_lot_size           TYPE p LENGTH 7 DECIMALS 3,
        "! TaskListGroup
        task_list_group            TYPE c LENGTH 8,
        "! TaskListType
        task_list_type             TYPE c LENGTH 1,
        "! CostingSpecialProcurementType
        costing_special_procuremen TYPE c LENGTH 2,
        "! SourceBOMAlternative
        source_bomalternative      TYPE c LENGTH 2,
        "! ProductBOMUsage
        product_bomusage           TYPE c LENGTH 1,
        "! ProductIsCostingRelevant
        product_is_costing_relevan TYPE abap_bool,
        "! TaskListGroupCounter
        task_list_group_counter    TYPE c LENGTH 2,
        "! VarianceKey
        variance_key               TYPE c LENGTH 6,
        "! CostingProductionVersion
        costing_production_version TYPE c LENGTH 4,
        "! IsFixedPriceCoProduct
        is_fixed_price_co_product  TYPE abap_bool,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_costing_type,
      "! <p class="shorttext synchronized">List of ProductPlantCosting_Type</p>
      tyt_product_plant_costing_type TYPE STANDARD TABLE OF tys_product_plant_costing_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantForecast_Type</p>
      BEGIN OF tys_product_plant_forecast_typ,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_18,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! ConsumptionRefUsageEndDate
        consumption_ref_usage_end  TYPE datn,
        "! CnsmpnQuantityMultiplierValue
        cnsmpn_quantity_multiplier TYPE p LENGTH 3 DECIMALS 2,
        "! ConsumptionReferenceProduct
        consumption_reference_prod TYPE c LENGTH 40,
        "! ConsumptionReferencePlant
        consumption_reference_plan TYPE c LENGTH 4,
        "! CorrectionFactorIsRequired
        correction_factor_is_requi TYPE abap_bool,
        "! ForecastModelIsReset
        forecast_model_is_reset    TYPE abap_bool,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_forecast_typ,
      "! <p class="shorttext synchronized">List of ProductPlantForecast_Type</p>
      tyt_product_plant_forecast_typ TYPE STANDARD TABLE OF tys_product_plant_forecast_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantInspTypSetting_Type</p>
      BEGIN OF tys_product_plant_insp_typ_set,
        "! <em>Key property</em> InspectionLotType
        inspection_lot_type        TYPE c LENGTH 8,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! InspLotIsTaskListRequired
        insp_lot_is_task_list_requ TYPE abap_bool,
        "! InspLotHasMaterialSpec
        insp_lot_has_material_spec TYPE abap_bool,
        "! InspLotHasConfignSpecification
        insp_lot_has_confign_speci TYPE abap_bool,
        "! InspLotHasBatchCharc
        insp_lot_has_batch_charc   TYPE abap_bool,
        "! InspLotHasAutomSpecAssgmt
        insp_lot_has_autom_spec_as TYPE abap_bool,
        "! InspLotHasCharc
        insp_lot_has_charc         TYPE abap_bool,
        "! HasPostToInspectionStock
        has_post_to_inspection_sto TYPE abap_bool,
        "! InspLotIsAutomUsgeDcsnPossible
        insp_lot_is_autom_usge_dcs TYPE abap_bool,
        "! SamplingProcedure
        sampling_procedure         TYPE c LENGTH 8,
        "! InspLotDynamicRule
        insp_lot_dynamic_rule      TYPE c LENGTH 3,
        "! InspLotSampleQuantityInPercent
        insp_lot_sample_quantity_i TYPE p LENGTH 2 DECIMALS 0,
        "! InspectionLotIsFullInspection
        inspection_lot_is_full_ins TYPE abap_bool,
        "! InspLotSkipIsAllowed
        insp_lot_skip_is_allowed   TYPE abap_bool,
        "! InspLotHasManualSampleSize
        insp_lot_has_manual_sample TYPE abap_bool,
        "! InspLotIsSmplCalcMnlTriggered
        insp_lot_is_smpl_calc_mnl  TYPE abap_bool,
        "! InspLotIsSerialNmbrPossible
        insp_lot_is_serial_nmbr_po TYPE abap_bool,
        "! InspLotDurationInDays
        insp_lot_duration_in_days  TYPE p LENGTH 2 DECIMALS 0,
        "! InspLotSummaryControl
        insp_lot_summary_control   TYPE c LENGTH 1,
        "! InspQualityScoreProcedure
        insp_quality_score_procedu TYPE c LENGTH 2,
        "! InspLotAcceptedScrapRatioInPct
        insp_lot_accepted_scrap_ra TYPE p LENGTH 4 DECIMALS 4,
        "! InspectionLotHasAppraisalCosts
        inspection_lot_has_apprais TYPE abap_bool,
        "! QualityCostCollector
        quality_cost_collector     TYPE c LENGTH 12,
        "! ProdInspTypeSettingIsActive
        prod_insp_type_setting_is  TYPE abap_bool,
        "! InspTypeIsPrfrd
        insp_type_is_prfrd         TYPE abap_bool,
        "! InspLotHasHandlingUnit
        insp_lot_has_handling_unit TYPE abap_bool,
        "! InspLotHasMultipleSpec
        insp_lot_has_multiple_spec TYPE abap_bool,
        "! InspLotOfEWMSummaryControl
        insp_lot_of_ewmsummary_con TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_insp_typ_set,
      "! <p class="shorttext synchronized">List of ProductPlantInspTypSetting_Type</p>
      tyt_product_plant_insp_typ_set TYPE STANDARD TABLE OF tys_product_plant_insp_typ_set WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantMRP_Type</p>
      BEGIN OF tys_product_plant_mrp_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> MRPArea
        mrparea                    TYPE c LENGTH 10,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! MRPGroup
        mrpgroup                   TYPE c LENGTH 4,
        "! ReorderThresholdQuantity
        reorder_threshold_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! PlanAndOrderDayDetermination
        plan_and_order_day_determi TYPE c LENGTH 3,
        "! PlanningTimeFence
        planning_time_fence        TYPE c LENGTH 3,
        "! LotSizingProcedure
        lot_sizing_procedure       TYPE c LENGTH 2,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumStockQuantity
        maximum_stock_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! AssemblyScrapPercent
        assembly_scrap_percent     TYPE p LENGTH 3 DECIMALS 2,
        "! ProcurementSubType
        procurement_sub_type       TYPE c LENGTH 2,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! DfltStorageLocationExtProcmt
        dflt_storage_location_ext  TYPE c LENGTH 4,
        "! MRPPlanningCalendar
        mrpplanning_calendar       TYPE c LENGTH 3,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! RangeOfCvrgPrflCode
        range_of_cvrg_prfl_code    TYPE c LENGTH 3,
        "! SafetySupplyDurationInDays
        safety_supply_duration_in  TYPE c LENGTH 2,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizeIndependentCosts
        lot_size_independent_costs TYPE decfloat16,
        "! StorageCostsPercentageCode
        storage_costs_percentage_c TYPE c LENGTH 1,
        "! ProductServiceLevelInPercent
        product_service_level_in_p TYPE p LENGTH 2 DECIMALS 1,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! SafetyTimePeriodProfile
        safety_time_period_profile TYPE c LENGTH 3,
        "! DependentRqmtMRPRelevance
        dependent_rqmt_mrprelevanc TYPE c LENGTH 1,
        "! ProductSafetyTimeMRPRelevance
        product_safety_time_mrprel TYPE c LENGTH 1,
        "! PlannedDeliveryDurationInDays
        planned_delivery_duration  TYPE p LENGTH 2 DECIMALS 0,
        "! IsPlannedDeliveryTime
        is_planned_delivery_time   TYPE abap_bool,
        "! RqmtQtyRcptTaktTmeInWrkgDays
        rqmt_qty_rcpt_takt_tme_in  TYPE p LENGTH 2 DECIMALS 0,
        "! MRPSafetyStockMethod
        mrpsafety_stock_method     TYPE c LENGTH 2,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_mrp_type,
      "! <p class="shorttext synchronized">List of ProductPlantMRP_Type</p>
      tyt_product_plant_mrp_type TYPE STANDARD TABLE OF tys_product_plant_mrp_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantProcurement_Type</p>
      BEGIN OF tys_product_plant_procuremen_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! IsAutoPurOrdCreationAllowed
        is_auto_pur_ord_creation_a TYPE abap_bool,
        "! IsSourceListRequired
        is_source_list_required    TYPE abap_bool,
        "! JustInTimeDeliveryScheduleCode
        just_in_time_delivery_sche TYPE c LENGTH 1,
        "! PurchasingGroup
        purchasing_group           TYPE c LENGTH 3,
        "! SourceOfSupplyCategory
        source_of_supply_category  TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_procuremen_2,
      "! <p class="shorttext synchronized">List of ProductPlantProcurement_Type</p>
      tyt_product_plant_procuremen_2 TYPE STANDARD TABLE OF tys_product_plant_procuremen_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantPurchaseTax_Type</p>
      BEGIN OF tys_product_plant_purchase_t_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! <em>Key property</em> DepartureCountry
        departure_country          TYPE c LENGTH 3,
        "! ProdPurchaseTaxClassification
        prod_purchase_tax_classifi TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_purchase_t_2,
      "! <p class="shorttext synchronized">List of ProductPlantPurchaseTax_Type</p>
      tyt_product_plant_purchase_t_2 TYPE STANDARD TABLE OF tys_product_plant_purchase_t_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantQualityManagement_Type</p>
      BEGIN OF tys_product_plant_quality_ma_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! ProdQltyManagementControlKey
        prod_qlty_management_contr TYPE c LENGTH 8,
        "! HasPostToInspectionStock
        has_post_to_inspection_sto TYPE abap_bool,
        "! InspLotDocumentationIsRequired
        insp_lot_documentation_is  TYPE abap_bool,
        "! QualityMgmtSystemForSupplier
        quality_mgmt_system_for_su TYPE c LENGTH 4,
        "! RecrrgInspIntervalTimeInDays
        recrrg_insp_interval_time  TYPE p LENGTH 3 DECIMALS 0,
        "! ProductQualityCertificateType
        product_quality_certificat TYPE c LENGTH 4,
        "! ProdQualityAuthorizationGroup
        prod_quality_authorization TYPE c LENGTH 6,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_quality_ma_2,
      "! <p class="shorttext synchronized">List of ProductPlantQualityManagement_Type</p>
      tyt_product_plant_quality_ma_2 TYPE STANDARD TABLE OF tys_product_plant_quality_ma_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantSales_Type</p>
      BEGIN OF tys_product_plant_sales_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! LoadingGroup
        loading_group              TYPE c LENGTH 4,
        "! CapPlanningQuantityInBaseUoM
        cap_planning_quantity_in_b TYPE p LENGTH 7 DECIMALS 3,
        "! ProdShipgProcgDurationInDays
        prod_shipg_procg_duration  TYPE p LENGTH 3 DECIMALS 2,
        "! WrkCentersShipgSetupTimeInDays
        wrk_centers_shipg_setup_ti TYPE p LENGTH 3 DECIMALS 2,
        "! ReplacementPartType
        replacement_part_type      TYPE c LENGTH 1,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_sales_type,
      "! <p class="shorttext synchronized">List of ProductPlantSales_Type</p>
      tyt_product_plant_sales_type TYPE STANDARD TABLE OF tys_product_plant_sales_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantStorageLocation_Type</p>
      BEGIN OF tys_product_plant_storage_lo_2,
        "! <em>Key property</em> Product
        product                TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                  TYPE c LENGTH 4,
        "! <em>Key property</em> StorageLocation
        storage_location       TYPE c LENGTH 4,
        "! WarehouseStorageBin
        warehouse_storage_bin  TYPE c LENGTH 10,
        "! IsMarkedForDeletion
        is_marked_for_deletion TYPE abap_bool,
        "! SAP__Messages
        sap_messages           TYPE tyt_sap_message,
        "! odata.etag
        etag                   TYPE string,
      END OF tys_product_plant_storage_lo_2,
      "! <p class="shorttext synchronized">List of ProductPlantStorageLocation_Type</p>
      tyt_product_plant_storage_lo_2 TYPE STANDARD TABLE OF tys_product_plant_storage_lo_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantStorage_Type</p>
      BEGIN OF tys_product_plant_storage_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! PhysInventoryForCycleCounting
        phys_inventory_for_cycle_c TYPE c LENGTH 1,
        "! MaximumStoragePeriod
        maximum_storage_period     TYPE p LENGTH 3 DECIMALS 0,
        "! ProdMaximumStoragePeriodUnit
        prod_maximum_storage_perio TYPE c LENGTH 3,
        "! MaximumStoragePeriodISOUnit
        maximum_storage_period_iso TYPE c LENGTH 3,
        "! CycleCountingIndicatorIsFixed
        cycle_counting_indicator_i TYPE abap_bool,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_storage_type,
      "! <p class="shorttext synchronized">List of ProductPlantStorage_Type</p>
      tyt_product_plant_storage_type TYPE STANDARD TABLE OF tys_product_plant_storage_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantSupplyPlanning_Type</p>
      BEGIN OF tys_product_plant_supply_pla_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_15,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! FixedLotSizeQuantity
        fixed_lot_size_quantity    TYPE p LENGTH 7 DECIMALS 3,
        "! MaximumLotSizeQuantity
        maximum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumLotSizeQuantity
        minimum_lot_size_quantity  TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizeRoundingQuantity
        lot_size_rounding_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! LotSizingProcedure
        lot_sizing_procedure       TYPE c LENGTH 2,
        "! MRPType
        mrptype                    TYPE c LENGTH 2,
        "! MRPResponsible
        mrpresponsible             TYPE c LENGTH 3,
        "! SafetyStockQuantity
        safety_stock_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! MinimumSafetyStockQuantity
        minimum_safety_stock_quant TYPE p LENGTH 7 DECIMALS 3,
        "! PlanningTimeFence
        planning_time_fence        TYPE c LENGTH 3,
        "! ConsumptionValueCategory
        consumption_value_category TYPE c LENGTH 1,
        "! MaximumStockQuantity
        maximum_stock_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! ReorderThresholdQuantity
        reorder_threshold_quantity TYPE p LENGTH 7 DECIMALS 3,
        "! PlannedDeliveryDurationInDays
        planned_delivery_duration  TYPE p LENGTH 2 DECIMALS 0,
        "! SafetySupplyDurationInDays
        safety_supply_duration_in  TYPE c LENGTH 2,
        "! PlanningStrategyGroup
        planning_strategy_group    TYPE c LENGTH 2,
        "! TotalReplenishmentLeadTime
        total_replenishment_lead_t TYPE p LENGTH 2 DECIMALS 0,
        "! ProcurementType
        procurement_type           TYPE c LENGTH 1,
        "! ProcurementSubType
        procurement_sub_type       TYPE c LENGTH 2,
        "! AssemblyScrapPercent
        assembly_scrap_percent     TYPE p LENGTH 3 DECIMALS 2,
        "! AvailabilityCheckType
        availability_check_type    TYPE c LENGTH 2,
        "! GoodsReceiptDuration
        goods_receipt_duration     TYPE p LENGTH 2 DECIMALS 0,
        "! PlanAndOrderDayDetermination
        plan_and_order_day_determi TYPE c LENGTH 3,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! DfltStorageLocationExtProcmt
        dflt_storage_location_ext  TYPE c LENGTH 4,
        "! MRPGroup
        mrpgroup                   TYPE c LENGTH 4,
        "! LotSizeIndependentCosts
        lot_size_independent_costs TYPE decfloat16,
        "! RqmtQtyRcptTaktTmeInWrkgDays
        rqmt_qty_rcpt_takt_tme_in  TYPE p LENGTH 2 DECIMALS 0,
        "! MRPPlanningCalendar
        mrpplanning_calendar       TYPE c LENGTH 3,
        "! RangeOfCvrgPrflCode
        range_of_cvrg_prfl_code    TYPE c LENGTH 3,
        "! ProductSafetyTimeMRPRelevance
        product_safety_time_mrprel TYPE c LENGTH 1,
        "! SafetyTimePeriodProfile
        safety_time_period_profile TYPE c LENGTH 3,
        "! DependentRqmtMRPRelevance
        dependent_rqmt_mrprelevanc TYPE c LENGTH 1,
        "! ProductServiceLevelInPercent
        product_service_level_in_p TYPE p LENGTH 2 DECIMALS 1,
        "! ProdInhProdnDurationInWorkDays
        prod_inh_prodn_duration_in TYPE p LENGTH 2 DECIMALS 0,
        "! MRPAvailabilityType
        mrpavailability_type       TYPE c LENGTH 1,
        "! CrossProjectProduct
        cross_project_product      TYPE c LENGTH 1,
        "! StorageCostsPercentageCode
        storage_costs_percentage_c TYPE c LENGTH 1,
        "! FollowUpProduct
        follow_up_product          TYPE c LENGTH 40,
        "! RepetitiveManufacturingIsAllwd
        repetitive_manufacturing_i TYPE abap_bool,
        "! DependentRequirementsType
        dependent_requirements_typ TYPE c LENGTH 1,
        "! ProductIsBulkComponent
        product_is_bulk_component  TYPE abap_bool,
        "! RepetitiveManufacturingProfile
        repetitive_manufacturing_p TYPE c LENGTH 4,
        "! BackwardCnsmpnPeriodInWorkDays
        backward_cnsmpn_period_in  TYPE c LENGTH 3,
        "! FwdConsumptionPeriodInWorkDays
        fwd_consumption_period_in  TYPE c LENGTH 3,
        "! ProdRqmtsConsumptionMode
        prod_rqmts_consumption_mod TYPE c LENGTH 1,
        "! ProdFcstRequirementsSplitCode
        prod_fcst_requirements_spl TYPE c LENGTH 1,
        "! EffectiveOutDate
        effective_out_date         TYPE datn,
        "! SchedulingFloatProfile
        scheduling_float_profile   TYPE c LENGTH 3,
        "! ComponentScrapInPercent
        component_scrap_in_percent TYPE p LENGTH 3 DECIMALS 2,
        "! ProductDiscontinuationCode
        product_discontinuation_co TYPE c LENGTH 1,
        "! ProductRequirementsGrouping
        product_requirements_group TYPE c LENGTH 1,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! ProductComponentBackflushCode
        product_component_backflus TYPE c LENGTH 1,
        "! ProposedProductSupplyArea
        proposed_product_supply_ar TYPE c LENGTH 10,
        "! MRPSafetyStockMethod
        mrpsafety_stock_method     TYPE c LENGTH 2,
        "! JITProdnConfProfile
        jitprodn_conf_profile      TYPE c LENGTH 4,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! ProdnPlngAndControlCalendar
        prodn_plng_and_control_cal TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! ConsignmentControl
        consignment_control        TYPE c LENGTH 1,
        "! ATPCheckHorizonInDays
        atpcheck_horizon_in_days   TYPE p LENGTH 2 DECIMALS 0,
        "! ATPCheckHorizonFactoryCalendar
        atpcheck_horizon_factory_c TYPE c LENGTH 2,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_supply_pla_2,
      "! <p class="shorttext synchronized">List of ProductPlantSupplyPlanning_Type</p>
      tyt_product_plant_supply_pla_2 TYPE STANDARD TABLE OF tys_product_plant_supply_pla_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlant_Type</p>
      BEGIN OF tys_product_plant_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_6,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! ProfileCode
        profile_code               TYPE c LENGTH 2,
        "! ProfileValidityStartDate
        profile_validity_start_dat TYPE datn,
        "! FiscalYearVariant
        fiscal_year_variant        TYPE c LENGTH 2,
        "! PeriodType
        period_type                TYPE c LENGTH 1,
        "! ProfitCenter
        profit_center              TYPE c LENGTH 10,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ConfigurableProduct
        configurable_product       TYPE c LENGTH 40,
        "! StockDeterminationGroup
        stock_determination_group  TYPE c LENGTH 4,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! IsNegativeStockAllowed
        is_negative_stock_allowed  TYPE abap_bool,
        "! ProductCFOPCategory
        product_cfopcategory       TYPE c LENGTH 2,
        "! ProductIsExciseTaxRelevant
        product_is_excise_tax_rele TYPE abap_bool,
        "! GoodsIssueUnit
        goods_issue_unit           TYPE c LENGTH 3,
        "! GoodsIssueISOUnit
        goods_issue_isounit        TYPE c LENGTH 3,
        "! DistrCntrDistributionProfile
        distr_cntr_distribution_pr TYPE c LENGTH 3,
        "! ProductIsCriticalPrt
        product_is_critical_prt    TYPE abap_bool,
        "! ProductLogisticsHandlingGroup
        product_logistics_handling TYPE c LENGTH 4,
        "! ProductFreightGroup
        product_freight_group      TYPE c LENGTH 8,
        "! OriginalBatchReferenceProduct
        original_batch_reference_p TYPE c LENGTH 40,
        "! OriglBatchManagementIsRequired
        origl_batch_management_is  TYPE c LENGTH 1,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! ProductMinControlTemperature
        product_min_control_temper TYPE p LENGTH 4 DECIMALS 2,
        "! ProductMaxControlTemperature
        product_max_control_temper TYPE p LENGTH 4 DECIMALS 2,
        "! ProductControlTemperatureUnit
        product_control_temperatur TYPE c LENGTH 3,
        "! ProdCtrlTemperatureUnitISOCode
        prod_ctrl_temperature_unit TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_type,
      "! <p class="shorttext synchronized">List of ProductPlant_Type</p>
      tyt_product_plant_type TYPE STANDARD TABLE OF tys_product_plant_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPlantWorkScheduling_Type</p>
      BEGIN OF tys_product_plant_work_sched_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! ProductBaseQuantity
        product_base_quantity      TYPE p LENGTH 7 DECIMALS 3,
        "! UnlimitedOverDelivIsAllowed
        unlimited_over_deliv_is_al TYPE abap_bool,
        "! OverDeliveryTolerancePercent
        over_delivery_tolerance_pe TYPE p LENGTH 2 DECIMALS 1,
        "! UnderDeliveryTolerancePercent
        under_delivery_tolerance_p TYPE p LENGTH 2 DECIMALS 1,
        "! ProductionInvtryManagedLoc
        production_invtry_managed  TYPE c LENGTH 4,
        "! ProductionOrderBatchCode
        production_order_batch_cod TYPE c LENGTH 1,
        "! ProdIsWithdrawnFrmProdnBin
        prod_is_withdrawn_frm_prod TYPE abap_bool,
        "! TransitionMatrixProductsGroup
        transition_matrix_products TYPE c LENGTH 20,
        "! OrderChangeManagementProfile
        order_change_management_pr TYPE c LENGTH 6,
        "! ProductComponentBackflushCode
        product_component_backflus TYPE c LENGTH 1,
        "! SetupAndTeardownTime
        setup_and_teardown_time    TYPE p LENGTH 3 DECIMALS 2,
        "! ProductionSchedulingProfile
        production_scheduling_prof TYPE c LENGTH 6,
        "! TransitionTime
        transition_time            TYPE p LENGTH 3 DECIMALS 2,
        "! ProcessingTimeInDays
        processing_time_in_days    TYPE p LENGTH 3 DECIMALS 2,
        "! ProductionSupervisor
        production_supervisor      TYPE c LENGTH 3,
        "! ProductProductionQuantityUnit
        product_production_quantit TYPE c LENGTH 3,
        "! ProdProductionQuantityISOUnit
        prod_production_quantity_i TYPE c LENGTH 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_plant_work_sched_2,
      "! <p class="shorttext synchronized">List of ProductPlantWorkScheduling_Type</p>
      tyt_product_plant_work_sched_2 TYPE STANDARD TABLE OF tys_product_plant_work_sched_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductProcurement_Type</p>
      BEGIN OF tys_product_procurement_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! PurchaseOrderQuantityUnit
        purchase_order_quantity_un TYPE c LENGTH 3,
        "! PurchaseOrderQuantityISOUnit
        purchase_order_quantity_is TYPE c LENGTH 3,
        "! VarblPurOrdUnitStatus
        varbl_pur_ord_unit_status  TYPE c LENGTH 1,
        "! PurchasingAcknProfile
        purchasing_ackn_profile    TYPE c LENGTH 4,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_procurement_type,
      "! <p class="shorttext synchronized">List of ProductProcurement_Type</p>
      tyt_product_procurement_type TYPE STANDARD TABLE OF tys_product_procurement_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductPurchaseOrderText</p>
      BEGIN OF tys_product_purchase_order_t_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> TextObjectType
        text_object_type           TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ProductLongText
        product_long_text          TYPE string,
        "! ProdLongTxtCreationDateTime
        prod_long_txt_creation_dat TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProdLongTxtLastChangedDateTime
        prod_long_txt_last_changed TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_purchase_order_t_2,
      "! <p class="shorttext synchronized">List of ProductPurchaseOrderText</p>
      tyt_product_purchase_order_t_2 TYPE STANDARD TABLE OF tys_product_purchase_order_t_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductQualityManagement_Type</p>
      BEGIN OF tys_product_quality_manageme_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! QltyMgmtInProcmtIsActive
        qlty_mgmt_in_procmt_is_act TYPE abap_bool,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_quality_manageme_2,
      "! <p class="shorttext synchronized">List of ProductQualityManagement_Type</p>
      tyt_product_quality_manageme_2 TYPE STANDARD TABLE OF tys_product_quality_manageme_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductSalesDelivery_Type</p>
      BEGIN OF tys_product_sales_delivery_typ,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_9,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org          TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl  TYPE c LENGTH 2,
        "! MinimumOrderQuantity
        minimum_order_quantity     TYPE p LENGTH 7 DECIMALS 3,
        "! SupplyingPlant
        supplying_plant            TYPE c LENGTH 4,
        "! PriceSpecificationProductGroup
        price_specification_produc TYPE c LENGTH 2,
        "! AccountDetnProductGroup
        account_detn_product_group TYPE c LENGTH 2,
        "! DeliveryNoteProcMinDelivQty
        delivery_note_proc_min_del TYPE p LENGTH 7 DECIMALS 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! DeliveryQuantityUnit
        delivery_quantity_unit     TYPE c LENGTH 3,
        "! DeliveryQuantityISOUnit
        delivery_quantity_isounit  TYPE c LENGTH 3,
        "! DeliveryQuantity
        delivery_quantity          TYPE p LENGTH 7 DECIMALS 3,
        "! ProductSalesStatus
        product_sales_status       TYPE c LENGTH 2,
        "! ProductSalesStatusValidityDate
        product_sales_status_valid TYPE datn,
        "! SalesMeasureUnit
        sales_measure_unit         TYPE c LENGTH 3,
        "! SalesMeasureISOUnit
        sales_measure_isounit      TYPE c LENGTH 3,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! FirstSalesSpecProductGroup
        first_sales_spec_product_g TYPE c LENGTH 3,
        "! SecondSalesSpecProductGroup
        second_sales_spec_product  TYPE c LENGTH 3,
        "! ThirdSalesSpecProductGroup
        third_sales_spec_product_g TYPE c LENGTH 3,
        "! FourthSalesSpecProductGroup
        fourth_sales_spec_product  TYPE c LENGTH 3,
        "! FifthSalesSpecProductGroup
        fifth_sales_spec_product_g TYPE c LENGTH 3,
        "! LogisticsStatisticsGroup
        logistics_statistics_group TYPE c LENGTH 1,
        "! VolumeRebateGroup
        volume_rebate_group        TYPE c LENGTH 2,
        "! CashDiscountIsDeductible
        cash_discount_is_deductibl TYPE abap_bool,
        "! RoundingProfile
        rounding_profile           TYPE c LENGTH 4,
        "! VariableSalesUnitIsNotAllowed
        variable_sales_unit_is_not TYPE abap_bool,
        "! ProductCommissionGroup
        product_commission_group   TYPE c LENGTH 2,
        "! PricingReferenceProduct
        pricing_reference_product  TYPE c LENGTH 40,
        "! ProductHasAttributeID01
        product_has_attribute_id_0 TYPE abap_bool,
        "! ProductHasAttributeID02
        product_has_attribute_id_2 TYPE abap_bool,
        "! ProductHasAttributeID03
        product_has_attribute_id_3 TYPE abap_bool,
        "! ProductHasAttributeID04
        product_has_attribute_id_4 TYPE abap_bool,
        "! ProductHasAttributeID05
        product_has_attribute_id_5 TYPE abap_bool,
        "! ProductHasAttributeID06
        product_has_attribute_id_6 TYPE abap_bool,
        "! ProductHasAttributeID07
        product_has_attribute_id_7 TYPE abap_bool,
        "! ProductHasAttributeID08
        product_has_attribute_id_8 TYPE abap_bool,
        "! ProductHasAttributeID09
        product_has_attribute_id_9 TYPE abap_bool,
        "! ProductHasAttributeID10
        product_has_attribute_id_1 TYPE abap_bool,
        "! ProdIsEntlmntRlvt
        prod_is_entlmnt_rlvt       TYPE abap_bool,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_sales_delivery_typ,
      "! <p class="shorttext synchronized">List of ProductSalesDelivery_Type</p>
      tyt_product_sales_delivery_typ TYPE STANDARD TABLE OF tys_product_sales_delivery_typ WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductSalesDeliveryTexts_Type</p>
      BEGIN OF tys_product_sales_delivery_t_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_16,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org          TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl  TYPE c LENGTH 2,
        "! <em>Key property</em> TextObjectType
        text_object_type           TYPE c LENGTH 4,
        "! <em>Key property</em> Language
        language                   TYPE c LENGTH 2,
        "! ProductSalesDeliveryText
        product_sales_delivery_tex TYPE string,
        "! ProdLongTxtCreationDateTime
        prod_long_txt_creation_dat TYPE timestamp,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! ProdLongTxtLastChangedDateTime
        prod_long_txt_last_changed TYPE timestamp,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_sales_delivery_t_2,
      "! <p class="shorttext synchronized">List of ProductSalesDeliveryTexts_Type</p>
      tyt_product_sales_delivery_t_2 TYPE STANDARD TABLE OF tys_product_sales_delivery_t_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductSales_Type</p>
      BEGIN OF tys_product_sales_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_14,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! SalesStatus
        sales_status               TYPE c LENGTH 2,
        "! SalesStatusValidityDate
        sales_status_validity_date TYPE datn,
        "! TransportationGroup
        transportation_group       TYPE c LENGTH 4,
        "! PackagingProductType
        packaging_product_type     TYPE c LENGTH 4,
        "! AllowedPackagingWeightQty
        allowed_packaging_weight_q TYPE p LENGTH 7 DECIMALS 3,
        "! AllowedPackagingWeightQtyUnit
        allowed_packaging_weight_2 TYPE c LENGTH 3,
        "! AllwdPackagingWeightQtyISOUnit
        allwd_packaging_weight_qty TYPE c LENGTH 3,
        "! AllowedPackagingVolumeQty
        allowed_packaging_volume_q TYPE p LENGTH 7 DECIMALS 3,
        "! AllowedPackagingVolumeQtyUnit
        allowed_packaging_volume_2 TYPE c LENGTH 3,
        "! AllwdPackagingVolumeQtyISOUnit
        allwd_packaging_volume_qty TYPE c LENGTH 3,
        "! MaximumLevelByVolumeInPercent
        maximum_level_by_volume_in TYPE p LENGTH 2 DECIMALS 0,
        "! ExcessWeightToleranceValue
        excess_weight_tolerance_va TYPE p LENGTH 2 DECIMALS 1,
        "! PackggProductIsClosedPackaging
        packgg_product_is_closed_p TYPE abap_bool,
        "! ProductStackingFactor
        product_stacking_factor    TYPE int2,
        "! ProdExcessVolumeToleranceValue
        prod_excess_volume_toleran TYPE p LENGTH 2 DECIMALS 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_sales_type,
      "! <p class="shorttext synchronized">List of ProductSales_Type</p>
      tyt_product_sales_type TYPE STANDARD TABLE OF tys_product_sales_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductStorage_Type</p>
      BEGIN OF tys_product_storage_type,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! StorageConditions
        storage_conditions         TYPE c LENGTH 2,
        "! ProdTemperatureConditionCode
        prod_temperature_condition TYPE c LENGTH 2,
        "! HazardousProduct
        hazardous_product          TYPE c LENGTH 40,
        "! NmbrOfGROrGISlipsToPrintQty
        nmbr_of_gror_gislips_to_pr TYPE p LENGTH 7 DECIMALS 3,
        "! LabelType
        label_type                 TYPE c LENGTH 2,
        "! LabelForm
        label_form                 TYPE c LENGTH 2,
        "! MinRemainingShelfLife
        min_remaining_shelf_life   TYPE p LENGTH 3 DECIMALS 0,
        "! ProductExpirationDateType
        product_expiration_date_ty TYPE c LENGTH 1,
        "! StorageBinInstruction
        storage_bin_instruction    TYPE c LENGTH 2,
        "! ShelfLifeExpirationDatePeriod
        shelf_life_expiration_date TYPE c LENGTH 1,
        "! ShelfLifeExprtnDateRndngRule
        shelf_life_exprtn_date_rnd TYPE c LENGTH 1,
        "! TotalShelfLifeStoragePercent
        total_shelf_life_storage_p TYPE p LENGTH 2 DECIMALS 0,
        "! TotalShelfLife
        total_shelf_life           TYPE p LENGTH 3 DECIMALS 0,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_storage_type,
      "! <p class="shorttext synchronized">List of ProductStorage_Type</p>
      tyt_product_storage_type TYPE STANDARD TABLE OF tys_product_storage_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">Product_Type</p>
      BEGIN OF tys_product_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_12,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! ProductType
        product_type_2             TYPE c LENGTH 4,
        "! CreationDate
        creation_date              TYPE datn,
        "! CreationTime
        creation_time              TYPE timn,
        "! CreationDateTime
        creation_date_time         TYPE timestampl,
        "! CreatedByUser
        created_by_user            TYPE c LENGTH 12,
        "! LastChangeDate
        last_change_date           TYPE datn,
        "! LastChangedByUser
        last_changed_by_user       TYPE c LENGTH 12,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! CrossPlantStatus
        cross_plant_status         TYPE c LENGTH 2,
        "! CrossPlantStatusValidityDate
        cross_plant_status_validit TYPE datn,
        "! ProductOldID
        product_old_id             TYPE c LENGTH 40,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! WeightUnit
        weight_unit                TYPE c LENGTH 3,
        "! WeightISOUnit
        weight_isounit             TYPE c LENGTH 3,
        "! ProductGroup
        product_group              TYPE c LENGTH 9,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! ItemCategoryGroup
        item_category_group        TYPE c LENGTH 4,
        "! NetWeight
        net_weight                 TYPE p LENGTH 7 DECIMALS 3,
        "! Division
        division                   TYPE c LENGTH 2,
        "! VolumeUnit
        volume_unit                TYPE c LENGTH 3,
        "! VolumeISOUnit
        volume_isounit             TYPE c LENGTH 3,
        "! ProductVolume
        product_volume             TYPE p LENGTH 7 DECIMALS 3,
        "! AuthorizationGroup
        authorization_group        TYPE c LENGTH 4,
        "! ANPCode
        anpcode                    TYPE c LENGTH 9,
        "! SizeOrDimensionText
        size_or_dimension_text     TYPE c LENGTH 32,
        "! IndustryStandardName
        industry_standard_name     TYPE c LENGTH 18,
        "! ProductStandardID
        product_standard_id        TYPE c LENGTH 18,
        "! InternationalArticleNumberCat
        international_article_numb TYPE c LENGTH 2,
        "! ProductIsConfigurable
        product_is_configurable    TYPE abap_bool,
        "! IsBatchManagementRequired
        is_batch_management_requir TYPE abap_bool,
        "! ExternalProductGroup
        external_product_group     TYPE c LENGTH 18,
        "! CrossPlantConfigurableProduct
        cross_plant_configurable_p TYPE c LENGTH 40,
        "! SerialNoExplicitnessLevel
        serial_no_explicitness_lev TYPE c LENGTH 1,
        "! IsApprovedBatchRecordReqd
        is_approved_batch_record_r TYPE abap_bool,
        "! HandlingIndicator
        handling_indicator         TYPE c LENGTH 4,
        "! WarehouseProductGroup
        warehouse_product_group    TYPE c LENGTH 4,
        "! WarehouseStorageCondition
        warehouse_storage_conditio TYPE c LENGTH 2,
        "! StandardHandlingUnitType
        standard_handling_unit_typ TYPE c LENGTH 4,
        "! SerialNumberProfile
        serial_number_profile      TYPE c LENGTH 4,
        "! IsPilferable
        is_pilferable              TYPE abap_bool,
        "! IsRelevantForHzdsSubstances
        is_relevant_for_hzds_subst TYPE abap_bool,
        "! QuarantinePeriod
        quarantine_period          TYPE p LENGTH 2 DECIMALS 0,
        "! TimeUnitForQuarantinePeriod
        time_unit_for_quarantine_p TYPE c LENGTH 3,
        "! QuarantinePeriodISOUnit
        quarantine_period_isounit  TYPE c LENGTH 3,
        "! QualityInspectionGroup
        quality_inspection_group   TYPE c LENGTH 4,
        "! HandlingUnitType
        handling_unit_type         TYPE c LENGTH 4,
        "! HasVariableTareWeight
        has_variable_tare_weight   TYPE abap_bool,
        "! MaximumPackagingLength
        maximum_packaging_length   TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingWidth
        maximum_packaging_width    TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumPackagingHeight
        maximum_packaging_height   TYPE p LENGTH 8 DECIMALS 3,
        "! MaximumCapacity
        maximum_capacity           TYPE p LENGTH 8 DECIMALS 3,
        "! OvercapacityTolerance
        overcapacity_tolerance     TYPE p LENGTH 2 DECIMALS 1,
        "! UnitForMaxPackagingDimensions
        unit_for_max_packaging_dim TYPE c LENGTH 3,
        "! MaxPackggDimensionISOUnit
        max_packgg_dimension_isoun TYPE c LENGTH 3,
        "! BaseUnitSpecificProductLength
        base_unit_specific_product TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnitSpecificProductWidth
        base_unit_specific_produ_2 TYPE p LENGTH 7 DECIMALS 3,
        "! BaseUnitSpecificProductHeight
        base_unit_specific_produ_3 TYPE p LENGTH 7 DECIMALS 3,
        "! ProductMeasurementUnit
        product_measurement_unit   TYPE c LENGTH 3,
        "! ProductMeasurementISOUnit
        product_measurement_isouni TYPE c LENGTH 3,
        "! ArticleCategory
        article_category           TYPE c LENGTH 2,
        "! IndustrySector
        industry_sector            TYPE c LENGTH 1,
        "! LastChangeDateTime
        last_change_date_time      TYPE timestampl,
        "! LastChangeTime
        last_change_time           TYPE timn,
        "! DangerousGoodsIndProfile
        dangerous_goods_ind_profil TYPE c LENGTH 3,
        "! ProductDocumentChangeNumber
        product_document_change_nu TYPE c LENGTH 6,
        "! ProductDocumentPageCount
        product_document_page_coun TYPE c LENGTH 3,
        "! ProductDocumentPageNumber
        product_document_page_numb TYPE c LENGTH 3,
        "! DocumentIsCreatedByCAD
        document_is_created_by_cad TYPE abap_bool,
        "! ProductionOrInspectionMemoTxt
        production_or_inspection_m TYPE c LENGTH 18,
        "! ProductionMemoPageFormat
        production_memo_page_forma TYPE c LENGTH 4,
        "! ProductIsHighlyViscous
        product_is_highly_viscous  TYPE abap_bool,
        "! TransportIsInBulk
        transport_is_in_bulk       TYPE abap_bool,
        "! ProdEffctyParamValsAreAssigned
        prod_effcty_param_vals_are TYPE abap_bool,
        "! ProdIsEnvironmentallyRelevant
        prod_is_environmentally_re TYPE abap_bool,
        "! LaboratoryOrDesignOffice
        laboratory_or_design_offic TYPE c LENGTH 3,
        "! PackagingProductGroup
        packaging_product_group    TYPE c LENGTH 4,
        "! PackingReferenceProduct
        packing_reference_product  TYPE c LENGTH 40,
        "! BasicProduct
        basic_product              TYPE c LENGTH 48,
        "! ProductDocumentNumber
        product_document_number    TYPE c LENGTH 22,
        "! ProductDocumentVersion
        product_document_version   TYPE c LENGTH 2,
        "! ProductDocumentType
        product_document_type      TYPE c LENGTH 3,
        "! ProductDocumentPageFormat
        product_document_page_form TYPE c LENGTH 4,
        "! ProdChmlCmplncRelevanceCode
        prod_chml_cmplnc_relevance TYPE c LENGTH 1,
        "! DiscountInKindEligibility
        discount_in_kind_eligibili TYPE c LENGTH 1,
        "! ProductManufacturerNumber
        product_manufacturer_numbe TYPE c LENGTH 40,
        "! ManufacturerNumber
        manufacturer_number        TYPE c LENGTH 10,
        "! ManufacturerPartProfile
        manufacturer_part_profile  TYPE c LENGTH 4,
        "! OwnInventoryManagedProduct
        own_inventory_managed_prod TYPE c LENGTH 40,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_type,
      "! <p class="shorttext synchronized">List of Product_Type</p>
      tyt_product_type TYPE STANDARD TABLE OF tys_product_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductUnitOfMeasure_Type</p>
      BEGIN OF tys_product_unit_of_measure_ty,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_5,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> AlternativeUnit
        alternative_unit           TYPE c LENGTH 3,
        "! AlternativeSAPUnit
        alternative_sapunit        TYPE c LENGTH 3,
        "! AlternativeISOUnit
        alternative_isounit        TYPE c LENGTH 3,
        "! QuantityNumerator
        quantity_numerator         TYPE p LENGTH 3 DECIMALS 0,
        "! QuantityDenominator
        quantity_denominator       TYPE p LENGTH 3 DECIMALS 0,
        "! ProductVolume
        product_volume             TYPE p LENGTH 7 DECIMALS 3,
        "! VolumeUnit
        volume_unit                TYPE c LENGTH 3,
        "! VolumeISOUnit
        volume_isounit             TYPE c LENGTH 3,
        "! GrossWeight
        gross_weight               TYPE p LENGTH 7 DECIMALS 3,
        "! WeightUnit
        weight_unit                TYPE c LENGTH 3,
        "! WeightISOUnit
        weight_isounit             TYPE c LENGTH 3,
        "! GlobalTradeItemNumber
        global_trade_item_number   TYPE c LENGTH 18,
        "! GlobalTradeItemNumberCategory
        global_trade_item_number_c TYPE c LENGTH 2,
        "! UnitSpecificProductLength
        unit_specific_product_leng TYPE p LENGTH 7 DECIMALS 3,
        "! UnitSpecificProductWidth
        unit_specific_product_widt TYPE p LENGTH 7 DECIMALS 3,
        "! UnitSpecificProductHeight
        unit_specific_product_heig TYPE p LENGTH 7 DECIMALS 3,
        "! ProductMeasurementUnit
        product_measurement_unit   TYPE c LENGTH 3,
        "! ProductMeasurementISOUnit
        product_measurement_isouni TYPE c LENGTH 3,
        "! LowerLevelPackagingUnit
        lower_level_packaging_unit TYPE c LENGTH 3,
        "! LowerLevelPackagingISOUnit
        lower_level_packaging_isou TYPE c LENGTH 3,
        "! MaximumStackingFactor
        maximum_stacking_factor    TYPE int1,
        "! CapacityUsage
        capacity_usage             TYPE p LENGTH 8 DECIMALS 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_unit_of_measure_ty,
      "! <p class="shorttext synchronized">List of ProductUnitOfMeasure_Type</p>
      tyt_product_unit_of_measure_ty TYPE STANDARD TABLE OF tys_product_unit_of_measure_ty WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductUnitOfMeasureEAN_Type</p>
      BEGIN OF tys_product_unit_of_measure__2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> AlternativeUnit
        alternative_unit           TYPE c LENGTH 3,
        "! <em>Key property</em> ConsecutiveNumber
        consecutive_number         TYPE c LENGTH 5,
        "! AlternativeISOUnit
        alternative_isounit        TYPE c LENGTH 3,
        "! ProductStandardID
        product_standard_id        TYPE c LENGTH 18,
        "! InternationalArticleNumberCat
        international_article_numb TYPE c LENGTH 2,
        "! IsMainGlobalTradeItemNumber
        is_main_global_trade_item  TYPE abap_bool,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_unit_of_measure__2,
      "! <p class="shorttext synchronized">List of ProductUnitOfMeasureEAN_Type</p>
      tyt_product_unit_of_measure__2 TYPE STANDARD TABLE OF tys_product_unit_of_measure__2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductValuationAccounting_Type</p>
      BEGIN OF tys_product_valuation_accoun_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_10,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! CommercialPrice1InCoCodeCrcy
        commercial_price_1_in_co_c TYPE decfloat16,
        "! CommercialPrice2InCoCodeCrcy
        commercial_price_2_in_co_c TYPE decfloat16,
        "! CommercialPrice3InCoCodeCrcy
        commercial_price_3_in_co_c TYPE decfloat16,
        "! DevaluationYearCount
        devaluation_year_count     TYPE c LENGTH 2,
        "! FuturePrice
        future_price               TYPE decfloat16,
        "! FuturePriceValidityStartDate
        future_price_validity_star TYPE datn,
        "! LIFOValuationPoolNumber
        lifovaluation_pool_number  TYPE c LENGTH 4,
        "! TaxPricel1InCoCodeCrcy
        tax_pricel_1_in_co_code_cr TYPE decfloat16,
        "! TaxPrice2InCoCodeCrcy
        tax_price_2_in_co_code_crc TYPE decfloat16,
        "! TaxPrice3InCoCodeCrcy
        tax_price_3_in_co_code_crc TYPE decfloat16,
        "! TaxBasedPricesPriceUnitQty
        tax_based_prices_price_uni TYPE p LENGTH 3 DECIMALS 0,
        "! IsLIFOAndFIFORelevant
        is_lifoand_fiforelevant    TYPE abap_bool,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_valuation_accoun_2,
      "! <p class="shorttext synchronized">List of ProductValuationAccounting_Type</p>
      tyt_product_valuation_accoun_2 TYPE STANDARD TABLE OF tys_product_valuation_accoun_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductValuationCosting_Type</p>
      BEGIN OF tys_product_valuation_costin_2,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_20,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! ProductIsCostedWithQtyStruc
        product_is_costed_with_qty TYPE abap_bool,
        "! IsMaterialRelatedOrigin
        is_material_related_origin TYPE abap_bool,
        "! CostOriginGroup
        cost_origin_group          TYPE c LENGTH 4,
        "! CostingOverheadGroup
        costing_overhead_group     TYPE c LENGTH 10,
        "! PlannedPrice1InCoCodeCrcy
        planned_price_1_in_co_code TYPE decfloat16,
        "! PlannedPrice2InCoCodeCrcy
        planned_price_2_in_co_code TYPE decfloat16,
        "! PlannedPrice3InCoCodeCrcy
        planned_price_3_in_co_code TYPE decfloat16,
        "! FuturePlndPrice1ValdtyDate
        future_plnd_price_1_valdty TYPE datn,
        "! FuturePlndPrice2ValdtyDate
        future_plnd_price_2_valdty TYPE datn,
        "! FuturePlndPrice3ValdtyDate
        future_plnd_price_3_valdty TYPE datn,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_valuation_costin_2,
      "! <p class="shorttext synchronized">List of ProductValuationCosting_Type</p>
      tyt_product_valuation_costin_2 TYPE STANDARD TABLE OF tys_product_valuation_costin_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductValuationLedgerAccount_Type</p>
      BEGIN OF tys_product_valuation_ledger_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! <em>Key property</em> CurrencyRole
        currency_role              TYPE c LENGTH 2,
        "! <em>Key property</em> Ledger
        ledger                     TYPE c LENGTH 2,
        "! ProductPriceControl
        product_price_control      TYPE c LENGTH 1,
        "! ProductPriceUnitQuantity
        product_price_unit_quantit TYPE p LENGTH 3 DECIMALS 0,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! MovingAveragePrice
        moving_average_price       TYPE decfloat16,
        "! StandardPrice
        standard_price             TYPE decfloat16,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_valuation_ledger_2,
      "! <p class="shorttext synchronized">List of ProductValuationLedgerAccount_Type</p>
      tyt_product_valuation_ledger_2 TYPE STANDARD TABLE OF tys_product_valuation_ledger_2 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductValuationLedgerPrices_Type</p>
      BEGIN OF tys_product_valuation_ledger_3,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_11,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! <em>Key property</em> CurrencyRole
        currency_role              TYPE c LENGTH 2,
        "! <em>Key property</em> Ledger
        ledger                     TYPE c LENGTH 2,
        "! ProductPriceUnitQuantity
        product_price_unit_quantit TYPE p LENGTH 3 DECIMALS 0,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! FuturePrice
        future_price               TYPE decfloat16,
        "! FuturePriceValidityStartDate
        future_price_validity_star TYPE datn,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_valuation_ledger_3,
      "! <p class="shorttext synchronized">List of ProductValuationLedgerPrices_Type</p>
      tyt_product_valuation_ledger_3 TYPE STANDARD TABLE OF tys_product_valuation_ledger_3 WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProductValuation_Type</p>
      BEGIN OF tys_product_valuation_type,
        "! <em>Value Control Structure</em>
        value_controls             TYPE tys_value_controls_13,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> ValuationArea
        valuation_area             TYPE c LENGTH 4,
        "! <em>Key property</em> ValuationType
        valuation_type             TYPE c LENGTH 10,
        "! ValuationClass
        valuation_class            TYPE c LENGTH 4,
        "! PriceDeterminationControl
        price_determination_contro TYPE c LENGTH 1,
        "! StandardPrice
        standard_price             TYPE decfloat16,
        "! ProductPriceUnitQuantity
        product_price_unit_quantit TYPE p LENGTH 3 DECIMALS 0,
        "! InventoryValuationProcedure
        inventory_valuation_proced TYPE c LENGTH 1,
        "! MovingAveragePrice
        moving_average_price       TYPE decfloat16,
        "! ValuationCategory
        valuation_category         TYPE c LENGTH 1,
        "! ProductUsageType
        product_usage_type         TYPE c LENGTH 1,
        "! ProductOriginType
        product_origin_type        TYPE c LENGTH 1,
        "! IsProducedInhouse
        is_produced_inhouse        TYPE abap_bool,
        "! IsMarkedForDeletion
        is_marked_for_deletion     TYPE abap_bool,
        "! ValuationClassSalesOrderStock
        valuation_class_sales_orde TYPE c LENGTH 4,
        "! ProjectStockValuationClass
        project_stock_valuation_cl TYPE c LENGTH 4,
        "! Currency
        currency                   TYPE c LENGTH 3,
        "! BaseUnit
        base_unit                  TYPE c LENGTH 3,
        "! BaseISOUnit
        base_isounit               TYPE c LENGTH 3,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_product_valuation_type,
      "! <p class="shorttext synchronized">List of ProductValuation_Type</p>
      tyt_product_valuation_type TYPE STANDARD TABLE OF tys_product_valuation_type WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProdPlntInternationalTrade_Type</p>
      BEGIN OF tys_prod_plnt_international_tr,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Plant
        plant                      TYPE c LENGTH 4,
        "! CountryOfOrigin
        country_of_origin          TYPE c LENGTH 3,
        "! RegionOfOrigin
        region_of_origin           TYPE c LENGTH 3,
        "! ConsumptionTaxCtrlCode
        consumption_tax_ctrl_code  TYPE c LENGTH 16,
        "! ExportAndImportProductGroup
        export_and_import_product  TYPE c LENGTH 4,
        "! ProductCASNumber
        product_casnumber          TYPE c LENGTH 15,
        "! ProdIntlTradeClassification
        prod_intl_trade_classifica TYPE c LENGTH 9,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_prod_plnt_international_tr,
      "! <p class="shorttext synchronized">List of ProdPlntInternationalTrade_Type</p>
      tyt_prod_plnt_international_tr TYPE STANDARD TABLE OF tys_prod_plnt_international_tr WITH DEFAULT KEY.

    TYPES:
      "! <p class="shorttext synchronized">ProdSalesDeliverySalesTax_Type</p>
      BEGIN OF tys_prod_sales_delivery_sale_2,
        "! <em>Key property</em> Product
        product                    TYPE c LENGTH 40,
        "! <em>Key property</em> Country
        country                    TYPE c LENGTH 3,
        "! <em>Key property</em> ProductSalesTaxCategory
        product_sales_tax_category TYPE c LENGTH 4,
        "! <em>Key property</em> ProductSalesOrg
        product_sales_org          TYPE c LENGTH 4,
        "! <em>Key property</em> ProductDistributionChnl
        product_distribution_chnl  TYPE c LENGTH 2,
        "! ProductTaxClassification
        product_tax_classification TYPE c LENGTH 1,
        "! SAP__Messages
        sap_messages               TYPE tyt_sap_message,
        "! odata.etag
        etag                       TYPE string,
      END OF tys_prod_sales_delivery_sale_2,
      "! <p class="shorttext synchronized">List of ProdSalesDeliverySalesTax_Type</p>
      tyt_prod_sales_delivery_sale_2 TYPE STANDARD TABLE OF tys_prod_sales_delivery_sale_2 WITH DEFAULT KEY.


    CONSTANTS:
      "! <p class="shorttext synchronized">Internal Names of the entity sets</p>
      BEGIN OF gcs_entity_set,
        "! Product
        "! <br/> Collection of type 'Product_Type'
        product                    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT',
        "! ProductBasicText
        "! <br/> Collection of type 'ProductBasicTexts_Type'
        product_basic_text         TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_BASIC_TEXT',
        "! ProductChangeMaster
        "! <br/> Collection of type 'ProductChangeMaster_Type'
        product_change_master      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_CHANGE_MASTER',
        "! ProductDescription
        "! <br/> Collection of type 'ProductDescription_Type'
        product_description        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_DESCRIPTION',
        "! ProductEWMStorageType
        "! <br/> Collection of type 'ProductEWMStorageType_Type'
        product_ewmstorage_type    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_EWMSTORAGE_TYPE',
        "! ProductEWMWarehouse
        "! <br/> Collection of type 'ProductEWMWarehouse_Type'
        product_ewmwarehouse       TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_EWMWAREHOUSE',
        "! ProductInspectionText
        "! <br/> Collection of type 'ProductInspectionTexts_Type'
        product_inspection_text    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_INSPECTION_TEXT',
        "! ProductInternalComment
        "! <br/> Collection of type 'ProductInternalNoteTexts_Type'
        product_internal_comment   TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_INTERNAL_COMMENT',
        "! ProductPlant
        "! <br/> Collection of type 'ProductPlant_Type'
        product_plant              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT',
        "! ProductPlantCosting
        "! <br/> Collection of type 'ProductPlantCosting_Type'
        product_plant_costing      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_COSTING',
        "! ProductPlantForecast
        "! <br/> Collection of type 'ProductPlantForecast_Type'
        product_plant_forecast     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_FORECAST',
        "! ProductPlantInspTypeSetting
        "! <br/> Collection of type 'ProductPlantInspTypSetting_Type'
        product_plant_insp_type_se TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_INSP_TYPE_SE',
        "! ProductPlantInternationalTrade
        "! <br/> Collection of type 'ProdPlntInternationalTrade_Type'
        product_plant_internationa TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_INTERNATIONA',
        "! ProductPlantMRP
        "! <br/> Collection of type 'ProductPlantMRP_Type'
        product_plant_mrp          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_MRP',
        "! ProductPlantMRPText
        "! <br/> Collection of type 'PlantMRPTexts_Type'
        product_plant_mrptext      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_MRPTEXT',
        "! ProductPlantProcurement
        "! <br/> Collection of type 'ProductPlantProcurement_Type'
        product_plant_procurement  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_PROCUREMENT',
        "! ProductPlantPurchaseTax
        "! <br/> Collection of type 'ProductPlantPurchaseTax_Type'
        product_plant_purchase_tax TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_PURCHASE_TAX',
        "! ProductPlantQualityManagement
        "! <br/> Collection of type 'ProductPlantQualityManagement_Type'
        product_plant_quality_mana TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_QUALITY_MANA',
        "! ProductPlantSales
        "! <br/> Collection of type 'ProductPlantSales_Type'
        product_plant_sales        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_SALES',
        "! ProductPlantStorage
        "! <br/> Collection of type 'ProductPlantStorage_Type'
        product_plant_storage      TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_STORAGE',
        "! ProductPlantStorageLocation
        "! <br/> Collection of type 'ProductPlantStorageLocation_Type'
        product_plant_storage_loca TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_STORAGE_LOCA',
        "! ProductPlantSupplyPlanning
        "! <br/> Collection of type 'ProductPlantSupplyPlanning_Type'
        product_plant_supply_plann TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_SUPPLY_PLANN',
        "! ProductPlantWorkScheduling
        "! <br/> Collection of type 'ProductPlantWorkScheduling_Type'
        product_plant_work_schedul TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PLANT_WORK_SCHEDUL',
        "! ProductProcurement
        "! <br/> Collection of type 'ProductProcurement_Type'
        product_procurement        TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PROCUREMENT',
        "! ProductPurchaseOrderText
        "! <br/> Collection of type 'ProductPurchaseOrderText'
        product_purchase_order_tex TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_PURCHASE_ORDER_TEX',
        "! ProductQualityManagement
        "! <br/> Collection of type 'ProductQualityManagement_Type'
        product_quality_management TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_QUALITY_MANAGEMENT',
        "! ProductSales
        "! <br/> Collection of type 'ProductSales_Type'
        product_sales              TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_SALES',
        "! ProductSalesDelivery
        "! <br/> Collection of type 'ProductSalesDelivery_Type'
        product_sales_delivery     TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_SALES_DELIVERY',
        "! ProductSalesDeliveryText
        "! <br/> Collection of type 'ProductSalesDeliveryTexts_Type'
        product_sales_delivery_tex TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_SALES_DELIVERY_TEX',
        "! ProductStorage
        "! <br/> Collection of type 'ProductStorage_Type'
        product_storage            TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_STORAGE',
        "! ProductUnitOfMeasure
        "! <br/> Collection of type 'ProductUnitOfMeasure_Type'
        product_unit_of_measure    TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_UNIT_OF_MEASURE',
        "! ProductUnitOfMeasureEAN
        "! <br/> Collection of type 'ProductUnitOfMeasureEAN_Type'
        product_unit_of_measure_ea TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_UNIT_OF_MEASURE_EA',
        "! ProductValuation
        "! <br/> Collection of type 'ProductValuation_Type'
        product_valuation          TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_VALUATION',
        "! ProductValuationAccounting
        "! <br/> Collection of type 'ProductValuationAccounting_Type'
        product_valuation_accounti TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_VALUATION_ACCOUNTI',
        "! ProductValuationCosting
        "! <br/> Collection of type 'ProductValuationCosting_Type'
        product_valuation_costing  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_VALUATION_COSTING',
        "! ProductValuationLedgerAccount
        "! <br/> Collection of type 'ProductValuationLedgerAccount_Type'
        product_valuation_ledger_a TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_VALUATION_LEDGER_A',
        "! ProductValuationLedgerPrices
        "! <br/> Collection of type 'ProductValuationLedgerPrices_Type'
        product_valuation_ledger_p TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PRODUCT_VALUATION_LEDGER_P',
        "! ProdSalesDeliverySalesTax
        "! <br/> Collection of type 'ProdSalesDeliverySalesTax_Type'
        prod_sales_delivery_sales  TYPE /iwbep/if_cp_runtime_types=>ty_entity_set_name VALUE 'PROD_SALES_DELIVERY_SALES',
      END OF gcs_entity_set .

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for complex types</p>
      BEGIN OF gcs_complex_type,
        "! <p class="shorttext synchronized">Internal names for SAP__Message</p>
        "! See also structure type {@link ..tys_sap_message}
        BEGIN OF sap_message,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! Dummy field - Structure must not be empty
            dummy TYPE int1 VALUE 0,
          END OF navigation,
        END OF sap_message,
      END OF gcs_complex_type.

    CONSTANTS:
      "! <p class="shorttext synchronized">Internal names for entity types</p>
      BEGIN OF gcs_entity_type,
        "! <p class="shorttext synchronized">Internal names for PlantMRPTexts_Type</p>
        "! See also structure type {@link ..tys_plant_mrptexts_type}
        BEGIN OF plant_mrptexts_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF plant_mrptexts_type,
        "! <p class="shorttext synchronized">Internal names for ProductBasicTexts_Type</p>
        "! See also structure type {@link ..tys_product_basic_texts_type}
        BEGIN OF product_basic_texts_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_basic_texts_type,
        "! <p class="shorttext synchronized">Internal names for ProductChangeMaster_Type</p>
        "! See also structure type {@link ..tys_product_change_master_type}
        BEGIN OF product_change_master_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_change_master_type,
        "! <p class="shorttext synchronized">Internal names for ProductDescription_Type</p>
        "! See also structure type {@link ..tys_product_description_type}
        BEGIN OF product_description_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_description_type,
        "! <p class="shorttext synchronized">Internal names for ProductEWMStorageType_Type</p>
        "! See also structure type {@link ..tys_product_ewmstorage_type_ty}
        BEGIN OF product_ewmstorage_type_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductEWMWarehouse
            product_ewmwarehouse TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_EWMWAREHOUSE',
          END OF navigation,
        END OF product_ewmstorage_type_ty,
        "! <p class="shorttext synchronized">Internal names for ProductEWMWarehouse_Type</p>
        "! See also structure type {@link ..tys_product_ewmwarehouse_type}
        BEGIN OF product_ewmwarehouse_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductEWMStorageType
            product_ewmstorage_type TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_EWMSTORAGE_TYPE',
          END OF navigation,
        END OF product_ewmwarehouse_type,
        "! <p class="shorttext synchronized">Internal names for ProductInspectionTexts_Type</p>
        "! See also structure type {@link ..tys_product_inspection_texts_t}
        BEGIN OF product_inspection_texts_t,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_inspection_texts_t,
        "! <p class="shorttext synchronized">Internal names for ProductInternalNoteTexts_Type</p>
        "! See also structure type {@link ..tys_product_internal_note_text}
        BEGIN OF product_internal_note_text,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_internal_note_text,
        "! <p class="shorttext synchronized">Internal names for ProductPlantCosting_Type</p>
        "! See also structure type {@link ..tys_product_plant_costing_type}
        BEGIN OF product_plant_costing_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_costing_type,
        "! <p class="shorttext synchronized">Internal names for ProductPlantForecast_Type</p>
        "! See also structure type {@link ..tys_product_plant_forecast_typ}
        BEGIN OF product_plant_forecast_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_forecast_typ,
        "! <p class="shorttext synchronized">Internal names for ProductPlantInspTypSetting_Type</p>
        "! See also structure type {@link ..tys_product_plant_insp_typ_set}
        BEGIN OF product_plant_insp_typ_set,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_insp_typ_set,
        "! <p class="shorttext synchronized">Internal names for ProductPlantMRP_Type</p>
        "! See also structure type {@link ..tys_product_plant_mrp_type}
        BEGIN OF product_plant_mrp_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_mrp_type,
        "! <p class="shorttext synchronized">Internal names for ProductPlantProcurement_Type</p>
        "! See also structure type {@link ..tys_product_plant_procuremen_2}
        BEGIN OF product_plant_procuremen_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_procuremen_2,
        "! <p class="shorttext synchronized">Internal names for ProductPlantPurchaseTax_Type</p>
        "! See also structure type {@link ..tys_product_plant_purchase_t_2}
        BEGIN OF product_plant_purchase_t_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_purchase_t_2,
        "! <p class="shorttext synchronized">Internal names for ProductPlantQualityManagement_Type</p>
        "! See also structure type {@link ..tys_product_plant_quality_ma_2}
        BEGIN OF product_plant_quality_ma_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_quality_ma_2,
        "! <p class="shorttext synchronized">Internal names for ProductPlantSales_Type</p>
        "! See also structure type {@link ..tys_product_plant_sales_type}
        BEGIN OF product_plant_sales_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_sales_type,
        "! <p class="shorttext synchronized">Internal names for ProductPlantStorageLocation_Type</p>
        "! See also structure type {@link ..tys_product_plant_storage_lo_2}
        BEGIN OF product_plant_storage_lo_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_storage_lo_2,
        "! <p class="shorttext synchronized">Internal names for ProductPlantStorage_Type</p>
        "! See also structure type {@link ..tys_product_plant_storage_type}
        BEGIN OF product_plant_storage_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_storage_type,
        "! <p class="shorttext synchronized">Internal names for ProductPlantSupplyPlanning_Type</p>
        "! See also structure type {@link ..tys_product_plant_supply_pla_2}
        BEGIN OF product_plant_supply_pla_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_supply_pla_2,
        "! <p class="shorttext synchronized">Internal names for ProductPlant_Type</p>
        "! See also structure type {@link ..tys_product_plant_type}
        BEGIN OF product_plant_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlantCosting
            product_plant_costing      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_COSTING',
            "! _ProductPlantForecast
            product_plant_forecast     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_FORECAST',
            "! _ProductPlantInspTypeSetting
            product_plant_insp_type_se TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_INSP_TYPE_SE',
            "! _ProductPlantMRP
            product_plant_mrp          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_MRP',
            "! _ProductPlantProcurement
            product_plant_procurement  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_PROCUREMENT',
            "! _ProductPlantPurchaseTax
            product_plant_purchase_tax TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_PURCHASE_TAX',
            "! _ProductPlantQualityManagement
            product_plant_quality_mana TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_QUALITY_MANA',
            "! _ProductPlantSales
            product_plant_sales        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_SALES',
            "! _ProductPlantStorage
            product_plant_storage      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_STORAGE',
            "! _ProductPlantStorageLocation
            product_plant_storage_loca TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_STORAGE_LOCA',
            "! _ProductPlantSupplyPlanning
            product_plant_supply_plann TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_SUPPLY_PLANN',
            "! _ProductPlantWorkScheduling
            product_plant_work_schedul TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT_WORK_SCHEDUL',
            "! _ProdPlantInternationalTrade
            prod_plant_international_t TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PROD_PLANT_INTERNATIONAL_T',
            "! _ProdPlntMRPText
            prod_plnt_mrptext          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PROD_PLNT_MRPTEXT',
          END OF navigation,
        END OF product_plant_type,
        "! <p class="shorttext synchronized">Internal names for ProductPlantWorkScheduling_Type</p>
        "! See also structure type {@link ..tys_product_plant_work_sched_2}
        BEGIN OF product_plant_work_sched_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF product_plant_work_sched_2,
        "! <p class="shorttext synchronized">Internal names for ProductProcurement_Type</p>
        "! See also structure type {@link ..tys_product_procurement_type}
        BEGIN OF product_procurement_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_procurement_type,
        "! <p class="shorttext synchronized">Internal names for ProductPurchaseOrderText</p>
        "! See also structure type {@link ..tys_product_purchase_order_t_2}
        BEGIN OF product_purchase_order_t_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_purchase_order_t_2,
        "! <p class="shorttext synchronized">Internal names for ProductQualityManagement_Type</p>
        "! See also structure type {@link ..tys_product_quality_manageme_2}
        BEGIN OF product_quality_manageme_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_quality_manageme_2,
        "! <p class="shorttext synchronized">Internal names for ProductSalesDelivery_Type</p>
        "! See also structure type {@link ..tys_product_sales_delivery_typ}
        BEGIN OF product_sales_delivery_typ,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductSalesDeliveryText
            product_sales_delivery_tex TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_SALES_DELIVERY_TEX',
            "! _ProdSalesDeliverySalesTax
            prod_sales_delivery_sales  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PROD_SALES_DELIVERY_SALES',
          END OF navigation,
        END OF product_sales_delivery_typ,
        "! <p class="shorttext synchronized">Internal names for ProductSalesDeliveryTexts_Type</p>
        "! See also structure type {@link ..tys_product_sales_delivery_t_2}
        BEGIN OF product_sales_delivery_t_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductSalesDelivery
            product_sales_delivery TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_SALES_DELIVERY',
          END OF navigation,
        END OF product_sales_delivery_t_2,
        "! <p class="shorttext synchronized">Internal names for ProductSales_Type</p>
        "! See also structure type {@link ..tys_product_sales_type}
        BEGIN OF product_sales_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_sales_type,
        "! <p class="shorttext synchronized">Internal names for ProductStorage_Type</p>
        "! See also structure type {@link ..tys_product_storage_type}
        BEGIN OF product_storage_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2 TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
          END OF navigation,
        END OF product_storage_type,
        "! <p class="shorttext synchronized">Internal names for Product_Type</p>
        "! See also structure type {@link ..tys_product_type}
        BEGIN OF product_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _ProductBasicText
            product_basic_text         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_BASIC_TEXT',
            "! _ProductChangeMaster
            product_change_master      TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_CHANGE_MASTER',
            "! _ProductDescription
            product_description        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_DESCRIPTION',
            "! _ProductEWMWarehouse
            product_ewmwarehouse       TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_EWMWAREHOUSE',
            "! _ProductInspectionText
            product_inspection_text    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_INSPECTION_TEXT',
            "! _ProductInternalComment
            product_internal_comment   TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_INTERNAL_COMMENT',
            "! _ProductPlant
            product_plant              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
            "! _ProductProcurement
            product_procurement        TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PROCUREMENT',
            "! _ProductPurchaseOrderText
            product_purchase_order_tex TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PURCHASE_ORDER_TEX',
            "! _ProductQualityManagement
            product_quality_management TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_QUALITY_MANAGEMENT',
            "! _ProductSales
            product_sales              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_SALES',
            "! _ProductSalesDelivery
            product_sales_delivery     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_SALES_DELIVERY',
            "! _ProductStorage
            product_storage            TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_STORAGE',
            "! _ProductUnitOfMeasure
            product_unit_of_measure    TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_UNIT_OF_MEASURE',
            "! _ProductValuation
            product_valuation          TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION',
          END OF navigation,
        END OF product_type,
        "! <p class="shorttext synchronized">Internal names for ProductUnitOfMeasure_Type</p>
        "! See also structure type {@link ..tys_product_unit_of_measure_ty}
        BEGIN OF product_unit_of_measure_ty,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductUnitOfMeasureEAN
            product_unit_of_measure_ea TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_UNIT_OF_MEASURE_EA',
          END OF navigation,
        END OF product_unit_of_measure_ty,
        "! <p class="shorttext synchronized">Internal names for ProductUnitOfMeasureEAN_Type</p>
        "! See also structure type {@link ..tys_product_unit_of_measure__2}
        BEGIN OF product_unit_of_measure__2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2               TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductUnitOfMeasure
            product_unit_of_measure TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_UNIT_OF_MEASURE',
          END OF navigation,
        END OF product_unit_of_measure__2,
        "! <p class="shorttext synchronized">Internal names for ProductValuationAccounting_Type</p>
        "! See also structure type {@link ..tys_product_valuation_accoun_2}
        BEGIN OF product_valuation_accoun_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductValuation
            product_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION',
          END OF navigation,
        END OF product_valuation_accoun_2,
        "! <p class="shorttext synchronized">Internal names for ProductValuationCosting_Type</p>
        "! See also structure type {@link ..tys_product_valuation_costin_2}
        BEGIN OF product_valuation_costin_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductValuation
            product_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION',
          END OF navigation,
        END OF product_valuation_costin_2,
        "! <p class="shorttext synchronized">Internal names for ProductValuationLedgerAccount_Type</p>
        "! See also structure type {@link ..tys_product_valuation_ledger_2}
        BEGIN OF product_valuation_ledger_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductValuation
            product_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION',
          END OF navigation,
        END OF product_valuation_ledger_2,
        "! <p class="shorttext synchronized">Internal names for ProductValuationLedgerPrices_Type</p>
        "! See also structure type {@link ..tys_product_valuation_ledger_3}
        BEGIN OF product_valuation_ledger_3,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2         TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductValuation
            product_valuation TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION',
          END OF navigation,
        END OF product_valuation_ledger_3,
        "! <p class="shorttext synchronized">Internal names for ProductValuation_Type</p>
        "! See also structure type {@link ..tys_product_valuation_type}
        BEGIN OF product_valuation_type,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2                  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductValuationAccounting
            product_valuation_accounti TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION_ACCOUNTI',
            "! _ProductValuationCosting
            product_valuation_costing  TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION_COSTING',
            "! _ProductValuationLedgerAccount
            product_valuation_ledger_a TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION_LEDGER_A',
            "! _ProductValuationLedgerPrices
            product_valuation_ledger_p TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_VALUATION_LEDGER_P',
          END OF navigation,
        END OF product_valuation_type,
        "! <p class="shorttext synchronized">Internal names for ProdPlntInternationalTrade_Type</p>
        "! See also structure type {@link ..tys_prod_plnt_international_tr}
        BEGIN OF prod_plnt_international_tr,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2     TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductPlant
            product_plant TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_PLANT',
          END OF navigation,
        END OF prod_plnt_international_tr,
        "! <p class="shorttext synchronized">Internal names for ProdSalesDeliverySalesTax_Type</p>
        "! See also structure type {@link ..tys_prod_sales_delivery_sale_2}
        BEGIN OF prod_sales_delivery_sale_2,
          "! <p class="shorttext synchronized">Navigation properties</p>
          BEGIN OF navigation,
            "! _Product
            product_2              TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_2',
            "! _ProductSalesDelivery
            product_sales_delivery TYPE /iwbep/if_v4_pm_types=>ty_internal_name VALUE 'PRODUCT_SALES_DELIVERY',
          END OF navigation,
        END OF prod_sales_delivery_sale_2,
      END OF gcs_entity_type.


    METHODS /iwbep/if_v4_mp_basic_pm~define REDEFINITION.


  PRIVATE SECTION.

    "! <p class="shorttext synchronized">Model</p>
    DATA mo_model TYPE REF TO /iwbep/if_v4_pm_model.


    "! <p class="shorttext synchronized">Define SAP__Message</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_sap_message RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define PlantMRPTexts_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_plant_mrptexts_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductBasicTexts_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_basic_texts_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductChangeMaster_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_change_master_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductDescription_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_description_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductEWMStorageType_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_ewmstorage_type_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductEWMWarehouse_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_ewmwarehouse_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductInspectionTexts_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_inspection_texts_t RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductInternalNoteTexts_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_internal_note_text RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantCosting_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_costing_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantForecast_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_forecast_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantInspTypSetting_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_insp_typ_set RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantMRP_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_mrp_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantProcurement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_procuremen_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantPurchaseTax_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_purchase_t_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantQualityManagement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_quality_ma_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantSales_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_sales_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantStorageLocation_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_storage_lo_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantStorage_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_storage_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantSupplyPlanning_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_supply_pla_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlant_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPlantWorkScheduling_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_plant_work_sched_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductProcurement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_procurement_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductPurchaseOrderText</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_purchase_order_t_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductQualityManagement_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_quality_manageme_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductSalesDelivery_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_sales_delivery_typ RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductSalesDeliveryTexts_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_sales_delivery_t_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductSales_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_sales_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductStorage_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_storage_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define Product_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductUnitOfMeasure_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_unit_of_measure_ty RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductUnitOfMeasureEAN_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_unit_of_measure__2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductValuationAccounting_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_valuation_accoun_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductValuationCosting_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_valuation_costin_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductValuationLedgerAccount_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_valuation_ledger_2 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductValuationLedgerPrices_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_valuation_ledger_3 RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProductValuation_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_product_valuation_type RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProdPlntInternationalTrade_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_prod_plnt_international_tr RAISING /iwbep/cx_gateway.

    "! <p class="shorttext synchronized">Define ProdSalesDeliverySalesTax_Type</p>
    "! @raising /iwbep/cx_gateway | <p class="shorttext synchronized">Gateway Exception</p>
    METHODS def_prod_sales_delivery_sale_2 RAISING /iwbep/cx_gateway.

ENDCLASS.


CLASS zsc_ce_product_01 IMPLEMENTATION.

  METHOD /iwbep/if_v4_mp_basic_pm~define.

    mo_model = io_model.
    mo_model->set_schema_namespace( 'com.sap.gateway.srvd_a2x.api_product_2.v0001' ) ##NO_TEXT.

    def_sap_message( ).
    def_plant_mrptexts_type( ).
    def_product_basic_texts_type( ).
    def_product_change_master_type( ).
    def_product_description_type( ).
    def_product_ewmstorage_type_ty( ).
    def_product_ewmwarehouse_type( ).
    def_product_inspection_texts_t( ).
    def_product_internal_note_text( ).
    def_product_plant_costing_type( ).
    def_product_plant_forecast_typ( ).
    def_product_plant_insp_typ_set( ).
    def_product_plant_mrp_type( ).
    def_product_plant_procuremen_2( ).
    def_product_plant_purchase_t_2( ).
    def_product_plant_quality_ma_2( ).
    def_product_plant_sales_type( ).
    def_product_plant_storage_lo_2( ).
    def_product_plant_storage_type( ).
    def_product_plant_supply_pla_2( ).
    def_product_plant_type( ).
    def_product_plant_work_sched_2( ).
    def_product_procurement_type( ).
    def_product_purchase_order_t_2( ).
    def_product_quality_manageme_2( ).
    def_product_sales_delivery_typ( ).
    def_product_sales_delivery_t_2( ).
    def_product_sales_type( ).
    def_product_storage_type( ).
    def_product_type( ).
    def_product_unit_of_measure_ty( ).
    def_product_unit_of_measure__2( ).
    def_product_valuation_accoun_2( ).
    def_product_valuation_costin_2( ).
    def_product_valuation_ledger_2( ).
    def_product_valuation_ledger_3( ).
    def_product_valuation_type( ).
    def_prod_plnt_international_tr( ).
    def_prod_sales_delivery_sale_2( ).

  ENDMETHOD.


  METHOD def_sap_message.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_complex_type        TYPE REF TO /iwbep/if_v4_pm_cplx_type,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_complex_type = mo_model->create_complex_type_by_struct(
                                    iv_complex_type_name      = 'SAP_MESSAGE'
                                    is_structure              = VALUE tys_sap_message( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_complex_type->set_edm_name( 'SAP__Message' ) ##NO_TEXT.
    lo_complex_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_primitive_property = lo_complex_type->get_primitive_property( 'CODE' ).
    lo_primitive_property->set_edm_name( 'code' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'MESSAGE' ).
    lo_primitive_property->set_edm_name( 'message' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TARGET' ).
    lo_primitive_property->set_edm_name( 'target' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'ADDITIONAL_TARGETS' ).
    lo_primitive_property->set_edm_name( 'additionalTargets' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_collection( ).

    lo_primitive_property = lo_complex_type->get_primitive_property( 'TRANSITION' ).
    lo_primitive_property->set_edm_name( 'transition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'NUMERIC_SEVERITY' ).
    lo_primitive_property->set_edm_name( 'numericSeverity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

    lo_primitive_property = lo_complex_type->get_primitive_property( 'LONGTEXT_URL' ).
    lo_primitive_property->set_edm_name( 'longtextUrl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_plant_mrptexts_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PLANT_MRPTEXTS_TYPE'
                                    is_structure              = VALUE tys_plant_mrptexts_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'PlantMRPTexts_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_MRPTEXT' ).
    lo_entity_set->set_edm_name( 'ProductPlantMRPText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TextObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PLANT_MRPTEXT' ).
    lo_primitive_property->set_edm_name( 'ProductPlantMRPText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_CREATION_DAT' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtCreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_LAST_CHANGED' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_basic_texts_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_BASIC_TEXTS_TYPE'
                                    is_structure              = VALUE tys_product_basic_texts_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductBasicTexts_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_BASIC_TEXT' ).
    lo_entity_set->set_edm_name( 'ProductBasicText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TextObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProductLongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_CREATION_DAT' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtCreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_LAST_CHANGED' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_change_master_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_CHANGE_MASTER_TYPE'
                                    is_structure              = VALUE tys_product_change_master_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductChangeMaster_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_CHANGE_MASTER' ).
    lo_entity_set->set_edm_name( 'ProductChangeMaster' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CHANGE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REVISION_LEVEL' ).
    lo_primitive_property->set_edm_name( 'RevisionLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_description_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_DESCRIPTION_TYPE'
                                    is_structure              = VALUE tys_product_description_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductDescription_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_DESCRIPTION' ).
    lo_entity_set->set_edm_name( 'ProductDescription' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DESCRIPTION' ).
    lo_primitive_property->set_edm_name( 'ProductDescription' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_ewmstorage_type_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_EWMSTORAGE_TYPE_TY'
                                    is_structure              = VALUE tys_product_ewmstorage_type_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductEWMStorageType_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_EWMSTORAGE_TYPE' ).
    lo_entity_set->set_edm_name( 'ProductEWMStorageType' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMWAREHOUSE' ).
    lo_primitive_property->set_edm_name( 'EWMWarehouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENTITLED_TO_DISPOSE_PARTY' ).
    lo_primitive_property->set_edm_name( 'EntitledToDisposeParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'EWMStorageType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_INTERNAL_UUID' ).
    lo_primitive_property->set_edm_name( 'ProductInternalUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_CHAIN_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'SupplyChainUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPARTY_ENTITLED_TO_DISPO' ).
    lo_primitive_property->set_edm_name( 'EWMPartyEntitledToDisposeUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_SECTION_METHOD' ).
    lo_primitive_property->set_edm_name( 'EWMStorageSectionMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_BIN_TYPE' ).
    lo_primitive_property->set_edm_name( 'EWMStorageBinType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMAXIMUM_NUMBER_OF_BINS' ).
    lo_primitive_property->set_edm_name( 'EWMMaximumNumberOfBins' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMAXIMUM_STORAGE_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'EWMMaximumStorageQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMAX_STOR_QUANTITY_BASE' ).
    lo_primitive_property->set_edm_name( 'EWMMaxStorQuantityBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMAX_STOR_QTY_BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'EWMMaxStorQtyBaseUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMAX_STOR_QUANTITY_DISPL' ).
    lo_primitive_property->set_edm_name( 'EWMMaxStorQuantityDisplayUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMAX_STORAGE_QTY_DSP_UNI' ).
    lo_primitive_property->set_edm_name( 'EWMMaxStorageQtyDspUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMINIMUM_STORAGE_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'EWMMinimumStorageQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_STOR_QUANTITY_BASE' ).
    lo_primitive_property->set_edm_name( 'EWMMinStorQuantityBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_STOR_QTY_BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'EWMMinStorQtyBaseUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_STOR_QUANTITY_DISPL' ).
    lo_primitive_property->set_edm_name( 'EWMMinStorQuantityDisplayUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_STORAGE_QTY_DSP_UNI' ).
    lo_primitive_property->set_edm_name( 'EWMMinStorageQtyDspUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_REPLNMT_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'EWMMinReplnmtQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_REPLNMT_QTY_BASE_UN' ).
    lo_primitive_property->set_edm_name( 'EWMMinReplnmtQtyBaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_REPLNMT_QTY_BS_UNIT' ).
    lo_primitive_property->set_edm_name( 'EWMMinReplnmtQtyBsUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_REPLNMT_QTY_DISPLAY' ).
    lo_primitive_property->set_edm_name( 'EWMMinReplnmtQtyDisplayUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_REPLNMT_QTY_DSP_UNI' ).
    lo_primitive_property->set_edm_name( 'EWMMinReplnmtQtyDspUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMMIN_STOR_QTY_OF_MAX_STO' ).
    lo_primitive_property->set_edm_name( 'EWMMinStorQtyOfMaxStorQtyInPct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSPLT_PTWY_THRESHOLD_IN' ).
    lo_primitive_property->set_edm_name( 'EWMSpltPtwyThresholdInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPROD_IS_SPLIT_ON_PTWY' ).
    lo_primitive_property->set_edm_name( 'EWMProdIsSplitOnPtwy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPROD_IS_SKIPPED_ON_PTWY' ).
    lo_primitive_property->set_edm_name( 'EWMProdIsSkippedOnPtwy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMHAS_NO_REPLENISHMENT' ).
    lo_primitive_property->set_edm_name( 'EWMHasNoReplenishment' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_BIN_SEARCH_RULE' ).
    lo_primitive_property->set_edm_name( 'EWMStorageBinSearchRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPROD_QUANTITY_CLASSIFIC' ).
    lo_primitive_property->set_edm_name( 'EWMProdQuantityClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPROD_PTWY_QTY_CLASSIFIC' ).
    lo_primitive_property->set_edm_name( 'EWMProdPtwyQtyClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPTWY_SEQUENCE' ).
    lo_primitive_property->set_edm_name( 'EWMPtwySequence' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_EWMWAREHOUSE' ).
    lo_navigation_property->set_edm_name( '_ProductEWMWarehouse' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_EWMWAREHOUSE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_ewmwarehouse_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_EWMWAREHOUSE_TYPE'
                                    is_structure              = VALUE tys_product_ewmwarehouse_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductEWMWarehouse_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_EWMWAREHOUSE' ).
    lo_entity_set->set_edm_name( 'ProductEWMWarehouse' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMWAREHOUSE' ).
    lo_primitive_property->set_edm_name( 'EWMWarehouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ENTITLED_TO_DISPOSE_PARTY' ).
    lo_primitive_property->set_edm_name( 'EntitledToDisposeParty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_INTERNAL_UUID' ).
    lo_primitive_property->set_edm_name( 'ProductInternalUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLY_CHAIN_UNIT_UUID' ).
    lo_primitive_property->set_edm_name( 'SupplyChainUnitUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPARTY_ENTITLED_TO_DISPO' ).
    lo_primitive_property->set_edm_name( 'EWMPartyEntitledToDisposeUUID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Guid' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPRODUCT_PROCESS_BLOCK_P' ).
    lo_primitive_property->set_edm_name( 'EWMProductProcessBlockProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPROCESS_TYPE_CONTROL_CO' ).
    lo_primitive_property->set_edm_name( 'EWMProcessTypeControlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTGG_AREA_DETERMINATION' ).
    lo_primitive_property->set_edm_name( 'EWMStggAreaDeterminationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REQUIRED_MIN_SHELF_LIFE' ).
    lo_primitive_property->set_edm_name( 'RequiredMinShelfLife' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPTWY_CONTROL_STRATEGY' ).
    lo_primitive_property->set_edm_name( 'EWMPtwyControlStrategy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_SECTION_METHOD' ).
    lo_primitive_property->set_edm_name( 'EWMStorageSectionMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTORAGE_BIN_TYPE' ).
    lo_primitive_property->set_edm_name( 'EWMStorageBinType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMBULK_STORAGE_METHOD' ).
    lo_primitive_property->set_edm_name( 'EWMBulkStorageMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_REMOVAL_CONTROL_S' ).
    lo_primitive_property->set_edm_name( 'EWMStockRemovalControlStrategy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMSTOCK_DETERMINATION_GRO' ).
    lo_primitive_property->set_edm_name( 'EWMStockDeterminationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPHYS_INVENTORY_COUNTING' ).
    lo_primitive_property->set_edm_name( 'EWMPhysInventoryCountingCycle' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPREFERRED_UNIT' ).
    lo_primitive_property->set_edm_name( 'EWMPreferredUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMPREFERRED_UNIT_ISOCODE' ).
    lo_primitive_property->set_edm_name( 'EWMPreferredUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EWMQUALITY_INSPECTION_GROU' ).
    lo_primitive_property->set_edm_name( 'EWMQualityInspectionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_EWMSTORAGE_TYPE' ).
    lo_navigation_property->set_edm_name( '_ProductEWMStorageType' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_EWMSTORAGE_TYPE_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_product_inspection_texts_t.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_INSPECTION_TEXTS_T'
                                    is_structure              = VALUE tys_product_inspection_texts_t( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductInspectionTexts_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_INSPECTION_TEXT' ).
    lo_entity_set->set_edm_name( 'ProductInspectionText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TextObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProductLongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_CREATION_DAT' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtCreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_LAST_CHANGED' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_internal_note_text.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_INTERNAL_NOTE_TEXT'
                                    is_structure              = VALUE tys_product_internal_note_text( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductInternalNoteTexts_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_INTERNAL_COMMENT' ).
    lo_entity_set->set_edm_name( 'ProductInternalComment' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TextObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProductLongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_CREATION_DAT' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtCreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_LAST_CHANGED' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_costing_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_COSTING_TYPE'
                                    is_structure              = VALUE tys_product_plant_costing_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantCosting_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_COSTING' ).
    lo_entity_set->set_edm_name( 'ProductPlantCosting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'IsCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_LOT_SIZE' ).
    lo_primitive_property->set_edm_name( 'CostingLotSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GROUP' ).
    lo_primitive_property->set_edm_name( 'TaskListGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_TYPE' ).
    lo_primitive_property->set_edm_name( 'TaskListType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_SPECIAL_PROCUREMEN' ).
    lo_primitive_property->set_edm_name( 'CostingSpecialProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_BOMALTERNATIVE' ).
    lo_primitive_property->set_edm_name( 'SourceBOMAlternative' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_BOMUSAGE' ).
    lo_primitive_property->set_edm_name( 'ProductBOMUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_COSTING_RELEVAN' ).
    lo_primitive_property->set_edm_name( 'ProductIsCostingRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TASK_LIST_GROUP_COUNTER' ).
    lo_primitive_property->set_edm_name( 'TaskListGroupCounter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIANCE_KEY' ).
    lo_primitive_property->set_edm_name( 'VarianceKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_PRODUCTION_VERSION' ).
    lo_primitive_property->set_edm_name( 'CostingProductionVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_FIXED_PRICE_CO_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'IsFixedPriceCoProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_forecast_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_FORECAST_TYP'
                                    is_structure              = VALUE tys_product_plant_forecast_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantForecast_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_FORECAST' ).
    lo_entity_set->set_edm_name( 'ProductPlantForecast' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_REF_USAGE_END' ).
    lo_primitive_property->set_edm_name( 'ConsumptionRefUsageEndDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CNSMPN_QUANTITY_MULTIPLIER' ).
    lo_primitive_property->set_edm_name( 'CnsmpnQuantityMultiplierValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_REFERENCE_PROD' ).
    lo_primitive_property->set_edm_name( 'ConsumptionReferenceProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_REFERENCE_PLAN' ).
    lo_primitive_property->set_edm_name( 'ConsumptionReferencePlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CORRECTION_FACTOR_IS_REQUI' ).
    lo_primitive_property->set_edm_name( 'CorrectionFactorIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FORECAST_MODEL_IS_RESET' ).
    lo_primitive_property->set_edm_name( 'ForecastModelIsReset' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_insp_typ_set.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_INSP_TYP_SET'
                                    is_structure              = VALUE tys_product_plant_insp_typ_set( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantInspTypSetting_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_INSP_TYPE_SE' ).
    lo_entity_set->set_edm_name( 'ProductPlantInspTypeSetting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSPECTION_LOT_TYPE' ).
    lo_primitive_property->set_edm_name( 'InspectionLotType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_IS_TASK_LIST_REQU' ).
    lo_primitive_property->set_edm_name( 'InspLotIsTaskListRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_MATERIAL_SPEC' ).
    lo_primitive_property->set_edm_name( 'InspLotHasMaterialSpec' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_CONFIGN_SPECI' ).
    lo_primitive_property->set_edm_name( 'InspLotHasConfignSpecification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_BATCH_CHARC' ).
    lo_primitive_property->set_edm_name( 'InspLotHasBatchCharc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_AUTOM_SPEC_AS' ).
    lo_primitive_property->set_edm_name( 'InspLotHasAutomSpecAssgmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_CHARC' ).
    lo_primitive_property->set_edm_name( 'InspLotHasCharc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_POST_TO_INSPECTION_STO' ).
    lo_primitive_property->set_edm_name( 'HasPostToInspectionStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_IS_AUTOM_USGE_DCS' ).
    lo_primitive_property->set_edm_name( 'InspLotIsAutomUsgeDcsnPossible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAMPLING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'SamplingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_DYNAMIC_RULE' ).
    lo_primitive_property->set_edm_name( 'InspLotDynamicRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_SAMPLE_QUANTITY_I' ).
    lo_primitive_property->set_edm_name( 'InspLotSampleQuantityInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSPECTION_LOT_IS_FULL_INS' ).
    lo_primitive_property->set_edm_name( 'InspectionLotIsFullInspection' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_SKIP_IS_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'InspLotSkipIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_MANUAL_SAMPLE' ).
    lo_primitive_property->set_edm_name( 'InspLotHasManualSampleSize' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_IS_SMPL_CALC_MNL' ).
    lo_primitive_property->set_edm_name( 'InspLotIsSmplCalcMnlTriggered' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_IS_SERIAL_NMBR_PO' ).
    lo_primitive_property->set_edm_name( 'InspLotIsSerialNmbrPossible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_DURATION_IN_DAYS' ).
    lo_primitive_property->set_edm_name( 'InspLotDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_SUMMARY_CONTROL' ).
    lo_primitive_property->set_edm_name( 'InspLotSummaryControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_QUALITY_SCORE_PROCEDU' ).
    lo_primitive_property->set_edm_name( 'InspQualityScoreProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_ACCEPTED_SCRAP_RA' ).
    lo_primitive_property->set_edm_name( 'InspLotAcceptedScrapRatioInPct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 6 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSPECTION_LOT_HAS_APPRAIS' ).
    lo_primitive_property->set_edm_name( 'InspectionLotHasAppraisalCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_COST_COLLECTOR' ).
    lo_primitive_property->set_edm_name( 'QualityCostCollector' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_INSP_TYPE_SETTING_IS' ).
    lo_primitive_property->set_edm_name( 'ProdInspTypeSettingIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_TYPE_IS_PRFRD' ).
    lo_primitive_property->set_edm_name( 'InspTypeIsPrfrd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_HANDLING_UNIT' ).
    lo_primitive_property->set_edm_name( 'InspLotHasHandlingUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_HAS_MULTIPLE_SPEC' ).
    lo_primitive_property->set_edm_name( 'InspLotHasMultipleSpec' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_OF_EWMSUMMARY_CON' ).
    lo_primitive_property->set_edm_name( 'InspLotOfEWMSummaryControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_mrp_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_MRP_TYPE'
                                    is_structure              = VALUE tys_product_plant_mrp_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantMRP_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_MRP' ).
    lo_entity_set->set_edm_name( 'ProductPlantMRP' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPAREA' ).
    lo_primitive_property->set_edm_name( 'MRPArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPGROUP' ).
    lo_primitive_property->set_edm_name( 'MRPGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_THRESHOLD_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ReorderThresholdQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_AND_ORDER_DAY_DETERMI' ).
    lo_primitive_property->set_edm_name( 'PlanAndOrderDayDetermination' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_TIME_FENCE' ).
    lo_primitive_property->set_edm_name( 'PlanningTimeFence' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'LotSizingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_SCRAP_PERCENT' ).
    lo_primitive_property->set_edm_name( 'AssemblyScrapPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_SUB_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementSubType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DFLT_STORAGE_LOCATION_EXT' ).
    lo_primitive_property->set_edm_name( 'DfltStorageLocationExtProcmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPPLANNING_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'MRPPlanningCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RANGE_OF_CVRG_PRFL_CODE' ).
    lo_primitive_property->set_edm_name( 'RangeOfCvrgPrflCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_SUPPLY_DURATION_IN' ).
    lo_primitive_property->set_edm_name( 'SafetySupplyDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_INDEPENDENT_COSTS' ).
    lo_primitive_property->set_edm_name( 'LotSizeIndependentCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_COSTS_PERCENTAGE_C' ).
    lo_primitive_property->set_edm_name( 'StorageCostsPercentageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SERVICE_LEVEL_IN_P' ).
    lo_primitive_property->set_edm_name( 'ProductServiceLevelInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_TIME_PERIOD_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SafetyTimePeriodProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPENDENT_RQMT_MRPRELEVANC' ).
    lo_primitive_property->set_edm_name( 'DependentRqmtMRPRelevance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SAFETY_TIME_MRPREL' ).
    lo_primitive_property->set_edm_name( 'ProductSafetyTimeMRPRelevance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_DELIVERY_DURATION' ).
    lo_primitive_property->set_edm_name( 'PlannedDeliveryDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PLANNED_DELIVERY_TIME' ).
    lo_primitive_property->set_edm_name( 'IsPlannedDeliveryTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RQMT_QTY_RCPT_TAKT_TME_IN' ).
    lo_primitive_property->set_edm_name( 'RqmtQtyRcptTaktTmeInWrkgDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPSAFETY_STOCK_METHOD' ).
    lo_primitive_property->set_edm_name( 'MRPSafetyStockMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_procuremen_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_PROCUREMEN_2'
                                    is_structure              = VALUE tys_product_plant_procuremen_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantProcurement_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_PROCUREMENT' ).
    lo_entity_set->set_edm_name( 'ProductPlantProcurement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_AUTO_PUR_ORD_CREATION_A' ).
    lo_primitive_property->set_edm_name( 'IsAutoPurOrdCreationAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_SOURCE_LIST_REQUIRED' ).
    lo_primitive_property->set_edm_name( 'IsSourceListRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JUST_IN_TIME_DELIVERY_SCHE' ).
    lo_primitive_property->set_edm_name( 'JustInTimeDeliveryScheduleCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_GROUP' ).
    lo_primitive_property->set_edm_name( 'PurchasingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SOURCE_OF_SUPPLY_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'SourceOfSupplyCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_purchase_t_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_PURCHASE_T_2'
                                    is_structure              = VALUE tys_product_plant_purchase_t_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantPurchaseTax_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_PURCHASE_TAX' ).
    lo_entity_set->set_edm_name( 'ProductPlantPurchaseTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPARTURE_COUNTRY' ).
    lo_primitive_property->set_edm_name( 'DepartureCountry' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_PURCHASE_TAX_CLASSIFI' ).
    lo_primitive_property->set_edm_name( 'ProdPurchaseTaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_quality_ma_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_QUALITY_MA_2'
                                    is_structure              = VALUE tys_product_plant_quality_ma_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantQualityManagement_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_QUALITY_MANA' ).
    lo_entity_set->set_edm_name( 'ProductPlantQualityManagement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_QLTY_MANAGEMENT_CONTR' ).
    lo_primitive_property->set_edm_name( 'ProdQltyManagementControlKey' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_POST_TO_INSPECTION_STO' ).
    lo_primitive_property->set_edm_name( 'HasPostToInspectionStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INSP_LOT_DOCUMENTATION_IS' ).
    lo_primitive_property->set_edm_name( 'InspLotDocumentationIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_MGMT_SYSTEM_FOR_SU' ).
    lo_primitive_property->set_edm_name( 'QualityMgmtSystemForSupplier' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RECRRG_INSP_INTERVAL_TIME' ).
    lo_primitive_property->set_edm_name( 'RecrrgInspIntervalTimeInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_QUALITY_CERTIFICAT' ).
    lo_primitive_property->set_edm_name( 'ProductQualityCertificateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_QUALITY_AUTHORIZATION' ).
    lo_primitive_property->set_edm_name( 'ProdQualityAuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_sales_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_SALES_TYPE'
                                    is_structure              = VALUE tys_product_plant_sales_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantSales_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_SALES' ).
    lo_entity_set->set_edm_name( 'ProductPlantSales' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOADING_GROUP' ).
    lo_primitive_property->set_edm_name( 'LoadingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAP_PLANNING_QUANTITY_IN_B' ).
    lo_primitive_property->set_edm_name( 'CapPlanningQuantityInBaseUoM' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_SHIPG_PROCG_DURATION' ).
    lo_primitive_property->set_edm_name( 'ProdShipgProcgDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WRK_CENTERS_SHIPG_SETUP_TI' ).
    lo_primitive_property->set_edm_name( 'WrkCentersShipgSetupTimeInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPLACEMENT_PART_TYPE' ).
    lo_primitive_property->set_edm_name( 'ReplacementPartType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_storage_lo_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_STORAGE_LO_2'
                                    is_structure              = VALUE tys_product_plant_storage_lo_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantStorageLocation_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_STORAGE_LOCA' ).
    lo_entity_set->set_edm_name( 'ProductPlantStorageLocation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_LOCATION' ).
    lo_primitive_property->set_edm_name( 'StorageLocation' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_STORAGE_BIN' ).
    lo_primitive_property->set_edm_name( 'WarehouseStorageBin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_storage_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_STORAGE_TYPE'
                                    is_structure              = VALUE tys_product_plant_storage_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantStorage_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_STORAGE' ).
    lo_entity_set->set_edm_name( 'ProductPlantStorage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PHYS_INVENTORY_FOR_CYCLE_C' ).
    lo_primitive_property->set_edm_name( 'PhysInventoryForCycleCounting' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STORAGE_PERIOD' ).
    lo_primitive_property->set_edm_name( 'MaximumStoragePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_MAXIMUM_STORAGE_PERIO' ).
    lo_primitive_property->set_edm_name( 'ProdMaximumStoragePeriodUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STORAGE_PERIOD_ISO' ).
    lo_primitive_property->set_edm_name( 'MaximumStoragePeriodISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CYCLE_COUNTING_INDICATOR_I' ).
    lo_primitive_property->set_edm_name( 'CycleCountingIndicatorIsFixed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_supply_pla_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_SUPPLY_PLA_2'
                                    is_structure              = VALUE tys_product_plant_supply_pla_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantSupplyPlanning_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_SUPPLY_PLANN' ).
    lo_entity_set->set_edm_name( 'ProductPlantSupplyPlanning' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIXED_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'FixedLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_LOT_SIZE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumLotSizeQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_ROUNDING_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'LotSizeRoundingQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZING_PROCEDURE' ).
    lo_primitive_property->set_edm_name( 'LotSizingProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPTYPE' ).
    lo_primitive_property->set_edm_name( 'MRPType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPRESPONSIBLE' ).
    lo_primitive_property->set_edm_name( 'MRPResponsible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'SafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_SAFETY_STOCK_QUANT' ).
    lo_primitive_property->set_edm_name( 'MinimumSafetyStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_TIME_FENCE' ).
    lo_primitive_property->set_edm_name( 'PlanningTimeFence' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_VALUE_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ConsumptionValueCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STOCK_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MaximumStockQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REORDER_THRESHOLD_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ReorderThresholdQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_DELIVERY_DURATION' ).
    lo_primitive_property->set_edm_name( 'PlannedDeliveryDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_SUPPLY_DURATION_IN' ).
    lo_primitive_property->set_edm_name( 'SafetySupplyDurationInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNING_STRATEGY_GROUP' ).
    lo_primitive_property->set_edm_name( 'PlanningStrategyGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_REPLENISHMENT_LEAD_T' ).
    lo_primitive_property->set_edm_name( 'TotalReplenishmentLeadTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCUREMENT_SUB_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProcurementSubType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ASSEMBLY_SCRAP_PERCENT' ).
    lo_primitive_property->set_edm_name( 'AssemblyScrapPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AVAILABILITY_CHECK_TYPE' ).
    lo_primitive_property->set_edm_name( 'AvailabilityCheckType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_RECEIPT_DURATION' ).
    lo_primitive_property->set_edm_name( 'GoodsReceiptDuration' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLAN_AND_ORDER_DAY_DETERMI' ).
    lo_primitive_property->set_edm_name( 'PlanAndOrderDayDetermination' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DFLT_STORAGE_LOCATION_EXT' ).
    lo_primitive_property->set_edm_name( 'DfltStorageLocationExtProcmt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPGROUP' ).
    lo_primitive_property->set_edm_name( 'MRPGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOT_SIZE_INDEPENDENT_COSTS' ).
    lo_primitive_property->set_edm_name( 'LotSizeIndependentCosts' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RQMT_QTY_RCPT_TAKT_TME_IN' ).
    lo_primitive_property->set_edm_name( 'RqmtQtyRcptTaktTmeInWrkgDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPPLANNING_CALENDAR' ).
    lo_primitive_property->set_edm_name( 'MRPPlanningCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'RANGE_OF_CVRG_PRFL_CODE' ).
    lo_primitive_property->set_edm_name( 'RangeOfCvrgPrflCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SAFETY_TIME_MRPREL' ).
    lo_primitive_property->set_edm_name( 'ProductSafetyTimeMRPRelevance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SAFETY_TIME_PERIOD_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SafetyTimePeriodProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPENDENT_RQMT_MRPRELEVANC' ).
    lo_primitive_property->set_edm_name( 'DependentRqmtMRPRelevance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SERVICE_LEVEL_IN_P' ).
    lo_primitive_property->set_edm_name( 'ProductServiceLevelInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_INH_PRODN_DURATION_IN' ).
    lo_primitive_property->set_edm_name( 'ProdInhProdnDurationInWorkDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPAVAILABILITY_TYPE' ).
    lo_primitive_property->set_edm_name( 'MRPAvailabilityType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PROJECT_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'CrossProjectProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_COSTS_PERCENTAGE_C' ).
    lo_primitive_property->set_edm_name( 'StorageCostsPercentageCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FOLLOW_UP_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'FollowUpProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPETITIVE_MANUFACTURING_I' ).
    lo_primitive_property->set_edm_name( 'RepetitiveManufacturingIsAllwd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEPENDENT_REQUIREMENTS_TYP' ).
    lo_primitive_property->set_edm_name( 'DependentRequirementsType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_BULK_COMPONENT' ).
    lo_primitive_property->set_edm_name( 'ProductIsBulkComponent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REPETITIVE_MANUFACTURING_P' ).
    lo_primitive_property->set_edm_name( 'RepetitiveManufacturingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BACKWARD_CNSMPN_PERIOD_IN' ).
    lo_primitive_property->set_edm_name( 'BackwardCnsmpnPeriodInWorkDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FWD_CONSUMPTION_PERIOD_IN' ).
    lo_primitive_property->set_edm_name( 'FwdConsumptionPeriodInWorkDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_RQMTS_CONSUMPTION_MOD' ).
    lo_primitive_property->set_edm_name( 'ProdRqmtsConsumptionMode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_FCST_REQUIREMENTS_SPL' ).
    lo_primitive_property->set_edm_name( 'ProdFcstRequirementsSplitCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EFFECTIVE_OUT_DATE' ).
    lo_primitive_property->set_edm_name( 'EffectiveOutDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SCHEDULING_FLOAT_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SchedulingFloatProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMPONENT_SCRAP_IN_PERCENT' ).
    lo_primitive_property->set_edm_name( 'ComponentScrapInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISCONTINUATION_CO' ).
    lo_primitive_property->set_edm_name( 'ProductDiscontinuationCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_REQUIREMENTS_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductRequirementsGrouping' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_COMPONENT_BACKFLUS' ).
    lo_primitive_property->set_edm_name( 'ProductComponentBackflushCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROPOSED_PRODUCT_SUPPLY_AR' ).
    lo_primitive_property->set_edm_name( 'ProposedProductSupplyArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MRPSAFETY_STOCK_METHOD' ).
    lo_primitive_property->set_edm_name( 'MRPSafetyStockMethod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'JITPRODN_CONF_PROFILE' ).
    lo_primitive_property->set_edm_name( 'JITProdnConfProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODN_PLNG_AND_CONTROL_CAL' ).
    lo_primitive_property->set_edm_name( 'ProdnPlngAndControlCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSIGNMENT_CONTROL' ).
    lo_primitive_property->set_edm_name( 'ConsignmentControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ATPCHECK_HORIZON_IN_DAYS' ).
    lo_primitive_property->set_edm_name( 'ATPCheckHorizonInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ATPCHECK_HORIZON_FACTORY_C' ).
    lo_primitive_property->set_edm_name( 'ATPCheckHorizonFactoryCalendar' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_plant_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_TYPE'
                                    is_structure              = VALUE tys_product_plant_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlant_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT' ).
    lo_entity_set->set_edm_name( 'ProductPlant' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFILE_CODE' ).
    lo_primitive_property->set_edm_name( 'ProfileCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFILE_VALIDITY_START_DAT' ).
    lo_primitive_property->set_edm_name( 'ProfileValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FISCAL_YEAR_VARIANT' ).
    lo_primitive_property->set_edm_name( 'FiscalYearVariant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PERIOD_TYPE' ).
    lo_primitive_property->set_edm_name( 'PeriodType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROFIT_CENTER' ).
    lo_primitive_property->set_edm_name( 'ProfitCenter' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONFIGURABLE_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'ConfigurableProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STOCK_DETERMINATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'StockDeterminationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BATCH_MANAGEMENT_REQUIR' ).
    lo_primitive_property->set_edm_name( 'IsBatchManagementRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_NEGATIVE_STOCK_ALLOWED' ).
    lo_primitive_property->set_edm_name( 'IsNegativeStockAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CFOPCATEGORY' ).
    lo_primitive_property->set_edm_name( 'ProductCFOPCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_EXCISE_TAX_RELE' ).
    lo_primitive_property->set_edm_name( 'ProductIsExciseTaxRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_ISSUE_UNIT' ).
    lo_primitive_property->set_edm_name( 'GoodsIssueUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GOODS_ISSUE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'GoodsIssueISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISTR_CNTR_DISTRIBUTION_PR' ).
    lo_primitive_property->set_edm_name( 'DistrCntrDistributionProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CRITICAL_PRT' ).
    lo_primitive_property->set_edm_name( 'ProductIsCriticalPrt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LOGISTICS_HANDLING' ).
    lo_primitive_property->set_edm_name( 'ProductLogisticsHandlingGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_FREIGHT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductFreightGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 8 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGINAL_BATCH_REFERENCE_P' ).
    lo_primitive_property->set_edm_name( 'OriginalBatchReferenceProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORIGL_BATCH_MANAGEMENT_IS' ).
    lo_primitive_property->set_edm_name( 'OriglBatchManagementIsRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MIN_CONTROL_TEMPER' ).
    lo_primitive_property->set_edm_name( 'ProductMinControlTemperature' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MAX_CONTROL_TEMPER' ).
    lo_primitive_property->set_edm_name( 'ProductMaxControlTemperature' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CONTROL_TEMPERATUR' ).
    lo_primitive_property->set_edm_name( 'ProductControlTemperatureUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_CTRL_TEMPERATURE_UNIT' ).
    lo_primitive_property->set_edm_name( 'ProdCtrlTemperatureUnitISOCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_COSTING' ).
    lo_navigation_property->set_edm_name( '_ProductPlantCosting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_COSTING_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_FORECAST' ).
    lo_navigation_property->set_edm_name( '_ProductPlantForecast' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_FORECAST_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_INSP_TYPE_SE' ).
    lo_navigation_property->set_edm_name( '_ProductPlantInspTypeSetting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_INSP_TYP_SET' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_MRP' ).
    lo_navigation_property->set_edm_name( '_ProductPlantMRP' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_MRP_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_PROCUREMENT' ).
    lo_navigation_property->set_edm_name( '_ProductPlantProcurement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_PROCUREMEN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_PURCHASE_TAX' ).
    lo_navigation_property->set_edm_name( '_ProductPlantPurchaseTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_PURCHASE_T_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_QUALITY_MANA' ).
    lo_navigation_property->set_edm_name( '_ProductPlantQualityManagement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_QUALITY_MA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_SALES' ).
    lo_navigation_property->set_edm_name( '_ProductPlantSales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_SALES_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_STORAGE' ).
    lo_navigation_property->set_edm_name( '_ProductPlantStorage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_STORAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_STORAGE_LOCA' ).
    lo_navigation_property->set_edm_name( '_ProductPlantStorageLocation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_STORAGE_LO_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_SUPPLY_PLANN' ).
    lo_navigation_property->set_edm_name( '_ProductPlantSupplyPlanning' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_SUPPLY_PLA_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT_WORK_SCHEDUL' ).
    lo_navigation_property->set_edm_name( '_ProductPlantWorkScheduling' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_WORK_SCHED_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PROD_PLANT_INTERNATIONAL_T' ).
    lo_navigation_property->set_edm_name( '_ProdPlantInternationalTrade' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PROD_PLNT_INTERNATIONAL_TR' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PROD_PLNT_MRPTEXT' ).
    lo_navigation_property->set_edm_name( '_ProdPlntMRPText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PLANT_MRPTEXTS_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_product_plant_work_sched_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PLANT_WORK_SCHED_2'
                                    is_structure              = VALUE tys_product_plant_work_sched_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPlantWorkScheduling_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_WORK_SCHEDUL' ).
    lo_entity_set->set_edm_name( 'ProductPlantWorkScheduling' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_BASE_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'ProductBaseQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNLIMITED_OVER_DELIV_IS_AL' ).
    lo_primitive_property->set_edm_name( 'UnlimitedOverDelivIsAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVER_DELIVERY_TOLERANCE_PE' ).
    lo_primitive_property->set_edm_name( 'OverDeliveryTolerancePercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNDER_DELIVERY_TOLERANCE_P' ).
    lo_primitive_property->set_edm_name( 'UnderDeliveryTolerancePercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_INVTRY_MANAGED' ).
    lo_primitive_property->set_edm_name( 'ProductionInvtryManagedLoc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_ORDER_BATCH_COD' ).
    lo_primitive_property->set_edm_name( 'ProductionOrderBatchCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_IS_WITHDRAWN_FRM_PROD' ).
    lo_primitive_property->set_edm_name( 'ProdIsWithdrawnFrmProdnBin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSITION_MATRIX_PRODUCTS' ).
    lo_primitive_property->set_edm_name( 'TransitionMatrixProductsGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 20 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ORDER_CHANGE_MANAGEMENT_PR' ).
    lo_primitive_property->set_edm_name( 'OrderChangeManagementProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_COMPONENT_BACKFLUS' ).
    lo_primitive_property->set_edm_name( 'ProductComponentBackflushCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SETUP_AND_TEARDOWN_TIME' ).
    lo_primitive_property->set_edm_name( 'SetupAndTeardownTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_SCHEDULING_PROF' ).
    lo_primitive_property->set_edm_name( 'ProductionSchedulingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSITION_TIME' ).
    lo_primitive_property->set_edm_name( 'TransitionTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROCESSING_TIME_IN_DAYS' ).
    lo_primitive_property->set_edm_name( 'ProcessingTimeInDays' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_SUPERVISOR' ).
    lo_primitive_property->set_edm_name( 'ProductionSupervisor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRODUCTION_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'ProductProductionQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_PRODUCTION_QUANTITY_I' ).
    lo_primitive_property->set_edm_name( 'ProdProductionQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_procurement_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PROCUREMENT_TYPE'
                                    is_structure              = VALUE tys_product_procurement_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductProcurement_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PROCUREMENT' ).
    lo_entity_set->set_edm_name( 'ProductProcurement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_QUANTITY_UN' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASE_ORDER_QUANTITY_IS' ).
    lo_primitive_property->set_edm_name( 'PurchaseOrderQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARBL_PUR_ORD_UNIT_STATUS' ).
    lo_primitive_property->set_edm_name( 'VarblPurOrdUnitStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PURCHASING_ACKN_PROFILE' ).
    lo_primitive_property->set_edm_name( 'PurchasingAcknProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_purchase_order_t_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_PURCHASE_ORDER_T_2'
                                    is_structure              = VALUE tys_product_purchase_order_t_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductPurchaseOrderText' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PURCHASE_ORDER_TEX' ).
    lo_entity_set->set_edm_name( 'ProductPurchaseOrderText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TextObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_LONG_TEXT' ).
    lo_primitive_property->set_edm_name( 'ProductLongText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_CREATION_DAT' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtCreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_LAST_CHANGED' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_quality_manageme_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_QUALITY_MANAGEME_2'
                                    is_structure              = VALUE tys_product_quality_manageme_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductQualityManagement_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_QUALITY_MANAGEMENT' ).
    lo_entity_set->set_edm_name( 'ProductQualityManagement' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QLTY_MGMT_IN_PROCMT_IS_ACT' ).
    lo_primitive_property->set_edm_name( 'QltyMgmtInProcmtIsActive' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_sales_delivery_typ.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_SALES_DELIVERY_TYP'
                                    is_structure              = VALUE tys_product_sales_delivery_typ( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductSalesDelivery_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_SALES_DELIVERY' ).
    lo_entity_set->set_edm_name( 'ProductSalesDelivery' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'ProductSalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISTRIBUTION_CHNL' ).
    lo_primitive_property->set_edm_name( 'ProductDistributionChnl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MINIMUM_ORDER_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'MinimumOrderQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SUPPLYING_PLANT' ).
    lo_primitive_property->set_edm_name( 'SupplyingPlant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_SPECIFICATION_PRODUC' ).
    lo_primitive_property->set_edm_name( 'PriceSpecificationProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ACCOUNT_DETN_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'AccountDetnProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_NOTE_PROC_MIN_DEL' ).
    lo_primitive_property->set_edm_name( 'DeliveryNoteProcMinDelivQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CATEGORY_GROUP' ).
    lo_primitive_property->set_edm_name( 'ItemCategoryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY_UNIT' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantityUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantityISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DELIVERY_QUANTITY' ).
    lo_primitive_property->set_edm_name( 'DeliveryQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_STATUS' ).
    lo_primitive_property->set_edm_name( 'ProductSalesStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_STATUS_VALID' ).
    lo_primitive_property->set_edm_name( 'ProductSalesStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_MEASURE_UNIT' ).
    lo_primitive_property->set_edm_name( 'SalesMeasureUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_MEASURE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'SalesMeasureISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIRST_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'FirstSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SECOND_SALES_SPEC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'SecondSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'THIRD_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'ThirdSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FOURTH_SALES_SPEC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'FourthSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FIFTH_SALES_SPEC_PRODUCT_G' ).
    lo_primitive_property->set_edm_name( 'FifthSalesSpecProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOGISTICS_STATISTICS_GROUP' ).
    lo_primitive_property->set_edm_name( 'LogisticsStatisticsGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_REBATE_GROUP' ).
    lo_primitive_property->set_edm_name( 'VolumeRebateGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CASH_DISCOUNT_IS_DEDUCTIBL' ).
    lo_primitive_property->set_edm_name( 'CashDiscountIsDeductible' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ROUNDING_PROFILE' ).
    lo_primitive_property->set_edm_name( 'RoundingProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VARIABLE_SALES_UNIT_IS_NOT' ).
    lo_primitive_property->set_edm_name( 'VariableSalesUnitIsNotAllowed' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_COMMISSION_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductCommissionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICING_REFERENCE_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'PricingReferenceProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_0' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID01' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_2' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID02' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_3' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID03' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_4' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID04' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_5' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID05' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_6' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID06' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_7' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID07' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_8' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID08' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_9' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID09' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_HAS_ATTRIBUTE_ID_1' ).
    lo_primitive_property->set_edm_name( 'ProductHasAttributeID10' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_IS_ENTLMNT_RLVT' ).
    lo_primitive_property->set_edm_name( 'ProdIsEntlmntRlvt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_SALES_DELIVERY_TEX' ).
    lo_navigation_property->set_edm_name( '_ProductSalesDeliveryText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_SALES_DELIVERY_T_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PROD_SALES_DELIVERY_SALES' ).
    lo_navigation_property->set_edm_name( '_ProdSalesDeliverySalesTax' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PROD_SALES_DELIVERY_SALE_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_product_sales_delivery_t_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_SALES_DELIVERY_T_2'
                                    is_structure              = VALUE tys_product_sales_delivery_t_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductSalesDeliveryTexts_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_SALES_DELIVERY_TEX' ).
    lo_entity_set->set_edm_name( 'ProductSalesDeliveryText' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'ProductSalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISTRIBUTION_CHNL' ).
    lo_primitive_property->set_edm_name( 'ProductDistributionChnl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TEXT_OBJECT_TYPE' ).
    lo_primitive_property->set_edm_name( 'TextObjectType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LANGUAGE' ).
    lo_primitive_property->set_edm_name( 'Language' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_DELIVERY_TEX' ).
    lo_primitive_property->set_edm_name( 'ProductSalesDeliveryText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_CREATION_DAT' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtCreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_LONG_TXT_LAST_CHANGED' ).
    lo_primitive_property->set_edm_name( 'ProdLongTxtLastChangedDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_SALES_DELIVERY' ).
    lo_navigation_property->set_edm_name( '_ProductSalesDelivery' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_SALES_DELIVERY_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_sales_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_SALES_TYPE'
                                    is_structure              = VALUE tys_product_sales_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductSales_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_SALES' ).
    lo_entity_set->set_edm_name( 'ProductSales' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_STATUS' ).
    lo_primitive_property->set_edm_name( 'SalesStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SALES_STATUS_VALIDITY_DATE' ).
    lo_primitive_property->set_edm_name( 'SalesStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORTATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'TransportationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PACKAGING_PRODUCT_TYPE' ).
    lo_primitive_property->set_edm_name( 'PackagingProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLOWED_PACKAGING_WEIGHT_Q' ).
    lo_primitive_property->set_edm_name( 'AllowedPackagingWeightQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLOWED_PACKAGING_WEIGHT_2' ).
    lo_primitive_property->set_edm_name( 'AllowedPackagingWeightQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLWD_PACKAGING_WEIGHT_QTY' ).
    lo_primitive_property->set_edm_name( 'AllwdPackagingWeightQtyISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLOWED_PACKAGING_VOLUME_Q' ).
    lo_primitive_property->set_edm_name( 'AllowedPackagingVolumeQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLOWED_PACKAGING_VOLUME_2' ).
    lo_primitive_property->set_edm_name( 'AllowedPackagingVolumeQtyUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALLWD_PACKAGING_VOLUME_QTY' ).
    lo_primitive_property->set_edm_name( 'AllwdPackagingVolumeQtyISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_LEVEL_BY_VOLUME_IN' ).
    lo_primitive_property->set_edm_name( 'MaximumLevelByVolumeInPercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXCESS_WEIGHT_TOLERANCE_VA' ).
    lo_primitive_property->set_edm_name( 'ExcessWeightToleranceValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PACKGG_PRODUCT_IS_CLOSED_P' ).
    lo_primitive_property->set_edm_name( 'PackggProductIsClosedPackaging' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_STACKING_FACTOR' ).
    lo_primitive_property->set_edm_name( 'ProductStackingFactor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Int16' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_EXCESS_VOLUME_TOLERAN' ).
    lo_primitive_property->set_edm_name( 'ProdExcessVolumeToleranceValue' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_storage_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_STORAGE_TYPE'
                                    is_structure              = VALUE tys_product_storage_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductStorage_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_STORAGE' ).
    lo_entity_set->set_edm_name( 'ProductStorage' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_CONDITIONS' ).
    lo_primitive_property->set_edm_name( 'StorageConditions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_TEMPERATURE_CONDITION' ).
    lo_primitive_property->set_edm_name( 'ProdTemperatureConditionCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAZARDOUS_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'HazardousProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NMBR_OF_GROR_GISLIPS_TO_PR' ).
    lo_primitive_property->set_edm_name( 'NmbrOfGROrGISlipsToPrintQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABEL_TYPE' ).
    lo_primitive_property->set_edm_name( 'LabelType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABEL_FORM' ).
    lo_primitive_property->set_edm_name( 'LabelForm' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MIN_REMAINING_SHELF_LIFE' ).
    lo_primitive_property->set_edm_name( 'MinRemainingShelfLife' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_EXPIRATION_DATE_TY' ).
    lo_primitive_property->set_edm_name( 'ProductExpirationDateType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STORAGE_BIN_INSTRUCTION' ).
    lo_primitive_property->set_edm_name( 'StorageBinInstruction' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHELF_LIFE_EXPIRATION_DATE' ).
    lo_primitive_property->set_edm_name( 'ShelfLifeExpirationDatePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SHELF_LIFE_EXPRTN_DATE_RND' ).
    lo_primitive_property->set_edm_name( 'ShelfLifeExprtnDateRndngRule' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_SHELF_LIFE_STORAGE_P' ).
    lo_primitive_property->set_edm_name( 'TotalShelfLifeStoragePercent' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TOTAL_SHELF_LIFE' ).
    lo_primitive_property->set_edm_name( 'TotalShelfLife' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_TYPE'
                                    is_structure              = VALUE tys_product_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'Product_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT' ).
    lo_entity_set->set_edm_name( 'Product' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TYPE_2' ).
    lo_primitive_property->set_edm_name( 'ProductType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE' ).
    lo_primitive_property->set_edm_name( 'CreationDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATION_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'CreationDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CREATED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'CreatedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE' ).
    lo_primitive_property->set_edm_name( 'LastChangeDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGED_BY_USER' ).
    lo_primitive_property->set_edm_name( 'LastChangedByUser' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 12 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_STATUS' ).
    lo_primitive_property->set_edm_name( 'CrossPlantStatus' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_STATUS_VALIDIT' ).
    lo_primitive_property->set_edm_name( 'CrossPlantStatusValidityDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_OLD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductOldID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'GrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'WeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'WeightISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ITEM_CATEGORY_GROUP' ).
    lo_primitive_property->set_edm_name( 'ItemCategoryGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'NET_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'NetWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DIVISION' ).
    lo_primitive_property->set_edm_name( 'Division' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_VOLUME' ).
    lo_primitive_property->set_edm_name( 'ProductVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'AUTHORIZATION_GROUP' ).
    lo_primitive_property->set_edm_name( 'AuthorizationGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ANPCODE' ).
    lo_primitive_property->set_edm_name( 'ANPCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SIZE_OR_DIMENSION_TEXT' ).
    lo_primitive_property->set_edm_name( 'SizeOrDimensionText' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 32 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_STANDARD_NAME' ).
    lo_primitive_property->set_edm_name( 'IndustryStandardName' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_STANDARD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductStandardID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumberCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_CONFIGURABLE' ).
    lo_primitive_property->set_edm_name( 'ProductIsConfigurable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_BATCH_MANAGEMENT_REQUIR' ).
    lo_primitive_property->set_edm_name( 'IsBatchManagementRequired' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXTERNAL_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'ExternalProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CROSS_PLANT_CONFIGURABLE_P' ).
    lo_primitive_property->set_edm_name( 'CrossPlantConfigurableProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NO_EXPLICITNESS_LEV' ).
    lo_primitive_property->set_edm_name( 'SerialNoExplicitnessLevel' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_APPROVED_BATCH_RECORD_R' ).
    lo_primitive_property->set_edm_name( 'IsApprovedBatchRecordReqd' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_INDICATOR' ).
    lo_primitive_property->set_edm_name( 'HandlingIndicator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'WarehouseProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WAREHOUSE_STORAGE_CONDITIO' ).
    lo_primitive_property->set_edm_name( 'WarehouseStorageCondition' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_HANDLING_UNIT_TYP' ).
    lo_primitive_property->set_edm_name( 'StandardHandlingUnitType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'SERIAL_NUMBER_PROFILE' ).
    lo_primitive_property->set_edm_name( 'SerialNumberProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PILFERABLE' ).
    lo_primitive_property->set_edm_name( 'IsPilferable' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_RELEVANT_FOR_HZDS_SUBST' ).
    lo_primitive_property->set_edm_name( 'IsRelevantForHzdsSubstances' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUARANTINE_PERIOD' ).
    lo_primitive_property->set_edm_name( 'QuarantinePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TIME_UNIT_FOR_QUARANTINE_P' ).
    lo_primitive_property->set_edm_name( 'TimeUnitForQuarantinePeriod' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUARANTINE_PERIOD_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'QuarantinePeriodISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUALITY_INSPECTION_GROUP' ).
    lo_primitive_property->set_edm_name( 'QualityInspectionGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HANDLING_UNIT_TYPE' ).
    lo_primitive_property->set_edm_name( 'HandlingUnitType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'HAS_VARIABLE_TARE_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'HasVariableTareWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_LENGTH' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_WIDTH' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_PACKAGING_HEIGHT' ).
    lo_primitive_property->set_edm_name( 'MaximumPackagingHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_CAPACITY' ).
    lo_primitive_property->set_edm_name( 'MaximumCapacity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OVERCAPACITY_TOLERANCE' ).
    lo_primitive_property->set_edm_name( 'OvercapacityTolerance' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_FOR_MAX_PACKAGING_DIM' ).
    lo_primitive_property->set_edm_name( 'UnitForMaxPackagingDimensions' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAX_PACKGG_DIMENSION_ISOUN' ).
    lo_primitive_property->set_edm_name( 'MaxPackggDimensionISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT_SPECIFIC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'BaseUnitSpecificProductLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT_SPECIFIC_PRODU_2' ).
    lo_primitive_property->set_edm_name( 'BaseUnitSpecificProductWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT_SPECIFIC_PRODU_3' ).
    lo_primitive_property->set_edm_name( 'BaseUnitSpecificProductHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MEASUREMENT_UNIT' ).
    lo_primitive_property->set_edm_name( 'ProductMeasurementUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MEASUREMENT_ISOUNI' ).
    lo_primitive_property->set_edm_name( 'ProductMeasurementISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ARTICLE_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ArticleCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INDUSTRY_SECTOR' ).
    lo_primitive_property->set_edm_name( 'IndustrySector' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_DATE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeDateTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'DateTimeOffset' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 7 ) ##NUMBER_OK.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LAST_CHANGE_TIME' ).
    lo_primitive_property->set_edm_name( 'LastChangeTime' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'TimeOfDay' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DANGEROUS_GOODS_IND_PROFIL' ).
    lo_primitive_property->set_edm_name( 'DangerousGoodsIndProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_CHANGE_NU' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentChangeNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 6 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_PAGE_COUN' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentPageCount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_PAGE_NUMB' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentPageNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DOCUMENT_IS_CREATED_BY_CAD' ).
    lo_primitive_property->set_edm_name( 'DocumentIsCreatedByCAD' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_OR_INSPECTION_M' ).
    lo_primitive_property->set_edm_name( 'ProductionOrInspectionMemoTxt' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCTION_MEMO_PAGE_FORMA' ).
    lo_primitive_property->set_edm_name( 'ProductionMemoPageFormat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_HIGHLY_VISCOUS' ).
    lo_primitive_property->set_edm_name( 'ProductIsHighlyViscous' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TRANSPORT_IS_IN_BULK' ).
    lo_primitive_property->set_edm_name( 'TransportIsInBulk' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_EFFCTY_PARAM_VALS_ARE' ).
    lo_primitive_property->set_edm_name( 'ProdEffctyParamValsAreAssigned' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_IS_ENVIRONMENTALLY_RE' ).
    lo_primitive_property->set_edm_name( 'ProdIsEnvironmentallyRelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LABORATORY_OR_DESIGN_OFFIC' ).
    lo_primitive_property->set_edm_name( 'LaboratoryOrDesignOffice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PACKAGING_PRODUCT_GROUP' ).
    lo_primitive_property->set_edm_name( 'PackagingProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PACKING_REFERENCE_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'PackingReferenceProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASIC_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'BasicProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 48 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 22 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_VERSION' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentVersion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DOCUMENT_PAGE_FORM' ).
    lo_primitive_property->set_edm_name( 'ProductDocumentPageFormat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_CHML_CMPLNC_RELEVANCE' ).
    lo_primitive_property->set_edm_name( 'ProdChmlCmplncRelevanceCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DISCOUNT_IN_KIND_ELIGIBILI' ).
    lo_primitive_property->set_edm_name( 'DiscountInKindEligibility' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MANUFACTURER_NUMBE' ).
    lo_primitive_property->set_edm_name( 'ProductManufacturerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ManufacturerNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MANUFACTURER_PART_PROFILE' ).
    lo_primitive_property->set_edm_name( 'ManufacturerPartProfile' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'OWN_INVENTORY_MANAGED_PROD' ).
    lo_primitive_property->set_edm_name( 'OwnInventoryManagedProduct' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_BASIC_TEXT' ).
    lo_navigation_property->set_edm_name( '_ProductBasicText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_BASIC_TEXTS_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_CHANGE_MASTER' ).
    lo_navigation_property->set_edm_name( '_ProductChangeMaster' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_CHANGE_MASTER_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_DESCRIPTION' ).
    lo_navigation_property->set_edm_name( '_ProductDescription' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_DESCRIPTION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_EWMWAREHOUSE' ).
    lo_navigation_property->set_edm_name( '_ProductEWMWarehouse' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_EWMWAREHOUSE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_INSPECTION_TEXT' ).
    lo_navigation_property->set_edm_name( '_ProductInspectionText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_INSPECTION_TEXTS_T' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_INTERNAL_COMMENT' ).
    lo_navigation_property->set_edm_name( '_ProductInternalComment' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_INTERNAL_NOTE_TEXT' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PROCUREMENT' ).
    lo_navigation_property->set_edm_name( '_ProductProcurement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PROCUREMENT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PURCHASE_ORDER_TEX' ).
    lo_navigation_property->set_edm_name( '_ProductPurchaseOrderText' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PURCHASE_ORDER_T_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_QUALITY_MANAGEMENT' ).
    lo_navigation_property->set_edm_name( '_ProductQualityManagement' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_QUALITY_MANAGEME_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_SALES' ).
    lo_navigation_property->set_edm_name( '_ProductSales' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_SALES_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_SALES_DELIVERY' ).
    lo_navigation_property->set_edm_name( '_ProductSalesDelivery' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_SALES_DELIVERY_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_STORAGE' ).
    lo_navigation_property->set_edm_name( '_ProductStorage' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_STORAGE_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_UNIT_OF_MEASURE' ).
    lo_navigation_property->set_edm_name( '_ProductUnitOfMeasure' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_UNIT_OF_MEASURE_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION' ).
    lo_navigation_property->set_edm_name( '_ProductValuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_product_unit_of_measure_ty.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_UNIT_OF_MEASURE_TY'
                                    is_structure              = VALUE tys_product_unit_of_measure_ty( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductUnitOfMeasure_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_UNIT_OF_MEASURE' ).
    lo_entity_set->set_edm_name( 'ProductUnitOfMeasure' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_UNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_SAPUNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeSAPUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_NUMERATOR' ).
    lo_primitive_property->set_edm_name( 'QuantityNumerator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'QUANTITY_DENOMINATOR' ).
    lo_primitive_property->set_edm_name( 'QuantityDenominator' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_VOLUME' ).
    lo_primitive_property->set_edm_name( 'ProductVolume' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_UNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VOLUME_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'VolumeISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GROSS_WEIGHT' ).
    lo_primitive_property->set_edm_name( 'GrossWeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_UNIT' ).
    lo_primitive_property->set_edm_name( 'WeightUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'WEIGHT_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'WeightISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLOBAL_TRADE_ITEM_NUMBER' ).
    lo_primitive_property->set_edm_name( 'GlobalTradeItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'GLOBAL_TRADE_ITEM_NUMBER_C' ).
    lo_primitive_property->set_edm_name( 'GlobalTradeItemNumberCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_SPECIFIC_PRODUCT_LENG' ).
    lo_primitive_property->set_edm_name( 'UnitSpecificProductLength' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_SPECIFIC_PRODUCT_WIDT' ).
    lo_primitive_property->set_edm_name( 'UnitSpecificProductWidth' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'UNIT_SPECIFIC_PRODUCT_HEIG' ).
    lo_primitive_property->set_edm_name( 'UnitSpecificProductHeight' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 13 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MEASUREMENT_UNIT' ).
    lo_primitive_property->set_edm_name( 'ProductMeasurementUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_MEASUREMENT_ISOUNI' ).
    lo_primitive_property->set_edm_name( 'ProductMeasurementISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOWER_LEVEL_PACKAGING_UNIT' ).
    lo_primitive_property->set_edm_name( 'LowerLevelPackagingUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LOWER_LEVEL_PACKAGING_ISOU' ).
    lo_primitive_property->set_edm_name( 'LowerLevelPackagingISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MAXIMUM_STACKING_FACTOR' ).
    lo_primitive_property->set_edm_name( 'MaximumStackingFactor' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Byte' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CAPACITY_USAGE' ).
    lo_primitive_property->set_edm_name( 'CapacityUsage' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 15 ) ##NUMBER_OK.
    lo_primitive_property->set_scale( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_UNIT_OF_MEASURE_EA' ).
    lo_navigation_property->set_edm_name( '_ProductUnitOfMeasureEAN' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_UNIT_OF_MEASURE__2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_product_unit_of_measure__2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_UNIT_OF_MEASURE__2'
                                    is_structure              = VALUE tys_product_unit_of_measure__2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductUnitOfMeasureEAN_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_UNIT_OF_MEASURE_EA' ).
    lo_entity_set->set_edm_name( 'ProductUnitOfMeasureEAN' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_UNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSECUTIVE_NUMBER' ).
    lo_primitive_property->set_edm_name( 'ConsecutiveNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 5 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ALTERNATIVE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'AlternativeISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_STANDARD_ID' ).
    lo_primitive_property->set_edm_name( 'ProductStandardID' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 18 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INTERNATIONAL_ARTICLE_NUMB' ).
    lo_primitive_property->set_edm_name( 'InternationalArticleNumberCat' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MAIN_GLOBAL_TRADE_ITEM' ).
    lo_primitive_property->set_edm_name( 'IsMainGlobalTradeItemNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_UNIT_OF_MEASURE' ).
    lo_navigation_property->set_edm_name( '_ProductUnitOfMeasure' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_UNIT_OF_MEASURE_TY' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_valuation_accoun_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_VALUATION_ACCOUN_2'
                                    is_structure              = VALUE tys_product_valuation_accoun_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductValuationAccounting_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_VALUATION_ACCOUNTI' ).
    lo_entity_set->set_edm_name( 'ProductValuationAccounting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMERCIAL_PRICE_1_IN_CO_C' ).
    lo_primitive_property->set_edm_name( 'CommercialPrice1InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMERCIAL_PRICE_2_IN_CO_C' ).
    lo_primitive_property->set_edm_name( 'CommercialPrice2InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COMMERCIAL_PRICE_3_IN_CO_C' ).
    lo_primitive_property->set_edm_name( 'CommercialPrice3InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'DEVALUATION_YEAR_COUNT' ).
    lo_primitive_property->set_edm_name( 'DevaluationYearCount' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE' ).
    lo_primitive_property->set_edm_name( 'FuturePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE_VALIDITY_STAR' ).
    lo_primitive_property->set_edm_name( 'FuturePriceValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LIFOVALUATION_POOL_NUMBER' ).
    lo_primitive_property->set_edm_name( 'LIFOValuationPoolNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_PRICEL_1_IN_CO_CODE_CR' ).
    lo_primitive_property->set_edm_name( 'TaxPricel1InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_PRICE_2_IN_CO_CODE_CRC' ).
    lo_primitive_property->set_edm_name( 'TaxPrice2InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_PRICE_3_IN_CO_CODE_CRC' ).
    lo_primitive_property->set_edm_name( 'TaxPrice3InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'TAX_BASED_PRICES_PRICE_UNI' ).
    lo_primitive_property->set_edm_name( 'TaxBasedPricesPriceUnitQty' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_LIFOAND_FIFORELEVANT' ).
    lo_primitive_property->set_edm_name( 'IsLIFOAndFIFORelevant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION' ).
    lo_navigation_property->set_edm_name( '_ProductValuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_valuation_costin_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_VALUATION_COSTIN_2'
                                    is_structure              = VALUE tys_product_valuation_costin_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductValuationCosting_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_VALUATION_COSTING' ).
    lo_entity_set->set_edm_name( 'ProductValuationCosting' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_IS_COSTED_WITH_QTY' ).
    lo_primitive_property->set_edm_name( 'ProductIsCostedWithQtyStruc' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MATERIAL_RELATED_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'IsMaterialRelatedOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COST_ORIGIN_GROUP' ).
    lo_primitive_property->set_edm_name( 'CostOriginGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COSTING_OVERHEAD_GROUP' ).
    lo_primitive_property->set_edm_name( 'CostingOverheadGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE_1_IN_CO_CODE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice1InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE_2_IN_CO_CODE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice2InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANNED_PRICE_3_IN_CO_CODE' ).
    lo_primitive_property->set_edm_name( 'PlannedPrice3InCoCodeCrcy' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PLND_PRICE_1_VALDTY' ).
    lo_primitive_property->set_edm_name( 'FuturePlndPrice1ValdtyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PLND_PRICE_2_VALDTY' ).
    lo_primitive_property->set_edm_name( 'FuturePlndPrice2ValdtyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PLND_PRICE_3_VALDTY' ).
    lo_primitive_property->set_edm_name( 'FuturePlndPrice3ValdtyDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION' ).
    lo_navigation_property->set_edm_name( '_ProductValuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_valuation_ledger_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_VALUATION_LEDGER_2'
                                    is_structure              = VALUE tys_product_valuation_ledger_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductValuationLedgerAccount_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_VALUATION_LEDGER_A' ).
    lo_entity_set->set_edm_name( 'ProductValuationLedgerAccount' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_ROLE' ).
    lo_primitive_property->set_edm_name( 'CurrencyRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEDGER' ).
    lo_primitive_property->set_edm_name( 'Ledger' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRICE_CONTROL' ).
    lo_primitive_property->set_edm_name( 'ProductPriceControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRICE_UNIT_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'ProductPriceUnitQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOVING_AVERAGE_PRICE' ).
    lo_primitive_property->set_edm_name( 'MovingAveragePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_PRICE' ).
    lo_primitive_property->set_edm_name( 'StandardPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION' ).
    lo_navigation_property->set_edm_name( '_ProductValuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_valuation_ledger_3.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_VALUATION_LEDGER_3'
                                    is_structure              = VALUE tys_product_valuation_ledger_3( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductValuationLedgerPrices_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_VALUATION_LEDGER_P' ).
    lo_entity_set->set_edm_name( 'ProductValuationLedgerPrices' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY_ROLE' ).
    lo_primitive_property->set_edm_name( 'CurrencyRole' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'LEDGER' ).
    lo_primitive_property->set_edm_name( 'Ledger' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRICE_UNIT_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'ProductPriceUnitQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE' ).
    lo_primitive_property->set_edm_name( 'FuturePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'FUTURE_PRICE_VALIDITY_STAR' ).
    lo_primitive_property->set_edm_name( 'FuturePriceValidityStartDate' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Date' ) ##NO_TEXT.
    lo_primitive_property->set_is_nullable( ).
    lo_primitive_property->create_vcs_value_control( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION' ).
    lo_navigation_property->set_edm_name( '_ProductValuation' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_product_valuation_type.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PRODUCT_VALUATION_TYPE'
                                    is_structure              = VALUE tys_product_valuation_type( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProductValuation_Type' ) ##NO_TEXT.
    lo_entity_type->create_complex_prop_for_vcs( 'VALUE_CONTROLS' ).


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_VALUATION' ).
    lo_entity_set->set_edm_name( 'ProductValuation' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_AREA' ).
    lo_primitive_property->set_edm_name( 'ValuationArea' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_TYPE' ).
    lo_primitive_property->set_edm_name( 'ValuationType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 10 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CLASS' ).
    lo_primitive_property->set_edm_name( 'ValuationClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRICE_DETERMINATION_CONTRO' ).
    lo_primitive_property->set_edm_name( 'PriceDeterminationControl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'STANDARD_PRICE' ).
    lo_primitive_property->set_edm_name( 'StandardPrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_PRICE_UNIT_QUANTIT' ).
    lo_primitive_property->set_edm_name( 'ProductPriceUnitQuantity' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 5 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'INVENTORY_VALUATION_PROCED' ).
    lo_primitive_property->set_edm_name( 'InventoryValuationProcedure' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'MOVING_AVERAGE_PRICE' ).
    lo_primitive_property->set_edm_name( 'MovingAveragePrice' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Decimal' ) ##NO_TEXT.
    lo_primitive_property->set_precision( 11 ) ##NUMBER_OK.
    lo_primitive_property->set_scale_variable( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ValuationCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_USAGE_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductUsageType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_ORIGIN_TYPE' ).
    lo_primitive_property->set_edm_name( 'ProductOriginType' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_PRODUCED_INHOUSE' ).
    lo_primitive_property->set_edm_name( 'IsProducedInhouse' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'IS_MARKED_FOR_DELETION' ).
    lo_primitive_property->set_edm_name( 'IsMarkedForDeletion' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'Boolean' ) ##NO_TEXT.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'VALUATION_CLASS_SALES_ORDE' ).
    lo_primitive_property->set_edm_name( 'ValuationClassSalesOrderStock' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROJECT_STOCK_VALUATION_CL' ).
    lo_primitive_property->set_edm_name( 'ProjectStockValuationClass' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CURRENCY' ).
    lo_primitive_property->set_edm_name( 'Currency' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_UNIT' ).
    lo_primitive_property->set_edm_name( 'BaseUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'BASE_ISOUNIT' ).
    lo_primitive_property->set_edm_name( 'BaseISOUnit' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION_ACCOUNTI' ).
    lo_navigation_property->set_edm_name( '_ProductValuationAccounting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_ACCOUN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION_COSTING' ).
    lo_navigation_property->set_edm_name( '_ProductValuationCosting' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_COSTIN_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION_LEDGER_A' ).
    lo_navigation_property->set_edm_name( '_ProductValuationLedgerAccount' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_LEDGER_2' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_VALUATION_LEDGER_P' ).
    lo_navigation_property->set_edm_name( '_ProductValuationLedgerPrices' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_VALUATION_LEDGER_3' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_many_optional ).
    lo_navigation_property->create_vcs_value_control( ).

  ENDMETHOD.


  METHOD def_prod_plnt_international_tr.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PROD_PLNT_INTERNATIONAL_TR'
                                    is_structure              = VALUE tys_prod_plnt_international_tr( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProdPlntInternationalTrade_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PRODUCT_PLANT_INTERNATIONA' ).
    lo_entity_set->set_edm_name( 'ProductPlantInternationalTrade' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PLANT' ).
    lo_primitive_property->set_edm_name( 'Plant' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'CountryOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'REGION_OF_ORIGIN' ).
    lo_primitive_property->set_edm_name( 'RegionOfOrigin' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'CONSUMPTION_TAX_CTRL_CODE' ).
    lo_primitive_property->set_edm_name( 'ConsumptionTaxCtrlCode' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 16 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'EXPORT_AND_IMPORT_PRODUCT' ).
    lo_primitive_property->set_edm_name( 'ExportAndImportProductGroup' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_CASNUMBER' ).
    lo_primitive_property->set_edm_name( 'ProductCASNumber' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 15 ) ##NUMBER_OK.

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PROD_INTL_TRADE_CLASSIFICA' ).
    lo_primitive_property->set_edm_name( 'ProdIntlTradeClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 9 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_PLANT' ).
    lo_navigation_property->set_edm_name( '_ProductPlant' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_PLANT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


  METHOD def_prod_sales_delivery_sale_2.

    DATA:
      lo_complex_property    TYPE REF TO /iwbep/if_v4_pm_cplx_prop,
      lo_entity_type         TYPE REF TO /iwbep/if_v4_pm_entity_type,
      lo_entity_set          TYPE REF TO /iwbep/if_v4_pm_entity_set,
      lo_navigation_property TYPE REF TO /iwbep/if_v4_pm_nav_prop,
      lo_primitive_property  TYPE REF TO /iwbep/if_v4_pm_prim_prop.


    lo_entity_type = mo_model->create_entity_type_by_struct(
                                    iv_entity_type_name       = 'PROD_SALES_DELIVERY_SALE_2'
                                    is_structure              = VALUE tys_prod_sales_delivery_sale_2( )
                                    iv_do_gen_prim_props         = abap_true
                                    iv_do_gen_prim_prop_colls    = abap_true
                                    iv_do_add_conv_to_prim_props = abap_true ).

    lo_entity_type->set_edm_name( 'ProdSalesDeliverySalesTax_Type' ) ##NO_TEXT.


    lo_entity_set = lo_entity_type->create_entity_set( 'PROD_SALES_DELIVERY_SALES' ).
    lo_entity_set->set_edm_name( 'ProdSalesDeliverySalesTax' ) ##NO_TEXT.


    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT' ).
    lo_primitive_property->set_edm_name( 'Product' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 40 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'COUNTRY' ).
    lo_primitive_property->set_edm_name( 'Country' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 3 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_TAX_CATEGORY' ).
    lo_primitive_property->set_edm_name( 'ProductSalesTaxCategory' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_SALES_ORG' ).
    lo_primitive_property->set_edm_name( 'ProductSalesOrg' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 4 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_DISTRIBUTION_CHNL' ).
    lo_primitive_property->set_edm_name( 'ProductDistributionChnl' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 2 ) ##NUMBER_OK.
    lo_primitive_property->set_is_key( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'PRODUCT_TAX_CLASSIFICATION' ).
    lo_primitive_property->set_edm_name( 'ProductTaxClassification' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->set_max_length( 1 ) ##NUMBER_OK.

    lo_complex_property = lo_entity_type->create_complex_property( 'SAP_MESSAGES' ).
    lo_complex_property->set_edm_name( 'SAP__Messages' ) ##NO_TEXT.
    lo_complex_property->set_complex_type( 'SAP_MESSAGE' ).
    lo_complex_property->set_is_collection( ).

    lo_primitive_property = lo_entity_type->get_primitive_property( 'ETAG' ).
    lo_primitive_property->set_edm_name( 'ETAG' ) ##NO_TEXT.
    lo_primitive_property->set_edm_type( 'String' ) ##NO_TEXT.
    lo_primitive_property->use_as_etag( ).
    lo_primitive_property->set_is_technical( ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_2' ).
    lo_navigation_property->set_edm_name( '_Product' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_TYPE' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

    lo_navigation_property = lo_entity_type->create_navigation_property( 'PRODUCT_SALES_DELIVERY' ).
    lo_navigation_property->set_edm_name( '_ProductSalesDelivery' ) ##NO_TEXT.
    lo_navigation_property->set_target_entity_type_name( 'PRODUCT_SALES_DELIVERY_TYP' ).
    lo_navigation_property->set_target_multiplicity( /iwbep/if_v4_pm_types=>gcs_nav_multiplicity-to_one ).

  ENDMETHOD.


ENDCLASS.
