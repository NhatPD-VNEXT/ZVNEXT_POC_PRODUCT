@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Header'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_POC_PRODUCT
  as select from zproduct
  composition [0..*] of ZI_POC_PRODUCT_01 as _ProductDescription
  composition [0..1] of ZI_POC_PRODUCT_02 as _ProductSales
  composition [0..1] of ZI_POC_PRODUCT_03 as _ProductProcurement
  composition [0..*] of ZI_POC_PRODUCT_04 as _ProductPlant
  composition [0..*] of ZI_POC_PRODUCT_05 as _ProductSalesDelivery
  composition [0..*] of ZI_POC_PRODUCT_06 as _ProductUnitOfMeasure
  composition [0..*] of ZI_POC_PRODUCT_07 as _ProductValuation
  composition [0..1] of ZI_POC_PRODUCT_08 as _ProductStorage
  composition [0..1] of ZI_POC_PRODUCT_09 as _ProductQualityManagement
  composition [0..*] of ZI_POC_PRODUCT_10 as _ProductEWMWarehouse
  composition [0..*] of ZI_POC_PRODUCT_11 as _ProductChangeMaster
  composition [0..*] of ZI_POC_PRODUCT_12 as _ProductBasicText
  composition [0..*] of ZI_POC_PRODUCT_13 as _ProductInspectionText
  composition [0..*] of ZI_POC_PRODUCT_14 as _ProductPurchaseOrderText
  composition [0..*] of ZI_POC_PRODUCT_15 as _ProductInternalComment

