@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Definition View CDS Basic'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality:#B,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_MODELING_598
  as select from /dmo/customer
{
  key customer_id          as customerId,
      first_name           as firstName,
      last_name            as lastName,
      $session.system_date as systemDate,
      $session.user        as userConnect,
      cast(customer_id as abap.int8) as customer_id_user,
      country_code as countryCode,
      case country_code
       when 'US' then 'United States'
       when 'DE' then 'Germany'
       else
        'Other Country'
      end as Case1
        

}
