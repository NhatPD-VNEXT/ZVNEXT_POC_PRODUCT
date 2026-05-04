@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Sales'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_02
  as projection on ZI_POC_PRODUCT_02
{
  key Product,
      SalesStatus,
      SalesStatusValidityDate,
      TaxClassification,
      TransportationGroup,
      PricingReferenceProduct,
      VariantsPricingProfile,
      IsVariantPriceAllowed,
      @Semantics.quantity.unitOfMeasure: 'AllowedPackagingWeightQtyUnit'
      AllowedPackagingWeightQty,
      AllowedPackagingWeightQtyUnit,
      LoadingGroup,
      AuthorizationGroup,
      @Semantics.quantity.unitOfMeasure: 'AllowedPackagingVolumeQtyUnit'
      AllowedPackagingVolumeQty,
      AllowedPackagingVolumeQtyUnit,
      DistrCntrSaleStartDate,
      DistrCntrSaleEndDate,
      StoreSaleStartDate,
      StoreSaleEndDate,
      ExcessWeightTolerance,
      ExcessVolumeTolerance,
      StackingFactor,
      IsClosedPackagingMaterial,
      VolumeMaximumLevel,
      PackagingMaterialType,
      @Semantics.quantity.unitOfMeasure: 'ServiceDurationUnit'
      ServiceDuration,
      ServiceDurationUnit,
      ServiceProfile,
      ResponseProfile,
      CaBillgCycle,
      SubscrpnProdBillgCycDetn,
      ContractAutoRenewalType,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
