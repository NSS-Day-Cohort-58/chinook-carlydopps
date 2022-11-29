-- Query for number of invoices in 2009 and 2011

SELECT 
    STRFTIME('%Y', invoiceDate) as "Year",
    COUNT(invoiceId) as "InvoicesPerYear"
FROM Invoice 
WHERE invoiceDate LIKE '2009%' OR invoiceDate LIKE '2011%'
GROUP BY year;