SELECT name, population FROM world WHERE continent = 'Europe'

Introducing the world table of countries
0.1
SELECT population FROM world 
  WHERE name = 'Germany'

Scandinavia
0.2
SELECT name, population FROM world
  WHERE name IN ('Sweden', 'Norway', 'Denmark');

Just the right size
0.3
SELECT name, area FROM world
  WHERE area BETWEEN 200000 AND 250000

Beginning with y
1.1
SELECT name FROM world
  WHERE name LIKE 'Y%'

Countries ending in y
1.2
SELECT name FROM world
  WHERE name LIKE '%Y'

Countries with an x
1.3
SELECT name FROM world
  WHERE name LIKE '%x%'

Somethingland
1.4
SELECT name FROM world
  WHERE name LIKE '%land'

Where-in-the-worldia
1.5
SELECT name FROM world
  WHERE name LIKE 'C%ia'

Double o
1.6
SELECT name FROM world
  WHERE name LIKE '%oo%'

Three a
1.7
SELECT name FROM world
  WHERE name LIKE '%a%a%a%'

Second letter t
1.8
SELECT name FROM world
 WHERE name LIKE '_t%'
ORDER BY name

Spaced out o
1.9
SELECT name FROM world
 WHERE name LIKE '%o__o%'

Four letter places
1.10
SELECT name FROM world
 WHERE name LIKE '____'

Introduction
2.1
SELECT name, continent, population FROM world

Large Countries
2.2
SELECT name FROM world
WHERE population >= 200000000

Per capita GDP
2.3
SELECT name, gdp/population
FROM world
WHERE population>=200000000

South America In millions
2.4
SELECT name, population/1000000
FROM world
WHERE continent = "South America"

France, Germany, Italy
2.5
SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

United
2.6
SELECT name
FROM world
WHERE name LIKE ('%United%')

Two ways to be big
2.7
SELECT name, population, area
FROM world
WHERE area>3000000 
 OR population>250000000

One or the other (but not both)
2.8
SELECT name, population, area
FROM world
WHERE (area > 3000000 AND population <= 250000000)
   OR (area <= 3000000 AND population > 250000000)

Rounding
2.9
SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2)
FROM world
WHERE continent = 'South America'