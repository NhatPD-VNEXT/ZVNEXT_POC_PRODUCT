@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Quality Management'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_09
  as select from zproduct_09
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                  as Product,
      qltymgmtinprocmtisactive as Qltymgmtinprocmtisactive,
      authorizationgroup       as Authorizationgroup,
      catalogprofile           as Catalogprofile,
      _Product
}
