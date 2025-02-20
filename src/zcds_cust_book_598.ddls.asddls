@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Asociación - Parent Child'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_CUST_BOOK_598 as select from /dmo/booking
association to parent ZCDS_CUSTOMER_ROOT_598 as _customer on _customer.CustomerId = $projection.CustomerId
{
    key customer_id as CustomerId,
    key travel_id as TravelId,
    key booking_id as BookingId,
    _customer
}
