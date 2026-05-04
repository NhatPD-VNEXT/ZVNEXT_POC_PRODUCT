@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Storage'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_08
  as select from zproduct_08
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product

{
  key product                       as Product,
      storageconditions             as StorageConditions,
      temperatureconditionind       as TemperatureConditionInd,
      hazardousmaterialnumber       as HazardousMaterialNumber,
      
      @Semantics.quantity.unitOfMeasure: 'BaseUnit'
      nmbrofgrorgislipstoprintqty   as NmbrOfGrOrgIsLipsToPrintQty,
      
      labeltype                     as LabelType,
      labelform                     as LabelForm,
      minremainingshelflife         as MinRemainingShelfLife,
      expirationdate                as ExpirationDate,
      storagebininstruction         as StorageBinInstruction,
      totalshelflifestoragepercent  as TotalShelfLifeStoragePercent,
      shelflifeexpirationdateperiod as ShelfLifeExpirationDatePeriod,
      shelflifeexprtndaterndingrule as ShelfLifeExprtnDateRndingRule,
      authorizationgroup            as AuthorizationGroup,
      baseunit                      as BaseUnit,
      shelflifedurationunit         as ShelfLifeDurationUnit,
      totalshelflife                as TotalShelfLife,
      _Product
}
