/*
Find the maximum age (number years) among students of 10 classes ?
Fields in the resulting table: max_year
*/

SELECT YEAR(NOW()) - YEAR(MIN(birthday)) AS max_year FROM Class
JOIN Student_in_class ON Student_in_class.class = Class.id
JOIN Student ON Student.id = Student_in_class.student
WHERE Class.name LIKE '10%'