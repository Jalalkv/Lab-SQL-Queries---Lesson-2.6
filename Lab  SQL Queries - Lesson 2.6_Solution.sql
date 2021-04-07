# Lab | SQL Queries - Lesson 2.6 - Solution 

USE Sakila;


# 1) Get the unique release years.

#SELECT distinct (count(release_year))
#FROM film;


# 2) Get all films with ARMAGEDDON in the title.

#SELECT * FROM Film 
#WHERE Title LIKE "%ARMAGEDDON%"; 


# 3) Get all films which title ends with APOLLO.

#SELECT * FROM Film
#WHERE Title LIKE "%APOLLO"


# 4) Get 10 the longest films. (X)
SELECT * FROM Film
WHERE Title = MAX(length)
order by length DESC
limit 10; 

# 5) How many films include Behind the Scenes content?


# 6) Drop column picture from staff.

ALTER Table Staff
DROP Column Picture; 

# 7) A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. Update the database accordingly.

# 8) Add a rental for movie "Academy Dinosaur" by the customer "Charlotte Hunter" from employee Mike Hillyer at Store 1. You can use current date for the rental_date column in the rental table. Hint: Check the columns in the table rental and see what information you would need to add there. You can query those pieces of information in other tables. For eg., you would notice that you need customer_id information as well. To get that you can use the following query:

# select customer_id from sakila.customer

# where first_name = 'CHARLOTTE' and last_name = 'HUNTER';

# Use similar method to get inventory_id, film_id, and staff_id.