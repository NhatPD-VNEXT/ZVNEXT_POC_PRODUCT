@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Description'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_02
  as select from zproduct_02
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key zproduct_02.product                       as Product,
    zproduct_02.salesstatus                   as SalesStatus,
    zproduct_02.salesstatusvaliditydate       as SalesStatusValidityDate,
    zproduct_02.taxclassification             as TaxClassification,
    zproduct_02.transportationgroup           as TransportationGroup,
    zproduct_02.pricingreferenceproduct       as PricingReferenceProduct,
    zproduct_02.variantspricingprofile        as VariantsPricingProfile,
    zproduct_02.isvariantpriceallowed         as IsVariantPriceAllowed,

    @Semantics.quantity.unitOfMeasure: 'AllowedPackagingWeightQtyUnit'
    zproduct_02.allowedpackagingweightqty     as AllowedPackagingWeightQty,
    zproduct_02.allowedpackagingweightqtyunit as AllowedPackagingWeightQtyUnit,

    zproduct_02.loadinggroup                  as LoadingGroup,
    zproduct_02.authorizationgroup            as AuthorizationGroup,

    @Semantics.quantity.unitOfMeasure: 'AllowedPackagingVolumeQtyUnit'
    zproduct_02.allowedpackagingvolumeqty     as AllowedPackagingVolumeQty,
    zproduct_02.allowedpackagingvolumeqtyunit as AllowedPackagingVolumeQtyUnit,

    zproduct_02.distrcntrsalestartdate        as DistrCntrSaleStartDate,
    zproduct_02.distrcntrsaleenddate          as DistrCntrSaleEndDate,
    zproduct_02.storesalestartdate            as StoreSaleStartDate,
    zproduct_02.storesaleenddate              as StoreSaleEndDate,
    zproduct_02.excessweighttolerance         as ExcessWeightTolerance,
    zproduct_02.excessvolumetolerance         as ExcessVolumeTolerance,
    zproduct_02.stackingfactor                as StackingFactor,
    zproduct_02.isclosedpackagingmaterial     as IsClosedPackagingMaterial,
    zproduct_02.volumemaximumlevel            as VolumeMaximumLevel,
    zproduct_02.packagingmaterialtype         as PackagingMaterialType,

    @Semantics.quantity.unitOfMeasure: 'ServiceDurationUnit'
    zproduct_02.serviceduration               as ServiceDuration,
    zproduct_02.servicedurationunit           as ServiceDurationUnit,

    zproduct_02.serviceprofile                as ServiceProfile,
    zproduct_02.responseprofile               as ResponseProfile,
    zproduct_02.cabillgcycle                  as CaBillgCycle,
    zproduct_02.subscrpnprodbillgcycdetn      as SubscrpnProdBillgCycDetn,
    zproduct_02.contractautorenewaltype       as ContractAutoRenewalType,
      _Product
}
