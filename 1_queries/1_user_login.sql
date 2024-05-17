/*Query to select id, name, mail and password from users table 
based on the user´s email.
*/
SELECT id, name, email, password
FROM users
WHERE users.email = 'tristanjacobs@gmail.com'