-- SELECT COUNT (*)
-- FROM bookings;
-- SELECT COUNT (amount_tipped)
-- FROM bookings;
-- if two bookings, it only counts it once with DISTINCT keyword
SELECT COUNT (DISTINCT booking_date)
FROM bookings;