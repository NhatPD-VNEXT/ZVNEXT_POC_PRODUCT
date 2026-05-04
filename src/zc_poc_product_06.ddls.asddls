@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Unit Of Measure'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_06
  as projection on ZI_POC_PRODUCT_06
{
  key Product,
  key AlternativeUnit,
      QuantityNumerator,
      QuantityDenominator,
      @Semantics.quantity.unitOfMeasure: 'VolumeUnit'
      ProductVolume,
      VolumeUnit,
      @Semantics.quantity.unitOfMeasure: 'WeightUnit'
      GrossWeight,
      WeightUnit,
      GlobalTradeItemNumber,
      GlobalTradeItemNumberCategory,
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      UnitSpecificProductLength,
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      UnitSpecificProductWidth,
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      UnitSpecificProductHeight,
      ProductMeasurementUnit,
      LowerLevelPackagingUnit,
      MaximumStackingFactor,
      CapacityUsage,
      BaseUnit,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
