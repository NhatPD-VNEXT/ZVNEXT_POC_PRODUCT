@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product EWM Warehouse'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_10
  as select from zproduct_10
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                        as Product,
  key warehouse                      as Warehouse,
  key businesspartner                as Businesspartner,
      businesspartnerforedit         as Businesspartnerforedit,
      plant                          as Plant,
      warehouseforedit               as Warehouseforedit,
      productuuid                    as Productuuid,
      supplychainunituuid            as Supplychainunituuid,
      businesspartneruuid            as Businesspartneruuid,
      ewmproductprocessblockprofile  as Ewmproductprocessblockprofile,
      ewmwarehouseprocesstype        as Ewmwarehouseprocesstype,
      ewmproductloadcategory         as Ewmproductloadcategory,
      ewmphysinventorycountingcycle  as Ewmphysinventorycountingcycle,
      requiredminshelflife           as Requiredminshelflife,
      @Semantics.quantity.unitOfMeasure: 'shelflifedurationunit'
      requiredminshelflifecalc       as Requiredminshelflifecalc,
      ewmprodbackflushwthdrwlmethod  as Ewmprodbackflushwthdrwlmethod,
      ewmkitquantitycorrelation      as Ewmkitquantitycorrelation,
      ewmiscnsmpnrlvtforvaladdedsrvc as Ewmiscnsmpnrlvtforvaladdedsrvc,
      adjustmentprofile              as Adjustmentprofile,
      ewmmrchdsdistrqtyclassfctn     as Ewmmrchdsdistrqtyclassfctn,
      preferredunitofmeasure         as Preferredunitofmeasure,
      ewmqltymgmtgdsrcptblkctrltext  as Ewmqltymgmtgdsrcptblkctrltext,
      ewmisdocumentarybatchtext      as Ewmisdocumentarybatchtext,
      ewmqltymgmtgdsrcptblkctrlkey   as Ewmqltymgmtgdsrcptblkctrlkey,
      isdocumentarybatch             as Isdocumentarybatch,
      ewmqualityinspectiongroup      as Ewmqualityinspectiongroup,
      ewmptwycontrolstrategy         as Ewmptwycontrolstrategy,
      ewmstoragesectionmethod        as Ewmstoragesectionmethod,
      storagebintype                 as Storagebintype,
      productbulkstoragemethod       as Productbulkstoragemethod,
      ewmstockremovalcontrolstrategy as Ewmstockremovalcontrolstrategy,
      ewmstockdeterminationgroup     as Ewmstockdeterminationgroup,
      prodisrlvtfortwosteppicking    as Prodisrlvtfortwosteppicking,
      ewmstggareadeterminationgroup  as Ewmstggareadeterminationgroup,
      shelflifedurationunit          as Shelflifedurationunit,
      _Product
}
