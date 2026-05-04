@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Quality Management'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_09
  as projection on ZI_POC_PRODUCT_09
{
  key Product,
      Qltymgmtinprocmtisactive,
      Authorizationgroup,
      Catalogprofile,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
