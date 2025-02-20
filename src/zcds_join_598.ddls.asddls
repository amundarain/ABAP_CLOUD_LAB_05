@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones y Expresiones Joins'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_JOIN_598 
 as select from       /dmo/booking as booking
           inner join /dmo/flight  as flight
           on booking.carrier_id = flight.carrier_id
{
 key booking.booking_id as BookingId, 
 flight.flight_date     as FlightDate,
 @Semantics.amount.currencyCode : 'CurrencyCode'
 flight.price           as Price,
 flight.currency_code   as CurrencyCode

    
}
