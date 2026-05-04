@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Procurement'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_03
  as select from zproduct_03
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                   as Product,
    purchaseorderquantityunit as PurchaseOrderQuantityUnit,
    varblpurordunitstatus     as VarblPurOrdUnitStatus,
    purchasingacknprofile     as PurchasingAcknProfile,
    sourceofsupplycategory    as SourceOfSupplyCategory,
    purchasinggroup           as PurchasingGroup,
    authorizationgroup        as AuthorizationGroup,
    storelistingstartdate     as StoreListingStartDate,
    storelistingenddate       as StoreListingEndDate,
    distrcntrlistingstartdate as DistrCntrListingStartDate,
    distrcntrlistingenddate   as DistrCntrListingEndDate,
    distrcntrlistingprocedure as DistrCntrListingProcedure,
    storelistingprocedure     as StoreListingProcedure,
    assortmentgrade           as AssortmentGrade,
    prodextassortmentpriority as ProdExtAssortmentPriority,
      _Product
}
