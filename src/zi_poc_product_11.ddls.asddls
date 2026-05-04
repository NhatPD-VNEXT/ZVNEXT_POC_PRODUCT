@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Change Master'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_11
  as select from zproduct_11
  association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product       as Product,
  key changenumber  as Changenumber,
      revisionlevel as Revisionlevel,
      _Product
}
