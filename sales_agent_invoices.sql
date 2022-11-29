-- Provide a query that shows the invoices associated with each sales agent

SELECT  
    i.invoiceId, 
    e.firstName ||" "|| e.lastName as "EmployeelName"
FROM Invoice i
JOIN Customer c ON c.customerId = i.customerId
JOIN Employee e ON e.employeeId = c.supportRepId
ORDER BY i.invoiceId;