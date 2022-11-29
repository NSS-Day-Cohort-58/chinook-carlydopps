-- Query that shows which sales agent made the most in sales in 2009

SELECT EmployeeName, MAX(TotalSales) as "TotalSales"
from    
    (SELECT  
        e.firstName ||" "|| e.lastName as "EmployeeName",
        SUM(i.total) as "TotalSales"
    FROM Employee e
    JOIN Customer c ON c.supportRepId = e.employeeId
    JOIN Invoice i ON i.customerId = c.customerId
    WHERE i.invoiceDate LIKE '2009%'
    GROUP BY e.employeeId)