-- 1. How many rows are in the names table?

-- SELECT *
-- FROM names

-- Answer:  1957046

-- 2. How many total registered people appear in the dataset?

-- SELECT SUM(num_registered)
-- FROM names

-- Answer:  351653025

-- 3. Which name had the most appearances in a single year in the dataset?

-- SELECT name, year, MAX(num_registered) as max_num_registered
-- FROM names
-- GROUP BY name, year
-- ORDER BY max_num_registered DESC

-- Answer:  Linda

-- 4. What range of years are included?

-- SELECT MIN(year) AS min_year, MAX(YEAR) AS max_year
-- FROM names

-- Answer:  1880 - 2018

-- 5. What year has the largest number of registrations?

-- SELECT SUM(num_registered) AS sum_num_registered, year
-- FROM names
-- GROUP BY year
-- ORDER BY sum_num_registered DESC

-- Answer:  1957

-- 6. How many different (distinct) names are contained in the dataset?

-- SELECT COUNT(DISTINCT name)
-- FROM names

-- Answer:  98400

-- 7. Are there more males or more females registered?

SELECT gender, COUNT(gender) as count_gender
FROM names
GROUP BY gender

-- Answer:  F

-- 8. What are the most popular male and female names overall (i.e., the most total registrations)?

-- SELECT name, gender, SUM(num_registered) AS sum_num_registered
-- FROM names
-- GROUP BY name, gender
-- ORDER BY sum_num_registered DESC

-- Answer:  Male is James, Female is Mary

-- 9. What are the most popular boy and girl names of the first decade of the 2000s (2000 - 2009)?

-- SELECT name, gender, SUM(num_registered) AS sum_num_registered
-- FROM names
-- WHERE year BETWEEN 2000 AND 2009
-- GROUP BY name, gender
-- ORDER BY sum_num_registered DESC

-- Answer:  Jacob for boys.  Emily for girls.

-- 10. Which year had the most variety in names (i.e. had the most distinct names)?

-- SELECT year, COUNT(DISTINCT(name)) AS count_distinct_name
-- FROM names
-- GROUP BY year
-- ORDER BY count_distinct_name DESC

-- Answer: 2008 with 32518 total distinct names

-- 11. What is the most popular name for a girl that starts with the letter X?

-- SELECT name, SUM(num_registered) as sum_num_registered
-- FROM names
-- WHERE gender LIKE 'F'
-- 	AND name LIKE 'X%'
-- GROUP BY name
-- ORDER BY sum_num_registered DESC;

-- Answer:  Ximena

-- 12. How many distinct names appear that start with a 'Q', but whose second letter is not 'u'?

-- SELECT COUNT(DISTINCT(name))
-- FROM names
-- WHERE name LIKE 'Q%'
-- 	AND name NOT LIKE '_u%';
	
-- Answer:  46

-- 13. Which is the more popular spelling between "Stephen" and "Steven"? Use a single query to answer this question.

-- SELECT name, SUM(num_registered) as sum_num_registered
-- FROM names
-- WHERE name = 'Stephen'
-- 	OR name = 'Steven'
-- GROUP BY name

-- Answer:  Steven (1286951)

-- 14. What percentage of names are "unisex" - that is what percentage of names have been used both for boys and for girls?

-- 15. How many names have made an appearance in every single year since 1880?

-- 16. How many names have only appeared in one year?

-- 17. How many names only appeared in the 1950s?

-- 18. How many names made their first appearance in the 2010s?

-- 19. Find the names that have not be used in the longest.

-- 20. Come up with a question that you would like to answer using this dataset. Then write a query to answer this question.