@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Entidad raiz  – Define Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUSTOMER_ROOT_598 as select from /dmo/customer as customer

composition [0..*] of ZCDS_CUST_BOOK_598 as _customer
association [1..1] to /dmo/airport as _airport  on _airport.city = $projection.City
{
  key customer.customer_id as CustomerId,
      customer.first_name as FirstName,
      customer.last_name  as LastName,
      customer.city       as City,
      _customer,
      _airport
}
