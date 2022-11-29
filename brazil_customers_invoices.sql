-- Provide a query showing the Invoices of Customers who are from Brazil

-- by invoice billing country
SELECT 
    c.firstName ||" "|| c.lastName as "CustomerName", 
    i.invoiceId, 
    i.invoiceDate, 
    i.billingCountry 
FROM Invoice i
JOIN Customer c ON c.customerId = i.customerId
WHERE billingCountry = 'Brazil';

-- by customer country
SELECT 
    c.firstName ||" "|| c.lastName as "CustomerName", 
    i.invoiceId, 
    i.invoiceDate, 
    i.billingCountry 
FROM Invoice i
JOIN Customer c ON c.customerId = i.customerId
WHERE c.country = 'Brazil';