/* This query retrieves the id, title, cost_per_night, and the average rating of properties
from the properties table, joining it with the property_reviews table on the property_id.
It filters the properties by city
Includes properties with an average rating greater than 4 (or indicated).
The results are ordered by cost_per_night in ascending order and limited to the top 10 results.
*/
SELECT properties.id, title, cost_per_night, AVG(rating) as average_rating
FROM properties
JOIN property_reviews
ON properties.id = property_reviews.property_id
WHERE UPPER(properties.city) LIKE '%VANCOUVER%'
GROUP BY properties.id
HAVING AVG(rating) > 4
ORDER BY cost_per_night
LIMIT 10;
