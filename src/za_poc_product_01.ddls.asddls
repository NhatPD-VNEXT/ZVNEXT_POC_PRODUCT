@EndUserText.label: 'Parameter Create'
@Metadata.allowExtensions: true


define root abstract entity ZA_POC_PRODUCT_01
{
  
  @UI.fieldGroup: [{ qualifier: 'Col1', position: 10 }]
  @EndUserText.label: 'Product Number'
  product               : matnr;
  
  @UI.fieldGroup: [{ qualifier: 'Col1', position: 20 }]
  @EndUserText.label: 'Product Type Code'
  producttypecode       : abap.char(4);
  
  @UI.fieldGroup: [{ qualifier: 'Col2', position: 10 }]
  @EndUserText.label: 'Base Unit'
  @Consumption.valueHelpDefinition: [{ entity: { name: 'I_UnitOfMeasure', element: 'UnitOfMeasure' } }]
  baseunit              : meins;
  
  @UI.fieldGroup: [{ qualifier: 'Col2', position: 20 }]
  @EndUserText.label: 'GTIN'
  productstandardid     : abap.char(18);
  
  @UI.fieldGroup: [{ qualifier: 'Col3', position: 10 }]
  @EndUserText.label: 'Revision Level'
  materialrevisionlevel : abap.char(2);
  
  @UI.fieldGroup: [{ qualifier: 'Col1', position: 30 }]
  @EndUserText.label: 'Product Category'
  externalproductgroup  : abap.char(18);
  
  @UI.fieldGroup: [{ qualifier: 'Col2', position: 30 }]
  @EndUserText.label: 'Reference Product'
  referenceproduct      : abap.char(40);
  
  @UI.fieldGroup: [{ qualifier: 'Col4', position: 10 }]
  @EndUserText.label: 'Description'
  ProductDescription    : abap.char(40);
}
