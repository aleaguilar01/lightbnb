/*This query obtains all the reservations for a specific guest
ordered by start date.
*/
SELECT reservations.id, properties.title, reservations.start_date, properties.cost_per_night, avg(property_reviews.rating) as property_rating
FROM reservations
JOIN properties
ON properties.id = reservations.property_id
JOIN property_reviews
ON properties.id = property_reviews.property_id
WHERE reservations.guest_id = 4
GROUP BY reservations.id, properties.title, reservations.start_date, properties.cost_per_night
ORDER BY start_date
LIMIT 10;