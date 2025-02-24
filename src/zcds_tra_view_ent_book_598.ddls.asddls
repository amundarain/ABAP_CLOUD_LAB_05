@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: 'Transient View Entity'
@Metadata.ignorePropagatedAnnotations: true
define transient view entity ZCDS_TRA_VIEW_ENT_BOOK_598 
provider contract analytical_query
as projection on ZCDS_AN_DATA_FLIGHT_598
{
@AnalyticsDetails.query.axis: #FREE
 TravelId as Travelid,
 @AnalyticsDetails.query.axis:#ROWS
 BookingId,
 @AnalyticsDetails.query.axis:#COLUMNS
 CustomerId,
 CarrierId,
 ConnectionId,
 @ObjectModel.text.element:[ 'CurrencyCode' ]
 @Semantics.amount.currencyCode: 'CurrencyCode'
 FlightPrice,
 CurrencyCode,
 BookingDate,
 FlightDate,
 /* Associations */
 _ZCDS_VDM
    
}
