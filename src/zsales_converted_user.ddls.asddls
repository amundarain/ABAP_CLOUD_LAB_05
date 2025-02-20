@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Conversión de Moneda'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSALES_CONVERTED_USER as select from /dmo/booking
{
    
    @Semantics.amount.currencyCode: 'CurrencyCode'
    flight_price as FlightPrice,
    currency_code as CurrencyCode,
    @Semantics.amount.currencyCode: 'ConvertedCurrency'
    currency_conversion( amount             => flight_price, 
                         source_currency    => currency_code, 
                         target_currency    => cast('USD' as abap.cuky ), 
                         exchange_rate_date => booking_date,
                         client             => $session.client,
                         error_handling     => 'SET_TO_NULL') as CurrencyConversion,
   cast('USD' as abap.cuky ) as ConvertedCurrency
}
