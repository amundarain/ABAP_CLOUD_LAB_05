@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Join Explícito'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_EXPLICIT_JOIN_598 
as select from /dmo/customer as customer
association[0..*] to /dmo/booking as  _booking on _booking.customer_id = customer.customer_id
{
    key customer.customer_id as CustomerId,
        customer.first_name as FirstName,
        customer.last_name as LastName,
        _booking[inner].booking_date as BookingDate
}
