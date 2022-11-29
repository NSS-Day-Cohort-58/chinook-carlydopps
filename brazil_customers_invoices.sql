-- Provide a query showing the Invoices of Customers who are from Brazil

SELECT 
    c.firstName ||" "|| c.lastName as "CustomerName", 
    i.invoiceId, 
    i.invoiceDate, 
    i.billingCountry 
FROM Invoice i
JOIN Customer c
    ON c.customerId = i.customerId
WHERE billingCountry = 'Brazil';

SELECT 
    c.firstName ||" "|| c.lastName as "CustomerName", 
    i.invoiceId, 
    i.invoiceDate, 
    i.billingCountry 
FROM Invoice i
JOIN Customer c
    ON c.customerId = i.customerId
WHERE c.country = 'Brazil';