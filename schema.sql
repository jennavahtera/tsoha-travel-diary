CREATE TABLE users (
	id SERIAL PRIMARY KEY,
	username TEXT UNIQUE,
	password TEXT,
	role INTEGER
);

CREATE TABLE trips (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users,
	city_id INTEGER REFERENCES cities,
	name TEXT,
	start_date DATE,
	end_date DATE
);

CREATE TABLE countries (
	id SERIAL PRIMARY KEY,
	name TEXT
);

CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users,
	country_id INTEGER REFERENCES countries,
	name TEXT,
	content TEXT
);

CREATE TABLE places (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users,
	city_id INTEGER REFERENCES cities,
	name TEXT,
	bucketlisted boolean,
	content TEXT
);

CREATE TABLE restaurants (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users,
    city_id INTEGER REFERENCES cities,
	name TEXT,
    content TEXT
);

CREATE TABLE accommodations (
	id SERIAL PRIMARY KEY,
	user_id INTEGER REFERENCES users,
	name TEXT,
	accommodation_type INTEGER,
    content TEXT
);
