/*This query obtains the cities with most reservations 
ordered by price from most to least expensive.
*/
SELECT city, COUNT(reservations) as total_reservations
FROM properties
JOIN reservations
ON properties.id = property_id
GROUP BY city
ORDER BY total_reservations DESC;