{
  key product                        as Product,
      productexternalid              as ProductExternalId,
      productforedit                 as ProductForEdit,
      productdescription             as ProductDescription,
      producttypecode                as ProductTypeCode,
      crossplantstatus               as CrossPlantStatus,
      crossplantstatusvaliditydate   as CrossPlantStatusValidityDate,
      productgroup                   as ProductGroup,
      baseunit                       as BaseUnit,
      ismarkedfordeletion            as IsMarkedForDeletion,
      productoldid                   as ProductOldId,

      @Semantics.quantity.unitOfMeasure: 'WeightUnit'
      grossweight                    as GrossWeight,
      weightunit                     as WeightUnit,

      @Semantics.quantity.unitOfMeasure: 'VolumeUnit'
      netweight                      as NetWeight,
      volumeunit                     as VolumeUnit,

      @Semantics.quantity.unitOfMeasure: 'OverCapacityToleranceUnit'
      materialvolume                 as MaterialVolume,

      competitorid                   as CompetitorId,
      itemcategorygroup              as ItemCategoryGroup,
      producthierarchy               as ProductHierarchy,
      division                       as Division,
      basicmaterial                  as BasicMaterial,
      anpcode                        as AnpCode,
      brand                          as Brand,
      validitystartdate              as ValidityStartDate,
      prodnoingenprodinprepackprod   as ProdNoInGenProdInPrepackProd,
      sizeordimensiontext            as SizeOrDimensionText,
      industrystandardname           as IndustryStandardName,
      productstandardid              as ProductStandardId,
      internationalarticlenumbercat  as InternationalArticleNumberCat,
      productisconfigurable          as ProductIsConfigurable,
      isbatchmanagementrequired      as IsBatchManagementRequired,
      externalproductgroup           as ExternalProductGroup,
      crossplantconfigurableproduct  as CrossPlantConfigurableProduct,
      serialnoexplicitnesslevel      as SerialNoExplicitnessLevel,
      productmanufacturernumber      as ProductManufacturerNumber,
      manufacturernumber             as ManufacturerNumber,
      manufacturerpartprofile        as ManufacturerPartProfile,
      productimageurl                as ProductImageUrl,

      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      baseunitspecificproductlength  as BaseUnitSpecificProductLength,

      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      baseunitspecificproductwidth   as BaseUnitSpecificProductWidth,

      @Semantics.quantity.unitOfMeasure: 'ProductMeasurementUnit'
      baseunitspecificproductheight  as BaseUnitSpecificProductHeight,

      productmeasurementunit         as ProductMeasurementUnit,
      articlecategory                as ArticleCategory,
      contentunit                    as ContentUnit,

      @Semantics.quantity.unitOfMeasure: 'ContentUnit'
      netcontent                     as NetContent,

      comparisonpricequantity        as ComparisonPriceQuantity,

      @Semantics.quantity.unitOfMeasure: 'ContentUnit'
      grosscontent                   as GrossContent,

      productvalidenddate            as ProductValidEndDate,
      assortmentlisttype             as AssortmentListType,
      hastextilepartswthanimalorigin as HasTextilePartsWThanimalOrigin,
      productseasonusagecategory     as ProductSeasonUsageCategory,
      serviceagreement               as ServiceAgreement,
      regionoforigin                 as RegionOfOrigin,
      countryoforigin                as CountryOfOrigin,
      goodsissueunit                 as GoodsIssueUnit,
      consumptionvaluecategory       as ConsumptionValueCategory,
      valuationclass                 as ValuationClass,
      valuationmargin                as ValuationMargin,
      changenumber                   as ChangeNumber,
      materialrevisionlevel          as MaterialRevisionLevel,
      handlingindicator              as HandlingIndicator,
      warehouseproductgroup          as WarehouseProductGroup,
      warehousestoragecondition      as WarehouseStorageCondition,
      standardhandlingunittype       as StandardHandlingUnitType,
      serialnumberprofile            as SerialNumberProfile,
      adjustmentprofile              as AdjustmentProfile,
      ispilferable                   as IsPilferable,
      isrelevantforhzds              as IsRelevantForHzds,

      @Semantics.quantity.unitOfMeasure: 'TimeUnitForQuarantinePeriod'
      quarantineperiod               as QuarantinePeriod,
      timeunitforquarantineperiod    as TimeUnitForQuarantinePeriod,

      qualityinspectiongroup         as QualityInspectionGroup,
      handlingunittype               as HandlingUnitType,
      maximumcapacity                as MaximumCapacity,
      overcapacitytolerance          as OverCapacityTolerance,
      hasvariabletareweight          as HasVariableTareWeight,
      unitformaxpackagingdimensions  as UnitForMaxPackagingDimensions,

      @Semantics.quantity.unitOfMeasure: 'UnitForMaxPackagingDimensions'
      maximumpackaginglength         as MaximumPackagingLength,

      @Semantics.quantity.unitOfMeasure: 'UnitForMaxPackagingDimensions'
      maximumpackagingwidth          as MaximumPackagingWidth,

      @Semantics.quantity.unitOfMeasure: 'UnitForMaxPackagingDimensions'
      maximumpackagingheight         as MaximumPackagingHeight,

      hasemptiesbom                  as HasEmptiesBom,
      classificationsideeffect       as ClassificationSideEffect,
      configurationsideeffect        as ConfigurationSideEffect,
      authorizationgroup             as AuthorizationGroup,
      ischemicalcompliancerelevant   as IsChemicalComplianceRelevant,
      hasglobalhierarchy             as HasGlobalHierarchy,
      isvariantconfigurationenabled  as IsVariantConfigurationEnabled,
      numberofproductvariants        as NumberOfProductVariants,
      numberofprocessedprodvariants  as NumberOfProcessedProdVariants,
      overcapacitytoleranceunit      as OverCapacityToleranceUnit,
      referenceproduct               as ReferenceProduct,
      salesunit                      as SalesUnit,
      laboratoryordesignoffice       as LaboratoryOrDesignOffice,
      packagingmaterialgroup         as PackagingMaterialGroup,
      productdocumentnumber          as ProductDocumentNumber,
      productdocumentversion         as ProductDocumentVersion,
      productdocumenttype            as ProductDocumentType,
      productdocumentchangenumber    as ProductDocumentChangeNumber,
      productdocumentpagecount       as ProductDocumentPageCount,
      productdocumentpagenumber      as ProductDocumentPageNumber,
      productdocumentpageformat      as ProductDocumentPageFormat,
      owninventorymanagedproduct     as OwnInventoryManagedProduct,
      productislocked                as ProductIsLocked,
      is_approval                    as IsApproval,
      @Semantics.user.createdBy: true
      created_by                     as CreatedBy,

      @Semantics.systemDateTime.createdAt: true
      created_at                     as CreatedAt,

      @Semantics.user.localInstanceLastChangedBy: true
      last_updated_by                as LastUpdatedBy,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      last_updated_at                as LastUpdatedAt,

      @Semantics.systemDateTime.lastChangedAt: true
      local_last_updated_at          as LocalLastUpdatedAt,

      _ProductDescription,
      _ProductSales,
      _ProductProcurement,
      _ProductPlant,
      _ProductSalesDelivery,
      _ProductUnitOfMeasure,
      _ProductValuation,
      _ProductStorage,
      _ProductEWMWarehouse,
      _ProductQualityManagement,
      _ProductChangeMaster,
      _ProductBasicText,
      _ProductInspectionText,
      _ProductPurchaseOrderText,
      _ProductInternalComment
}
