@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Procurement'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_03
  as projection on ZI_POC_PRODUCT_03
{
  key Product,
      PurchaseOrderQuantityUnit,
      VarblPurOrdUnitStatus,
      PurchasingAcknProfile,
      SourceOfSupplyCategory,
      PurchasingGroup,
      AuthorizationGroup,
      StoreListingStartDate,
      StoreListingEndDate,
      DistrCntrListingStartDate,
      DistrCntrListingEndDate,
      DistrCntrListingProcedure,
      StoreListingProcedure,
      AssortmentGrade,
      ProdExtAssortmentPriority,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
