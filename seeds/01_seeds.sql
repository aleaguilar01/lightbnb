INSERT INTO users (name, email, password) 
VALUES 
('John Doe', 'john@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Jane Smith', 'jane@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.'),
('Alice Johnson', 'alice@example.com', '$2a$10$FB/BOAVhpuLvpOREQVmvmezD4ED/.JBIDRh70tGevYzYzQgFId2u.');

INSERT INTO countries (name) 
VALUES 
('United States'),
('Canada'),
('United Kingdom');

INSERT INTO provinces (name, country_id) 
VALUES 
('California', 1),
('Ontario', 2),
('London', 3);

INSERT INTO cities (name, province_id) 
VALUES 
('Los Angeles', 1),
('Toronto', 2),
('London', 3);

INSERT INTO properties (owner_id, city_id, title, description, cost_per_night, parking_spaces, number_of_bathrooms, number_of_bedrooms, cover_photo_url, thumbnail_photo_url, street, post_code, active) 
VALUES 
(1, 1, 'Cozy Apartment', 'A cozy apartment in downtown LA', 100, 1, 1, 2, 'cover_photo_url', 'thumbnail_photo_url', '123 Main St', '90001', TRUE),
(2, 2, 'Luxury Condo', 'A luxurious condo with stunning views', 200, 2, 2, 3, 'cover_photo_url_2', 'thumbnail_photo_url_2', '456 Elm St', 'M5V 2K8', TRUE),
(3, 3, 'Quaint Cottage', 'A charming cottage in the heart of London', 150, 0, 1, 1, 'cover_photo_url_3', 'thumbnail_photo_url_3', '789 Oak St', 'W1B 3AB', TRUE);

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