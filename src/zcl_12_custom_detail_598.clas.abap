CLASS zcl_12_custom_detail_598 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
  INTERFACES if_rap_query_provider.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_12_custom_detail_598 IMPLEMENTATION.
  METHOD if_rap_query_provider~select.
   DATA lt_results TYPE TABLE OF zcds_12_custom_detail_598.
   try.
   if io_request->is_data_requested(  ).
    data(lv_top)  = io_request->get_paging(  )->get_page_size(  ).
    data(lv_skip) = io_request->get_paging(  )->get_offset(  ).

    select from /dmo/customer
           FIELDS customer_id, phone_number, email_address
           order by customer_id ascending
           INTO TABLE @lt_results
           OFFSET @lv_skip
           up to  @lv_top rows.

    if sy-subrc eq 0.
     io_response->set_total_number_of_records( lines( lt_results ) ).
     io_response->set_data( lt_results ).
    ENDIF.

   ENDIF.

   CATCH cx_rap_query_response_set_twic into data(lx_exceptions).
   ENDTRY.

  ENDMETHOD.

ENDCLASS.
