@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Valuation'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_07
  as select from zproduct_07
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                       as Product,
  key valuationarea                 as ValuationArea,
  key valuationtype                 as ValuationType,
      valuationareaforedit          as ValuationAreaForEdit,
      valuationtypeforedit          as ValuationTypeForEdit,
      ismarkedfordeletion           as IsMarkedForDeletion,
      valuationclass                as ValuationClass,
      pricedeterminationcontrol     as PriceDeterminationControl,
      priceunitqty                  as PriceUnitQty,
      inventoryvaluationprocedure   as InventoryValuationProcedure,
      valuationcategory             as ValuationCategory,
      productusagetype              as ProductUsageType,
      productorigintype             as ProductOriginType,
      isproducedinhouse             as IsProducedInHouse,
      prodcostestnumber             as ProdCostEstNumber,
      producttype                   as ProductType,
      valuationclasssalesorderstock as ValuationClassSalesOrderStock,
      projectstockvaluationclass    as ProjectStockValuationClass,
      pricelastchangedate           as PriceLastChangeDate,
      currency                      as Currency,
      charcvalue                    as CharcValue,
      fiscalmonthcurrentperiod      as FiscalMonthCurrentPeriod,
      fiscalyearcurrentperiod       as FiscalYearCurrentPeriod,
      _Product
}
