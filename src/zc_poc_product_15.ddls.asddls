@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Internal Comment Text'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_15
  as projection on ZI_POC_PRODUCT_15
{
  key Product,
  key Textobjecttype,
  key Language,
      Productlongtext,
      Prodlongtxtcreationdatetime,
      Createdbyuser,
      Prodlongtxtlastchangeddatetime,
      Lastchangedbyuser,
      /* Associations */
      _Product : redirected to parent ZC_POC_PRODUCT
}
