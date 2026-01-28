
use world;



-- Q.1  Count how many cities are there in each country?

select Countrycode, count(*) 
from city
group by countrycode;


-- Q.2  Display all continents having more than 30 countries. 

select continent, count(*)
from country 
group by Continent
having count(*) > 30;


-- Q.3  List regions whose total populations exceeds 200 million. 

select Region, sum(Population) 
from country 
group by region
having sum(Population) > 200000000;


-- Q.4  Find the top 5 continents by average GNP per country. 

select continent, avg(GNP)
from country
group by continent 
order by 'GNP' desc
limit 5;


-- Q.5  Find the total number of official languages spoken in each continent. 

select c.continent, count(Distinct cl.language) as Total_official_languages
from country as c join countrylanguage as cl on c.code = cl.countrycode
where cl.isofficial = 'T'
group by c.continent; 


-- Q.6  Find the maximum and minimum GNP for each continent. 

select continent, max(GNP), min(GNP)
from country 
group by continent;


-- Q.7  Find the country with the highest average city population. 

select co.name, avg(ci.population)
from city as ci join country as co on ci.countrycode = co.code
group by co.name
order by avg(ci.population) desc
limit 1;


-- Q.8  List continents where the average city population is greater than 200,000.  

select co.continent, avg(ci.population) 
from city as ci join country as co on ci.countrycode = co.code
group by co.continent
having avg(ci.population) > 200000;


-- Q.9  Find the total population and average life expectancy for each continent, ordered by average life expectancy descending. 

select continent, sum(population), avg(lifeExpectancy)
from country 
group by continent
order by avg(lifeExpectancy) desc;


-- Q.10  Find the top 3 continents with the highest average life expectancy, but only include those where the total population is over 200 million.  

select continent, avg(lifeExpectancy), sum(population)
from country 
group by continent
having sum(population) > 200000000
order by avg(lifeExpectancy) desc
limit 3;











