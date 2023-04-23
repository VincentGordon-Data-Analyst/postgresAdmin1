CREATE TABLE house_price (
	id SERIAL,
	lat NUMERIC NOT NULL,
	lon NUMERIC NOT NULL,
	city VARCHAR(100) NOT NULL,
	style VARCHAR(40) NOT NULL,
	building_type VARCHAR(80),
	cooling_type VARCHAR(80),
	heating_type VARCHAR(80),
	price NUMERIC NOT NULL,
	number_of_beds INT,
	number_of_baths INT, 
	extra_space BOOLEAN,
	fire_place BOOLEAN
);

-- Find houses in toronto that costs more that half a million
SELECT * FROM house_price
WHERE city = 'Toronto' 
AND price > 500000;

-- Order cities by price
SELECT * FROM house_price
ORDER BY price;
