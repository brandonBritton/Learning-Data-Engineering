/*
--PROBLEM-- 
Given a table of candidates and their skills, you're tasked with finding the candidates best suited for an open Data Science job. You want to find candidates who are proficient in Python, Tableau, and PostgreSQL. Write a query to list the candidates who possess all of the required skills for the job. Sort the output by candidate ID in ascending order.
--EXPLANATION--
This SQL query retrieves the IDs of candidates who possess all three specified skills: Python, Tableau, and PostgreSQL. It selects the candidate_id from the candidates table, filters the results to include only those with the specified skills, groups the results by candidate_id, and uses the HAVING clause to ensure that only candidates with all three skills are included in the final result set.
*/

SELECT candidate_id
FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING COUNT(skill) = 3
ORDER BY candidate_id ASC;


