@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Description'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_01
  as select from zproduct_01
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key zproduct_01.product            as Product,
  key zproduct_01.language           as Language,
      zproduct_01.productforedit     as ProductForEdit,
      zproduct_01.languageforedit    as LanguageForEdit,
      zproduct_01.languageisocode    as LanguageIsoCode,
      zproduct_01.productdescription as ProductDescription,
      zproduct_01.languagename       as LanguageName,
      _Product
}
