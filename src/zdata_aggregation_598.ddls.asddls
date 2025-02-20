@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Agregacion de Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #B,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_AGGREGATION_598 
       as select from /dmo/booking
{
@Semantics.amount.currencyCode: 'CurrencyCode'
 sum(flight_price) as FlightPrice,
 currency_code as CurrencyCode   
}group by currency_code
