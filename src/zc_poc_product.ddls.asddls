@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_POC_PRODUCT
  provider contract transactional_query
  as projection on ZI_POC_PRODUCT
{
  key Product,
      ProductExternalId,
      @ObjectModel:{
        text: {
          element: ['ProductDescription'],
          control: #NONE
        }
       }
      ProductForEdit,
      ProductDescription,
      ProductTypeCode,
      CrossPlantStatus,
      CrossPlantStatusValidityDate,
      ProductGroup,
      BaseUnit,
      IsMarkedForDeletion,
      ProductOldId,
      @Semantics.quantity.unitOfMeasure: 'WeightUnit'
      GrossWeight,
      WeightUnit,
      @Semantics.quantity.unitOfMeasure: 'VolumeUnit'
      NetWeight,
      VolumeUnit,
      @Semantics.quantity.unitOfMeasure: 'OverCapacityToleranceUnit'
      MaterialVolume,
      CompetitorId,
      ItemCategoryGroup,
      ProductHierarchy,
      Division,
      BasicMaterial,
      AnpCode,
      Brand,
      ValidityStartDate,
      ProdNoInGenProdInPrepackProd,
      SizeOrDimensionText,
      IndustryStandardName,
      ProductStandardId,
      InternationalArticleNumberCat,
      ProductIsConfigurable,
      IsBatchManagementRequired,
      ExternalProductGroup,
      CrossPlantConfigurableProduct,
      SerialNoExplicitnessLevel,
      ProductManufacturerNumber,
      ManufacturerNumber,
      ManufacturerPartProfile,
      @Semantics.imageUrl: true
      ProductImageUrl,
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      BaseUnitSpecificProductLength,
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      BaseUnitSpecificProductWidth,
      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      BaseUnitSpecificProductHeight,
      ProductMeasurementUnit,
      ArticleCategory,
      ContentUnit,
      @Semantics.quantity.unitOfMeasure: 'ContentUnit'
      NetContent,
      ComparisonPriceQuantity,
      @Semantics.quantity.unitOfMeasure: 'ContentUnit'
      GrossContent,
      ProductValidEndDate,
      AssortmentListType,
      HasTextilePartsWThanimalOrigin,
      ProductSeasonUsageCategory,
      ServiceAgreement,
      RegionOfOrigin,
      CountryOfOrigin,
      GoodsIssueUnit,
      ConsumptionValueCategory,
      ValuationClass,
      ValuationMargin,
      ChangeNumber,
      MaterialRevisionLevel,
      HandlingIndicator,
      WarehouseProductGroup,
      WarehouseStorageCondition,
      StandardHandlingUnitType,
      SerialNumberProfile,
      AdjustmentProfile,
      IsPilferable,
      IsRelevantForHzds,
      @Semantics.quantity.unitOfMeasure: 'TimeUnitForQuarantinePeriod'
      QuarantinePeriod,
      TimeUnitForQuarantinePeriod,
      QualityInspectionGroup,
      HandlingUnitType,
      MaximumCapacity,
      OverCapacityTolerance,
      HasVariableTareWeight,
      UnitForMaxPackagingDimensions,
      @Semantics.quantity.unitOfMeasure: 'UnitForMaxPackagingDimensions'
      MaximumPackagingLength,
      @Semantics.quantity.unitOfMeasure: 'UnitForMaxPackagingDimensions'
      MaximumPackagingWidth,
      @Semantics.quantity.unitOfMeasure: 'UnitForMaxPackagingDimensions'
      MaximumPackagingHeight,
      HasEmptiesBom,
      ClassificationSideEffect,
      ConfigurationSideEffect,
      AuthorizationGroup,
      IsChemicalComplianceRelevant,
      HasGlobalHierarchy,
      IsVariantConfigurationEnabled,
      NumberOfProductVariants,
      NumberOfProcessedProdVariants,
      OverCapacityToleranceUnit,
      ReferenceProduct,
      SalesUnit,
      LaboratoryOrDesignOffice,
      PackagingMaterialGroup,
      ProductDocumentNumber,
      ProductDocumentVersion,
      ProductDocumentType,
      ProductDocumentChangeNumber,
      ProductDocumentPageCount,
      ProductDocumentPageNumber,
      ProductDocumentPageFormat,
      OwnInventoryManagedProduct,
      ProductIsLocked,
      IsApproval,
      CreatedBy,
      CreatedAt,
      LastUpdatedBy,
      LastUpdatedAt,
      LocalLastUpdatedAt,

      /* Associations */
      _ProductDescription       : redirected to composition child ZC_POC_PRODUCT_01,
      _ProductSales             : redirected to composition child ZC_POC_PRODUCT_02,
      _ProductProcurement       : redirected to composition child ZC_POC_PRODUCT_03,
      _ProductPlant             : redirected to composition child ZC_POC_PRODUCT_04,
      _ProductSalesDelivery     : redirected to composition child ZC_POC_PRODUCT_05,
      _ProductUnitOfMeasure     : redirected to composition child ZC_POC_PRODUCT_06,
      _ProductValuation         : redirected to composition child ZC_POC_PRODUCT_07,
      _ProductStorage           : redirected to composition child ZC_POC_PRODUCT_08,
      _ProductQualityManagement : redirected to composition child ZC_POC_PRODUCT_09,
      _ProductEWMWarehouse      : redirected to composition child ZC_POC_PRODUCT_10,
      _ProductChangeMaster      : redirected to composition child ZC_POC_PRODUCT_11,
      _ProductBasicText         : redirected to composition child ZC_POC_PRODUCT_12,
      _ProductInspectionText    : redirected to composition child ZC_POC_PRODUCT_13,
      _ProductPurchaseOrderText : redirected to composition child ZC_POC_PRODUCT_14,
      _ProductInternalComment   : redirected to composition child ZC_POC_PRODUCT_15
}
