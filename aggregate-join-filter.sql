-- SELECT ROUND(AVG(amount_tipped), 2)
-- FROM bookings -- filter
-- WHERE amount_billed > 20
--     AND guests > 2;
-- SELECT MAX(b.guests),
--     MAX(t.seats)
-- FROM bookings AS b
--     INNER JOIN tables as t ON b.table_id = t.id;
SELECT MAX(b.guests),
    MAX(t.seats)
FROM bookings AS b
    INNER JOIN tables as t ON b.table_id = t.id
    INNER JOIN payment_methods as p ON b.payment_id = p.id
WHERE t.seats < 5
    AND payment_method_name = 'cash';