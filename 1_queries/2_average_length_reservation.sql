/*Query to obtain the average duration of all reservatios
*/
SELECT avg(end_date - start_date) as average_duration
FROM reservations