@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Basic Text'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_POC_PRODUCT_12
  as select from zproduct_12
    association to parent ZI_POC_PRODUCT as _Product on $projection.Product = _Product.Product
{
  key product                        as Product,
  key textobjecttype                 as Textobjecttype,
  key language                       as Language,
      productlongtext                as Productlongtext,
      prodlongtxtcreationdatetime    as Prodlongtxtcreationdatetime,
      createdbyuser                  as Createdbyuser,
      prodlongtxtlastchangeddatetime as Prodlongtxtlastchangeddatetime,
      lastchangedbyuser              as Lastchangedbyuser,
      _Product
}
