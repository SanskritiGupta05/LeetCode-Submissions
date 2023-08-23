# Write your MySQL query statement below
SELECT Manager.name 
FROM Employee AS Manager
JOIN Employee AS DirectReport ON Manager.id = DirectReport.managerId
GROUP BY Manager.id, Manager.name
HAVING COUNT(DISTINCT DirectReport.id) >= 5;
