@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección – Contrato Transaccional'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUST_PROJ_598 
provider contract transactional_interface
as projection on ZCDS_CUSTOMER_ROOT_598
{
    key CustomerId,
      FirstName,
     LastName,
       City,
      _customer,
      _airport
    
}
