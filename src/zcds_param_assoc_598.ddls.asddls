@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones con Parametros Joins'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PARAM_ASSOC_598 
 with parameters pCarrierId : abap.char( 3 )
       as select from /dmo/flight  as flight
       association[0..1] to
           /dmo/carrier as _carrier on _carrier.carrier_id = flight.carrier_id
           
{
 key flight.carrier_id,
     flight.connection_id,
     flight.flight_date,
     _carrier.name    
}where flight.carrier_id = $parameters.pCarrierId
