-- Query that shows which sales agent made the most in sales over all

SELECT EmployeeName, max(TotalSales) as "TotalSales"
from    
    (SELECT  
        e.firstName ||" "|| e.lastName as "EmployeeName",
        SUM(i.total) as "TotalSales"
    FROM Employee e
    JOIN Customer c ON c.supportRepId = e.employeeId
    JOIN Invoice i ON i.customerId = c.customerId
    GROUP BY e.employeeId);