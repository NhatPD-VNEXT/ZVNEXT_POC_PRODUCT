@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Plant'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_04
  as select from zproduct_04
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                       as Product,
key plant                         as Plant,
    productforedit                as ProductForEdit,
    plantforedit                  as PlantForEdit,
    configurableproduct           as ConfigurableProduct,
    profilecode                   as ProfileCode,
    profilevaliditystartdate      as ProfileValidityStartDate,
    periodtype                    as PeriodType,
    fiscalyearvariant             as FiscalYearVariant,
    cast( ismarkedfordeletion     as abap_boolean )  as IsMarkedForDeletion,
    plantcategory                 as PlantCategory,
    fiscalmonthcurrentperiod      as FiscalMonthCurrentPeriod,
    fiscalyearcurrentperiod       as FiscalYearCurrentPeriod,
    goodsissueunit                as GoodsIssueUnit,
    productcfopcategory           as ProductCfopCategory,
    configurationsideeffect       as ConfigurationSideEffect,
    profitcenter                  as ProfitCenter,
    isbatchmanagementrequired     as IsBatchManagementRequired,
    serialnumberprofile           as SerialNumberProfile,
    isnegativestockallowed        as IsNegativeStockAllowed,
    stockdeterminationgroup       as StockDeterminationGroup,
    controllingarea               as ControllingArea,
    cast( isvariantconfigurationenabled as abap_boolean ) as IsVariantConfigurationEnabled,
    productisexcisetaxrelevant    as ProductIsExciseTaxRelevant,

    @Semantics.quantity.unitOfMeasure: 'ProductControlTemperatureUnit'
    productmaxcontroltemperature  as ProductMaxControlTemperature,

    @Semantics.quantity.unitOfMeasure: 'ProductControlTemperatureUnit'
    productmincontroltemperature  as ProductMinControlTemperature,

    productcontroltemperatureunit as ProductControlTemperatureUnit,
    productfreightgroup           as ProductFreightGroup,
    countryoforigin               as CountryOfOrigin,
      _Product
}
