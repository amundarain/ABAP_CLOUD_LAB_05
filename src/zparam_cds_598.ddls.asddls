@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Uso de Parametros en CDS'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZPARAM_CDS_598 
with parameters pDateFlightDate : abap.dats
as select from /dmo/booking
{
    key travel_id as TravelId,
    key booking_id as BookingId,
    customer_id as CustomerId,
    @Semantics.dateTime: true
    flight_date as FlightDate
}where flight_date = $parameters.pDateFlightDate
