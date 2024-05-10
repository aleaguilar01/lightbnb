DROP TABLE IF EXISTS users CASCADE;

DROP TABLE IF EXISTS reservations CASCADE;

DROP TABLE IF EXISTS property_reviews CASCADE;

DROP TABLE IF EXISTS properties CASCADE;

DROP TABLE IF EXISTS countries CASCADE;

DROP TABLE IF EXISTS provinces CASCADE;

DROP TABLE IF EXISTS cities CASCADE;


CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  email VARCHAR(255),
  password VARCHAR(255)
);

CREATE TABLE countries (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE provinces (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  country_id INTEGER REFERENCES countries(id)
);

CREATE TABLE cities (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255),
  province_id INTEGER REFERENCES provinces(id)
);

CREATE TABLE properties (
  id SERIAL PRIMARY KEY,
  owner_id INTEGER REFERENCES users(id),
  city_id INTEGER REFERENCES cities(id),
  title VARCHAR(255),
  description TEXT,
  cost_per_night INTEGER,
  parking_spaces INTEGER,
  number_of_bathrooms INTEGER,
  number_of_bedrooms INTEGER,
  url_coverphoto VARCHAR(255),
  url_thumbnail VARCHAR(255),
  street VARCHAR(255),
  post_code VARCHAR(255),
  active BOOLEAN 
);

CREATE TABLE reservations (
  id SERIAL PRIMARY KEY,
  start_date DATE,
  end_date DATE,
  property_id INTEGER REFERENCES properties(id),
  guest_id INTEGER REFERENCES users(id)
);

CREATE TABLE property_reviews (
  id SERIAL PRIMARY KEY,
  message TEXT,
  rating SMALLINT,
  guest_id INTEGER REFERENCES users(id),
  property_id INTEGER REFERENCES properties(id),
  reservation_id INTEGER REFERENCES reservations(id)
);