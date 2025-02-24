@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'VDM – Virtual Data Model'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Search.searchable: true
@VDM.viewType: #BASIC
define view entity ZCDS_VDM_FLIGHT_598 as select from /dmo/flight as  flight

association [0..*] to /dmo/carrier as _Carrier on _Carrier.carrier_id = $projection.CarrierId

{
    @Search.defaultSearchElement: true
    @Search.ranking: #MEDIUM
    @Search.fuzzinessThreshold: 0.9
    key carrier_id as CarrierId,
    key connection_id as ConnectionId,
    key flight_date as FlightDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    price as Price,
    currency_code as CurrencyCode,
    plane_type_id as PlaneTypeId,
    seats_max as SeatsMax,
    seats_occupied as SeatsOccupied,
    _Carrier
}
