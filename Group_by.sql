USE siddhu_pajjidb;
SELECT DEPARTMENT, COUNT(*) AS TotalEmployees
FROM Employees
GROUP BY DEPARTMENT
HAVING COUNT(*) > 2
ORDER BY TotalEmployees DESC;
