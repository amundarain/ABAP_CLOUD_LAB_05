@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Publicación de Asociaciones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PUBLIC_ASSOC_598 
as select from /dmo/travel as travel
association[1..1] to ZCDS_AGENCY_MAX_598 as _ZAgencyMax  on _ZAgencyMax.AgencyId = travel.agency_id
{
    key travel.travel_id as TravelId,
        travel.agency_id as AgencyId,
        _ZAgencyMax
    
}
