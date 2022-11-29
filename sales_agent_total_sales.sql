-- Query that shows total sales made by each sales agent

SELECT  
    e.firstName ||" "|| e.lastName as "EmployeeName",
    SUM(i.total) as "TotalSales"
FROM Employee e
JOIN Customer c ON c.supportRepId = e.employeeId
JOIN Invoice i ON i.customerId = c.customerId
GROUP BY e.employeeId;