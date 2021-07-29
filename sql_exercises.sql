-- SQL Exercises


-- Query all columns (attributes) for every row in the CITY table.
select *
from city;


-- Query all columns for all American cities in the CITY table with populations larger than 100000. The CountryCode for America is USA.
select *
from city
where countrycode like 'usa'
and population > 100000;


-- Query the NAME field for all American cities in the CITY table with populations larger than 120000. The CountryCode for America is USA.
select name
from city
where population > 120000
and countrycode like 'usa';


-- Query all columns for a city in CITY with the ID 1661.
select *
from city
where id = '1661';


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


-- Query the list of CITY names ending with vowels (a, e, i, o, u) from STATION. Your result cannot contain duplicates.
select distinct city
from station
where city like '%a'
or city like '%e'
or city like '%i'
or city like '%o'
or city like '%u';


-- Write a query identifying the type of each record in the TRIANGLES table using its three side lengths. Output one of the following statements for each record in the table:

-- Equilateral: It's a triangle with  sides of equal length.
-- Isosceles: It's a triangle with  sides of equal length.
-- Scalene: It's a triangle with  sides of differing lengths.
-- Not A Triangle: The given values of A, B, and C don't form a triangle.
SELECT CASE             
            WHEN A + B > C AND B + C > A AND A + C > B THEN
                CASE 
                    WHEN A = B AND B = C THEN 'Equilateral'
                    WHEN A = B OR B = C OR A = C THEN 'Isosceles'
                    ELSE 'Scalene'
                END
            ELSE 'Not A Triangle'
        END
FROM TRIANGLES;


-- Query the total population of all cities in CITY where District is California.
select sum(population)
from city
where district = 'California';


-- Query a count of the number of cities in CITY having a Population larger than 100,000.
select count(name)
from city
where population > 100000;

-- Query the difference between the maximum and minimum populations in CITY.
select max(population) - min(population)
from city;


-- Query the average population of all cities in CITY where District is California.
select avg(population)
from city
where district = 'California';


-- We define an employee's total earnings to be their monthly  worked, 
-- and the maximum total earnings to be the maximum total earnings for 
-- any employee in the Employee table. Write a query to find the maximum 
-- total earnings for all employees as well as the total number of employees 
-- who have maximum total earnings. Then print these values as space-separated integers.
SELECT salary * months AS ttl_earnings, COUNT(employee_id)
FROM Employee
GROUP BY ttl_earnings
ORDER BY ttl_earnings DESC
LIMIT 1;


-- Given the CITY and COUNTRY tables, query the sum of the populations of all cities where the CONTINENT is 'Asia'.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
select sum(city.population)
from city
join country on city.countrycode = country.code
where continent = 'Asia';


-- Given the CITY and COUNTRY tables, query the names of all the 
-- continents (COUNTRY.Continent) and their respective average city 
-- populations (CITY.Population) rounded down to the nearest integer.
-- Note: CITY.CountryCode and COUNTRY.Code are matching key columns.
select country.continent as cont, floor(avg(city.population)) -- floor keeps largest whole integer (rounds down)
from city
join country on city.countrycode = country.code
group by cont;