USE sakila;
SHOW tables;
SELECT title from film
ORDER BY title ASC;

#Get unique list of film languages under the alias `language`.
SELECT DISTINCT(name) AS language_name FROM language
ORDER BY language_name ASC;

#Using the `select` statements and reviewing how many records are returned, 
#can you find out how many stores and staff does the company have? 
#Can you return a list of employee first names only?
SELECT COUNT(return_date) from rental;
SELECT COUNT(staff_id) from staff;
SELECT COUNT(*) from store; #because of ACID
SELECT first_name from staff;

#How many unique days did customers rent movies in this dataset?
SELECT DISTINCT(DATE(rental_date)) AS rental_day from rental;