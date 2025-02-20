@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociaciones Filtradas - Path Expression - cardinalidad'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PATH_EXPRESS_598
 //with parameters pConnectionId : abap.numc( 4 )
  as select from /dmo/booking as booking 
  association[0..*] to /dmo/flight as _flight on _flight.connection_id =  $projection.BookingId

                                                  
                                          
{
    key booking.booking_id    as BookingId,
    key booking.travel_id     as TravelId,
    _flight.seats_occupied    as SeatsOccupied,
    _flight[1:connection_id = '0001' ].connection_id as fConnectionID
      //_flight
      
      
      

 
}
