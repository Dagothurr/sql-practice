/*
Print the identifiers of the teachers who taught at least once for the entire time IN each of the eleventh grades.
Fields IN the resulting table:
teacher
*/

SELECT teacher FROM Schedule
JOIN Class ON Class.id = Schedule.class
WHERE Class.name LIKE '11%'
GROUP BY teacher
HAVING count(distinct Class.name) = 2 