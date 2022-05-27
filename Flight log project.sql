SELECT *
FROM PortfolioProject..flights
ORDER BY date 

--Total Travels

SELECT COUNT(travelcode) as total_number_of_travels
FROM PortfolioProject..flights

--TOP 3 Destination travelled to the most

SELECT TOP 3 travelling_to, COUNT(travelling_to) as number_of_times_travelled_to
FROM PortfolioProject..flights
GROUP BY travelling_to
ORDER BY number_of_times_travelled_to DESC


--Most used travel agency

SELECT TOP 1 agency, COUNT(travelcode) as total_number_of_travels
FROM PortfolioProject..flights
GROUP BY agency
ORDER BY total_number_of_travels DESC

--Average price for each flight type

SELECT flighttype, AVG(price) as average_price
FROM PortfolioProject..flights
GROUP BY flighttype

--Date(Month) with highest number of travels

SELECT TOP 10 date, COUNT(travelcode) as total_number_of_travels
FROM PortfolioProject..flights
GROUP BY date
ORDER BY total_number_of_travels DESC


--Longest distance travelled and duration

SELECT MAX(distance) as longest_distance_travelled, MAX(time) as trip_duration
FROM PortfolioProject..flights

--individual flight route

SELECT CONCAT(travelling_from,'---', travelling_to) as Flight_route
FROM PortfolioProject..flights


CREATE VIEW Destination_travelled_to_the_most as
SELECT TOP 3 travelling_to, COUNT(travelling_to) as number_of_times_travelled_to
FROM PortfolioProject..flights
GROUP BY travelling_to
ORDER BY number_of_times_travelled_to DESC

CREATE VIEW Most_used_travel_agency as
SELECT TOP 1 agency, COUNT(travelcode) as total_number_of_travels
FROM PortfolioProject..flights
GROUP BY agency
ORDER BY total_number_of_travels DESC

CREATE VIEW Average_price_for_each_flight_type as
SELECT flighttype, AVG(price) as average_price
FROM PortfolioProject..flights
GROUP BY flighttype
