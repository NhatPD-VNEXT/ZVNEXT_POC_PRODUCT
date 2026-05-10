@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Value Help for Compliance Relevant'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.resultSet.sizeCategory: #XS 
define view entity ZI_ChemicalComplianceVH
  as select from I_Language
{
      @UI.hidden: true
      key cast('Y' as abap.char(1))  as IsChemicalComplianceRelevant,
      @Semantics.text: true
      cast('Yes' as abap.char(60)) as DomainValueText
}
where Language = 'E'
union all select from I_Language
{
  key cast('N' as abap.char(1))  as IsChemicalComplianceRelevant,
      cast('No' as abap.char(60))  as DomainValueText
}
where Language = 'E'
union all select from I_Language
{
  key cast('' as abap.char(1))   as IsChemicalComplianceRelevant,
      cast('Not Decided' as abap.char(60)) as DomainValueText
}
where Language = 'E'
