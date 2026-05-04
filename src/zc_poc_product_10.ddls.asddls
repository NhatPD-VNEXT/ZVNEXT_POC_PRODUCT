@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product EWM Warehouse'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_10
  as projection on ZI_POC_PRODUCT_10
{
  key Product,
  key Warehouse,
  key Businesspartner,
      Businesspartnerforedit,
      Plant,
      Warehouseforedit,
      Productuuid,
      Supplychainunituuid,
      Businesspartneruuid,
      Ewmproductprocessblockprofile,
      Ewmwarehouseprocesstype,
      Ewmproductloadcategory,
      Ewmphysinventorycountingcycle,
      Requiredminshelflife,
      @Semantics.quantity.unitOfMeasure: 'shelflifedurationunit'
      Requiredminshelflifecalc,
      Ewmprodbackflushwthdrwlmethod,
      Ewmkitquantitycorrelation,
      Ewmiscnsmpnrlvtforvaladdedsrvc,
      Adjustmentprofile,
      Ewmmrchdsdistrqtyclassfctn,
      Preferredunitofmeasure,
      Ewmqltymgmtgdsrcptblkctrltext,
      Ewmisdocumentarybatchtext,
      Ewmqltymgmtgdsrcptblkctrlkey,
      Isdocumentarybatch,
      Ewmqualityinspectiongroup,
      Ewmptwycontrolstrategy,
      Ewmstoragesectionmethod,
      Storagebintype,
      Productbulkstoragemethod,
      Ewmstockremovalcontrolstrategy,
      Ewmstockdeterminationgroup,
      Prodisrlvtfortwosteppicking,
      Ewmstggareadeterminationgroup,
      Shelflifedurationunit,
      /* Associations */
      _Product: redirected to parent ZC_POC_PRODUCT
}
