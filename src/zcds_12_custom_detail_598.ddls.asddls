@EndUserText.label: '1. Entidad personalizada - Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_12_CUSTOM_DETAIL_598'
define custom entity ZCDS_12_CUSTOM_DETAIL_598
 //with parameters parameter_name : parameter_type
{
  key customer_id : /dmo/customer_id;
  phone_number    : /dmo/phone_number;
  email_address   : /dmo/email_address;
  
}
