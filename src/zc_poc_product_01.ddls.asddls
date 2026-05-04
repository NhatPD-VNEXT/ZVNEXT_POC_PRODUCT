@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Description'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_01
  as projection on ZI_POC_PRODUCT_01
{
  key Product,
  key Language,
      ProductForEdit,
      LanguageForEdit,
      LanguageIsoCode,
      ProductDescription,
      LanguageName,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
