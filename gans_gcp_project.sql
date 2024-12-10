-- Drop the database if it already exists
-- DROP DATABASE IF EXISTS gans;


-- Create the database
-- CREATE DATABASE gans;

-- Use the database
USE gans;


CREATE TABLE cities (
    city_id INT AUTO_INCREMENT, -- Automatically generated ID for each city
    city_name VARCHAR(255) NOT NULL, -- Name of the city
    country VARCHAR(255) NOT NULL, -- Name of the country
    latitude float NOT NULL, -- Latitude of the city
    longitude float NOT NULL, -- Longitude of the city
    -- city_country_code VARCHAR(255) NOT NULL UNIQUE, -- code for name of  city and name of the country
    PRIMARY KEY (city_id) -- Primary key to uniquely identify each city
);


CREATE TABLE populations(
	population_id INT AUTO_INCREMENT, -- Automatically generated ID for each population
    city_id INT NOT NULL, -- city id for each city 
    year_retrieved YEAR, -- year when data is retrieved
    population INT, -- population of the city in year_retrieved
    PRIMARY KEY (population_id), -- Primary key to uniquely identify each population
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE weathers(
    weather_id INT AUTO_INCREMENT,
    city_id INT NOT NULL,
    forecast_time TIMESTAMP,
    temperature FLOAT,
    forecast VARCHAR(255),
    rain_in_last_3h FLOAT,
    snow_in_last_3h FLOAT,
    visibility INT,
    wind_speed FLOAT,
    data_retrieved_at TIMESTAMP,
    PRIMARY KEY (weather_id),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

-- 'icao', 'name', 'timeZone', 'city_id'
CREATE TABLE airports(
    icao VARCHAR(10),
    airport_name VARCHAR(255),
    city_id INT NOT NULL,
    timeZone VARCHAR(255),
    PRIMARY KEY (icao),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);

CREATE TABLE flights(
    flight_id INT AUTO_INCREMENT,
    arrival_airport_icao VARCHAR(10),
    flight_status VARCHAR(255),
    scheduled_arrival_time DATETIME,
    flight_number VARCHAR(30),
    terminal VARCHAR(30),
    data_retrieved_at DATETIME,
    PRIMARY KEY (flight_id),
    FOREIGN KEY (arrival_airport_icao) REFERENCES airports(icao)
);
select * from cities;
select * from populations;
select * from airports;
select * from weathers;
select * from flights;