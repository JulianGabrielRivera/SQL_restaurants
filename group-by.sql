-- SELECT booking_date,
--     SUM(guests)
-- FROM bookings -- this helps us put all the bookings for same date into one.
-- GROUP BY booking_date;
--  Adding distinct here wont work distinct is usually used when you just want to remove duplicates and not have extra stuff like aggregations
-- SELECT DISTINCT booking_date,
--     SUM(guests)
-- FROM bookings -- this helps us put all the bookings for same date into one.
-- GROUP BY booking_date;
SELECT payment_method_name,
    b.booking_date,
    SUM(guests),
    ROUND(AVG(amount_tipped), 2)
FROM payment_methods AS p
    INNER JOIN bookings AS b ON p.id = b.payment_id
GROUP BY p.payment_method_name,
    b.booking_date;