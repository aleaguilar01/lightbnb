INSERT INTO users (name, email, password) 
VALUES 
('John Doe', 'john@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jane Smith', 'jane@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Alice Johnson', 'alice@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');


INSERT INTO properties (owner_id, title, description, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, cover_photo_url, thumbnail_photo_url, country, province, city, street, post_code, active) 
VALUES 
(1, 'Cozy Apartment', 'A cozy apartment in downtown LA', 100, 1, 1, 2, 'cover_photo_url', 'thumbnail_photo_url', 'United States', 'California', 'Los Angeles', '123 Main St', '90001', TRUE),
(2, 'Luxury Condo', 'A luxurious condo with stunning views', 200, 2, 2, 3, 'cover_photo_url_2', 'thumbnail_photo_url_2', 'Canada', 'Ontario', 'Toronto', '456 Elm St', 'M5V 2K8', TRUE),
(3, 'Quaint Cottage', 'A charming cottage in the heart of London', 150, 0, 1, 1, 'cover_photo_url_3', 'thumbnail_photo_url_3', 'United Kingdom', 'London', 'London', '789 Oak St', 'W1B 3AB', TRUE);

INSERT INTO reservations (start_date, end_date, property_id, guest_id) 
VALUES 
('2024-05-15', '2024-05-20', 1, 2),
('2024-06-01', '2024-06-05', 2, 3),
('2024-07-10', '2024-07-15', 3, 1);

INSERT INTO property_reviews (message, rating, guest_id, property_id, reservation_id) 
VALUES 
('Great place, loved the location!', 5, 2, 1, 1),
('Amazing view from the condo!', 4, 3, 2, 2),
('Cozy cottage, perfect for a weekend getaway!', 4, 1, 3, 3);