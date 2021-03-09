DROP TABLE IF EXISTS factvenues;
DROP TABLE IF EXISTS dimlocations;
DROP TABLE IF EXISTS dimcategories;

CREATE TABLE IF NOT EXISTS factvenues (
  id serial PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  location_id INTEGER,
  price INTEGER,
  rating DECIMAL,
  likes BIGINT
);


CREATE TABLE IF NOT EXISTS dimlocations (
  id serial PRIMARY KEY,
  longitude DECIMAL,
  latitude DECIMAL,
  address VARCHAR(255),
  zipcode VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS dimcategories (
  id serial PRIMARY KEY,
  name VARCHAR(255),
  venue_id INTEGER,
  CONSTRAINT fk_venue
  FOREIGN KEY (venue_id)
  REFERENCES factvenues (id)
);


