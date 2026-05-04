@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Product Inspection Text'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_POC_PRODUCT_13
  as projection on ZI_POC_PRODUCT_13
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
