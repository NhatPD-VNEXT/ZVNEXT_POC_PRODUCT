@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Plant'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_04
  as projection on ZI_POC_PRODUCT_04
{
  key Product,
  key Plant,
      ProductForEdit,
      PlantForEdit,
      ConfigurableProduct,
      ProfileCode,
      ProfileValidityStartDate,
      PeriodType,
      FiscalYearVariant,
      IsMarkedForDeletion,
      PlantCategory,
      FiscalMonthCurrentPeriod,
      FiscalYearCurrentPeriod,
      GoodsIssueUnit,
      ProductCfopCategory,
      ConfigurationSideEffect,
      ProfitCenter,
      IsBatchManagementRequired,
      SerialNumberProfile,
      IsNegativeStockAllowed,
      StockDeterminationGroup,
      ControllingArea,
      IsVariantConfigurationEnabled,
      ProductIsExciseTaxRelevant,
      @Semantics.quantity.unitOfMeasure: 'ProductControlTemperatureUnit'
      ProductMaxControlTemperature,
      @Semantics.quantity.unitOfMeasure: 'ProductControlTemperatureUnit'
      ProductMinControlTemperature,
      ProductControlTemperatureUnit,
      ProductFreightGroup,
      CountryOfOrigin,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
