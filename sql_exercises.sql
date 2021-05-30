-- SQL Exercises


-- Query all columns (attributes) for every row in the CITY table.
select *
from city;


-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
select *
from city
where countrycode like 'usa'
and population > 100000


-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select name
from city
where population > 120000
and countrycode like 'usa'


-- Query all columns for a city in CITY with the ID 1661.
select *
from city
where id = '1661'