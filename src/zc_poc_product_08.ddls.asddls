@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Storage'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_08
  as projection on ZI_POC_PRODUCT_08
{
  key Product,
      StorageConditions,
      TemperatureConditionInd,
      HazardousMaterialNumber,
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      NmbrOfGrOrgIsLipsToPrintQty,
      LabelType,
      LabelForm,
      MinRemainingShelfLife,
      ExpirationDate,
      StorageBinInstruction,
      TotalShelfLifeStoragePercent,
      ShelfLifeExpirationDatePeriod,
      ShelfLifeExprtnDateRndingRule,
      AuthorizationGroup,
      BaseUnit,
      ShelfLifeDurationUnit,
      TotalShelfLife,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
