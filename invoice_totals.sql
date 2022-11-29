-- Provide a query that shows the customers and employees associated with each invoice

SELECT  
    i.invoiceId, 
    i.total,
    c.firstName ||" "|| c.lastName as "CustomerName", 
    c.country,
    e.firstName ||" "|| e.lastName as "EmployeelName"
FROM Invoice i
JOIN Customer c
    ON c.customerId = i.customerId
JOIN Employee e 
    ON e.employeeId = c.supportRepId;