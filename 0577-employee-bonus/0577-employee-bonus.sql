# Write your MySQL query statement below
SELECT em.name, bo.bonus
FROM Employee AS em
LEFT JOIN Bonus AS bo
ON em.empId = bo.empId
HAVING bo.bonus < 1000 or bo.bonus IS NULL;