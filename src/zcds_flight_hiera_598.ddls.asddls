@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Modelo Jerarquico y entidad de jerarquia'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_FLIGHT_HIERA_598 
            as select from /dmo/travel
 association [1..1]  to ZCDS_FLIGHT_HIERA_598 as _travel  on _travel.CustomerId = $projection.AgencyId        
{
  key agency_id   as AgencyId,
      customer_id as CustomerId,
      _travel
    
}
