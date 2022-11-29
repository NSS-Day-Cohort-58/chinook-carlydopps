-- Provide a query showing Customers who are not in the US

SELECT firstName ||" "|| lastName as "FullName", customerId, country FROM Customer
WHERE country <> 'USA';