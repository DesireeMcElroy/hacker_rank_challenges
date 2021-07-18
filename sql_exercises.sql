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


-- Query all attributes of every Japanese city in the CITY table. The COUNTRYCODE for Japan is JPN.
select *
from city
where countrycode = 'JPN';


-- Query the names of all the Japanese cities in the CITY table. The COUNTRYCODE for Japan is JPN.
select name
from city
where countrycode like 'JPN';

-- Query a list of CITY and STATE from the STATION table.
select city, state
from station;

-- Query a list of CITY names from STATION for cities that have an even ID number. Print the results in any order, but exclude duplicates from the answer.
select distinct(city)
from station
where mod(id,2)=0;

-- Find the difference between the total number of CITY entries in the table and the number of distinct CITY entries in the table.
select count (city) - count(distinct city) 
from station;

-- Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). 
-- If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
select city, length(city) 
from station
order by length(city) desc, city
limit 1;
select city, length(city) 
from station
order by length(city) asc, city 
limit 1;

-- Query the list of CITY names starting with vowels (i.e., a, e, i, o, or u) from STATION. Your result cannot contain duplicates.
select distinct city
from station
where city regexp "^[aeiou].*";
