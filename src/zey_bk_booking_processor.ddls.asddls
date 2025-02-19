@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Booking processor projection'
@Metadata.ignorePropagatedAnnotations: false
@Metadata.allowExtensions: true
define view entity ZEY_BK_BOOKING_PROCESSOR as projection on ZEY_BK_BOOKING
{
   key TravelId,
   key BookingId,
   BookingDate,
   CustomerId,
   CarrierId,
   ConnectionId,
   FlightDate,
   FlightPrice,
   CurrencyCode,
   BookingStatus,
   LastChangedAt,
   /* Associations */
   _BookingStatus,
   _BookingSupplement: redirected to composition child ZEY_BK_BOOKING_SUPPL_PROCESSOR,
   _Carrier,
   _Connection,
   _Customer,
   _Travel: redirected to parent ZEY_BK_TRAVEL_PROCESSOR
    
}
