CLASS zcl_gen_data DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_gen_data IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lt_products TYPE TABLE OF zproduct,
          lv_tstmpl   TYPE abp_creation_tstmpl.

    GET TIME STAMP FIELD lv_tstmpl.

    DELETE FROM zproduct.

    lt_products = VALUE #(
      (
        client                           = sy-mandt

        " Key
        product                          = '000000000000000075'   " Product

        " Basic
        productforedit                   = '000000000000000075'   " ProductForEdit
        producttypecode                  = 'FERT'                 " ProductType
        crossplantstatus                 = ''                     " CrossPlantStatus
        crossplantstatusvaliditydate     = '00000000'             " CrossPlantStatusValidityDate
        validitystartdate                = '20260402'             " ValidityStartDate

        " Creation info
        created_by                       = 'CB9980000010'         " CreatedByUser
        created_at                       = '20260402025420'       " CreationDateTime

        " Change info
        last_updated_by                  = 'CB9980000010'         " LastChangedByUser
        last_updated_at                  = '20260402025420'       " LastChangeDateTime

        " Flags
        ismarkedfordeletion              = ''                     " IsMarkedForDeletion

        " Old ID
        productoldid                     = 'D_0001'               " ProductOldID

        " Weight
        grossweight                      = '7.000'                " GrossWeight
        weightunit                       = 'KG'                   " WeightUnit
        netweight                        = '5.000'                " NetWeight

        " Org / logistics
        productgroup                     = 'L004'                 " ProductGroup
        baseunit                         = 'ST'                   " BaseUnit
        itemcategorygroup                = 'NORM'                 " ItemCategoryGroup
        division                         = '00'                   " Division

        " Volume
        volumeunit                       = 'ML'                   " VolumeUnit
        materialvolume                   = '1220.000'             " MaterialVolume

        " Size / text
        sizeordimensiontext              = '9X12'                 " SizeOrDimensionText
        industrystandardname             = 'TEST122'              " IndustryStandardName
        productstandardid                = '2150000000000'        " ProductStandardID

        " Flags
        productisconfigurable            = 'X'                    " ProductIsConfigurable
        isbatchmanagementrequired        = 'X'                    " IsBatchManagementRequired

        " Manufacturer
        productmanufacturernumber        = '123'                  " ProductManufacturerNumber
        manufacturernumber               = '0015100088'           " ManufacturerNumber
        manufacturerpartprofile          = 'IMPN'                 " ManufacturerPartProfile

        " Warehouse / handling
        warehouseproductgroup            = 'SC1'
        handlingunittype                 = 'SC1'

        " Quarantine
        quarantineperiod                 = '2'
        timeunitforquarantineperiod      = '10'

        " Packaging / dimensions
        maximumpackaginglength           = '1000.000'
        maximumpackagingwidth            = '2.000'
        maximumpackagingheight           = '3000.000'
        maximumcapacity                  = '1000.000'
        overcapacitytolerance            = '1.0'
        unitformaxpackagingdimensions    = 'M'

        baseunitspecificproductlength    = '100.000'
        baseunitspecificproductwidth     = '0.000'
        baseunitspecificproductheight    = '100.000'
        productmeasurementunit           = 'M'

        " Content
        netcontent                       = '0.000'
        comparisonpricequantity          = '0'
        grosscontent                     = '0.000'

        " Validity end
        productvalidenddate              = '99991231'

        " Description
        productdescription               = 'ELECTRIC FAN_test'

        " Authorization
        authorizationgroup               = 'G1'

        " Compliance
        ischemicalcompliancerelevant     = 'Y'

        " Lock
        productislocked                  = ''
      )
    ).


    INSERT zproduct FROM TABLE @lt_products.

    DATA: lt_products_08 TYPE TABLE OF zproduct_08.

    DELETE FROM zproduct_08.

    lt_products_08 = VALUE #(
      (
        client                    = sy-mandt

        " Key
        product                   = '000000000000000075'

        " Storage info
        storageconditions         = '20'
        temperatureconditionind   = ''          " empty
        hazardousmaterialnumber   = ''          " empty

        " Quantity
        nmbrofgrorgislipstoprintqty = '1.000'

        " Label
        labeltype                 = 'M7'
        labelform                 = 'E1'

        " Shelf life
        minremainingshelflife     = '2'
        expirationdate            = 'B'
        totalshelflife            = '6'
        totalshelflifestoragepercent = '0'

        shelflifeexpirationdateperiod = ''      " empty
        shelflifeexprtndaterndingrule = ''      " empty

        " Storage
        storagebininstruction     = ''          " empty

        " Org
        authorizationgroup        = 'G1'
        baseunit                  = 'ST'

        " ⚠️ QUAN TRỌNG – thêm unit để tránh lỗi
*        shelflifedurationunit     = 'D'         " Day (chuẩn SAP)
      )
    ).

    INSERT zproduct_08 FROM TABLE @lt_products_08.

    IF sy-subrc = 0.
      out->write( 'Insert Storage thành công (fixed CSV).' ).
    ELSE.
      out->write( 'Insert Storage lỗi.' ).
    ENDIF.

    DATA(lo_uom) = cl_uom_maintenance=>get_instance( ).

    DATA(ls_unit) = VALUE cl_uom_maintenance=>ty_uom_cre_ts(
        commercial  = 'ST'        " UnitOfMeasure
        technical   = 'ST'        " SAP code
        numerator   = '1'
        denominator = '1'
        dec_disp    = '0'
        long_text   = 'PC'        " UnitOfMeasure_E (approx mapping)
    ).

    TRY.
        lo_uom->create(
          EXPORTING
            unit_dimid  = 'AAAADL'
            unit_int    = 'ST'
            unit_cre_ts = ls_unit
          IMPORTING
            error       = DATA(lv_error)
        ).

      CATCH cx_uom_error INTO DATA(lo_error).
        out->write( |Exception raised| ).
        out->write( lo_error->get_text( ) ).
    ENDTRY.

    IF lv_error = abap_true.
      out->write( |Error occurred while saving the data in the database| ).
    ELSE.
      out->write( |Unit created successfully| ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
