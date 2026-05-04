@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Unit Of Measure'
define view entity ZI_POC_PRODUCT_06
  as select from zproduct_06
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{

  key product                       as Product,
  key alternativeunit               as AlternativeUnit,
      quantitynumerator             as QuantityNumerator,
      quantitydenominator           as QuantityDenominator,
      
      @Semantics.quantity.unitOfMeasure: 'VolumeUnit'
      productvolume                 as ProductVolume,
      volumeunit                    as VolumeUnit,
      
      @Semantics.quantity.unitOfMeasure: 'WeightUnit'
      grossweight                   as GrossWeight,
      weightunit                    as WeightUnit,
      
      globaltradeitemnumber         as GlobalTradeItemNumber,
      globaltradeitemnumbercategory as GlobalTradeItemNumberCategory,
      
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      unitspecificproductlength     as UnitSpecificProductLength,
      
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      unitspecificproductwidth      as UnitSpecificProductWidth,
      
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      unitspecificproductheight     as UnitSpecificProductHeight,
      
      productmeasurementunit        as ProductMeasurementUnit,
      lowerlevelpackagingunit       as LowerLevelPackagingUnit,
      maximumstackingfactor         as MaximumStackingFactor,
      capacityusage                 as CapacityUsage,
      baseunit                      as BaseUnit,
      _Product
}
