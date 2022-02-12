/*
DELETE the companies that made the least number of flights.
*/

DELETE FROM Company
WHERE Company.id IN (SELECT company FROM Trip
GROUP BY company
HAVING count(id) = (SELECT count(id) FROM Trip
GROUP BY company
ORDER BY count(id) LIMIT 1))