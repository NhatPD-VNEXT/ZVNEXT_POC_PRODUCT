@EndUserText.label: 'Parameter Create'
define root abstract entity ZA_POC_PRODUCT_01
{
  product               : matnr;
  producttypecode       : abap.char(4);
  baseunit              : meins;
  productstandardid     : abap.char(18);
  materialrevisionlevel : abap.char(2);
  externalproductgroup  : abap.char(18);
  referenceproduct      : abap.char(40);
  ProductDescription    : abap.char(40);
}
