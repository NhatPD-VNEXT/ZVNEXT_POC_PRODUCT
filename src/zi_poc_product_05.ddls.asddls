@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Sales Delivery'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_05
  as select from zproduct_05
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                        as Product,
  key productsalesorg                as ProductSalesOrg,
  key productdistributionchnl        as ProductDistributionChnl,
      productforedit                 as ProductForEdit,
      productsalesorgforedit         as ProductSalesOrgForEdit,
      productdistributionchnlforedit as ProductDistributionChnlForEdit,
      cast( ismarkedfordeletion     as abap_boolean ) as IsMarkedForDeletion,
      
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      minimumorderquantity           as MinimumOrderQuantity,
      
      supplyingplant                 as SupplyingPlant,
      pricespecificationproductgroup as PriceSpecificationProductGroup,
      accountdetnproductgroup        as AccountDetnProductGroup,
      
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      deliverynoteprocmindelivqty    as DeliveryNoteProcMinDelivQty,
      
      itemcategorygroup              as ItemCategoryGroup,
      deliveryquantityunit           as DeliveryQuantityUnit,
      
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      deliveryquantity               as DeliveryQuantity,
      
      productsalesstatus             as ProductSalesStatus,
      productsalesstatusvaliditydate as ProductSalesStatusValidityDate,
      salesmeasureunit               as SalesMeasureUnit,
      producthierarchy               as ProductHierarchy,
      firstsalesspecproductgroup     as FirstSalesSpecProductGroup,
      secondsalesspecproductgroup    as SecondSalesSpecProductGroup,
      thirdsalesspecproductgroup     as ThirdSalesSpecProductGroup,
      fourthsalesspecproductgroup    as FourthSalesSpecProductGroup,
      fifthsalesspecproductgroup     as FifthSalesSpecProductGroup,
      
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      minimummaketoorderorderqty     as MinimumMakeToOrderOrderQty,
      
      logisticsstatisticsgroup       as LogisticsStatisticsGroup,
      volumerebategroup              as VolumeRebateGroup,
      productcommissiongroup         as ProductCommissionGroup,
      cashdiscountisdeductible       as CashDiscountIsDeductible,
      pricingreferenceproduct        as PricingReferenceProduct,
      assortmentgrade                as AssortmentGrade,
      prodextassortmentpriority      as ProdExtAssortmentPriority,
      storelistingprocedure          as StoreListingProcedure,
      distrcntrlistingprocedure      as DistrCntrListingProcedure,
      storelistingstartdate          as StoreListingStartDate,
      storelistingenddate            as StoreListingEndDate,
      distrcntrlistingstartdate      as DistrCntrListingStartDate,
      distrcntrlistingenddate        as DistrCntrListingEndDate,
      storesalestartdate             as StoreSaleStartDate,
      storesaleenddate               as StoreSaleEndDate,
      distrcntrsalestartdate         as DistrCntrSaleStartDate,
      distrcntrsaleenddate           as DistrCntrSaleEndDate,
      roundingprofile                as RoundingProfile,
      productunitgroup               as ProductUnitGroup,
      
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      maxdeliveryqtystoreorder       as MaxDeliveryQtyStoreOrder,
      
      pricefixingcategory            as PriceFixingCategory,
      variablesalesunitisnotallowed  as VariableSalesUnitIsNotAllowed,
      competitionpressurecategory    as CompetitionPressureCategory,
      hasactivehierarchy             as HasActiveHierarchy,
      baseunit                       as BaseUnit,
      prodisentlmtrlvt               as ProdIsEntlMtrlvt,
      subscrpncontrdfltduration      as SubscrpnContrDfltDuration,
      subscrpncontraltvduration1     as SubscrpnContrAltvDuration1,
      subscrpncontraltvduration2     as SubscrpnContrAltvDuration2,
      subscrpncontrdurationunit      as SubscrpnContrDurationUnit,
      subscrpncontrdfltextndurn      as SubscrpnContrDfltExtnDurn,
      subscrpncontraltvextndurn1     as SubscrpnContrAltvExtnDurn1,
      subscrpncontraltvextndurn2     as SubscrpnContrAltvExtnDurn2,
      subscrpncontrextndurnunit      as SubscrpnContrExtnDurnUnit,

      _Product
}
