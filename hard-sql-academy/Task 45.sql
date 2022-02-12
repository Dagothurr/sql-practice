/*
Which cabinet(s) are IN the highest demand?
Fields IN the resulting table: classroom
*/

SELECT classroom FROM Schedule
GROUP BY classroom
HAVING COUNT(classroom) = (SELECT COUNT(classroom) FROM Schedule
GROUP BY classroom
ORDER BY COUNT(classroom) DESC LIMIT 1)