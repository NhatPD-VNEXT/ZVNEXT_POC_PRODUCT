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

    MODIFY ENTITIES OF zi_poc_product
              ENTITY Product
                 UPDATE FIELDS ( IsApproval )
                    WITH VALUE #( ( Product    = 'FG233325'
                                    IsApproval = 'X'
                                    %control-IsApproval     = if_abap_behv=>mk-on
                                  ) )
                  FAILED DATA(ls_failed)
                  REPORTED DATA(ls_reported).
    COMMIT ENTITIES.

*    READ ENTITIES OF zi_poc_product
*      ENTITY Product
*        EXECUTE syncToCloud
*          FROM VALUE #( ( %cid = 'OpID_001'
*                          %param = VALUE #(  product = 'FG233325' ) ) )
*      RESULT DATA(lt_result)
*      FAILED DATA(ls_failed)
*      REPORTED DATA(ls_reported).
  ENDMETHOD.
ENDCLASS.
