@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Sales Delivery'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_05
  as projection on ZI_POC_PRODUCT_05
{
  key Product,
  key ProductSalesOrg,
  key ProductDistributionChnl,
      ProductForEdit,
      ProductSalesOrgForEdit,
      ProductDistributionChnlForEdit,
      IsMarkedForDeletion,
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      MinimumOrderQuantity,
      SupplyingPlant,
      PriceSpecificationProductGroup,
      AccountDetnProductGroup,
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      DeliveryNoteProcMinDelivQty,
      ItemCategoryGroup,
      DeliveryQuantityUnit,
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      DeliveryQuantity,
      ProductSalesStatus,
      ProductSalesStatusValidityDate,
      SalesMeasureUnit,
      ProductHierarchy,
      FirstSalesSpecProductGroup,
      SecondSalesSpecProductGroup,
      ThirdSalesSpecProductGroup,
      FourthSalesSpecProductGroup,
      FifthSalesSpecProductGroup,
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      MinimumMakeToOrderOrderQty,
      LogisticsStatisticsGroup,
      VolumeRebateGroup,
      ProductCommissionGroup,
      CashDiscountIsDeductible,
      PricingReferenceProduct,
      AssortmentGrade,
      ProdExtAssortmentPriority,
      StoreListingProcedure,
      DistrCntrListingProcedure,
      StoreListingStartDate,
      StoreListingEndDate,
      DistrCntrListingStartDate,
      DistrCntrListingEndDate,
      StoreSaleStartDate,
      StoreSaleEndDate,
      DistrCntrSaleStartDate,
      DistrCntrSaleEndDate,
      RoundingProfile,
      ProductUnitGroup,
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      MaxDeliveryQtyStoreOrder,
      PriceFixingCategory,
      VariableSalesUnitIsNotAllowed,
      CompetitionPressureCategory,
      HasActiveHierarchy,
      BaseUnit,
      ProdIsEntlMtrlvt,
      SubscrpnContrDfltDuration,
      SubscrpnContrAltvDuration1,
      SubscrpnContrAltvDuration2,
      SubscrpnContrDurationUnit,
      SubscrpnContrDfltExtnDurn,
      SubscrpnContrAltvExtnDurn1,
      SubscrpnContrAltvExtnDurn2,
      SubscrpnContrExtnDurnUnit,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
