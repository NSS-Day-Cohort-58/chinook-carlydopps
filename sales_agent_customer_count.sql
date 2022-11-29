-- Query that shows how many customers are assigned to each employee

SELECT
    e.firstName ||" "|| e.lastName as "EmployeeName",
    COUNT(c.SupportRepId) as "NumberOfCustomers"
from Employee e
JOIN Customer c 
    ON e.EmployeeId = c.SupportRepId
GROUP BY EmployeeName;
