@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Valuation'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_07
  as projection on ZI_POC_PRODUCT_07
{
  key Product,
  key ValuationArea,
  key ValuationType,
      ValuationAreaForEdit,
      ValuationTypeForEdit,
      IsMarkedForDeletion,
      ValuationClass,
      PriceDeterminationControl,
      PriceUnitQty,
      InventoryValuationProcedure,
      ValuationCategory,
      ProductUsageType,
      ProductOriginType,
      IsProducedInHouse,
      ProdCostEstNumber,
      ProductType,
      ValuationClassSalesOrderStock,
      ProjectStockValuationClass,
      PriceLastChangeDate,
      Currency,
      CharcValue,
      FiscalMonthCurrentPeriod,
      FiscalYearCurrentPeriod,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
