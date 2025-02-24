@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'categoría de datos del tipo cubo'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Analytics.dataCategory: #CUBE
define view entity ZCDS_AN_DATA_FLIGHT_598 as select from /dmo/booking

association [0..*] to ZCDS_VDM_FLIGHT_598 as _ZCDS_VDM on _ZCDS_VDM.CarrierId = $projection.CarrierId
{
    key travel_id as TravelId,
    key booking_id as BookingId, 
    customer_id as CustomerId,
    carrier_id as CarrierId,
    connection_id as ConnectionId,    
    @DefaultAggregation: #SUM
    @Semantics.amount.currencyCode: 'CurrencyCode'
    flight_price as FlightPrice,
    currency_code as CurrencyCode,
    @DefaultAggregation: #NONE
    booking_date as BookingDate,
    flight_date as FlightDate,
    _ZCDS_VDM
}
