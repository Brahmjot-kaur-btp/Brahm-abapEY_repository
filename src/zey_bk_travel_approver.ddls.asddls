@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Processor projection layer'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define root view entity ZEY_BK_TRAVEL_APPROVER as projection on ZEY_BK_TRAVEL
{
   key TravelId,
   AgencyId,
   CustomerId,
   BeginDate,
   EndDate,
   BookingFee,
   TotalPrice,
   CurrencyCode,
   Description,
   OverallStatus,
   AgencyName,
   CustomerName,
   StatusText,
   Criticality,
   /* Associations */
   _Agency,
   _Booking: redirected to composition child ZEY_BK_BOOKING_APPROVER,
   _Currency,
   _Customer,
   _OverallStatus
    }
