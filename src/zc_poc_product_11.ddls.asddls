@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Change Master'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_11
  as projection on ZI_POC_PRODUCT_11
{
  key Product,
  key Changenumber,
      Revisionlevel,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
