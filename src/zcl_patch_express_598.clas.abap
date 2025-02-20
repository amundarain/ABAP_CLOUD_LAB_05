CLASS zcl_patch_express_598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_patch_express_598 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   select from ZCDS_PUBLIC_ASSOC_598 as travel_max
   FIELDS travel_max~AgencyId, travel_max~TravelId, \_ZAgencyMax-Name
   where travel_max~AgencyId eq '070032' INTO table @DATA(lt_result)
   up to 5 rows.

   if sy-subrc eq 0.
   out->write( lt_result ).
   ENDIF.

  ENDMETHOD.
ENDCLASS.
