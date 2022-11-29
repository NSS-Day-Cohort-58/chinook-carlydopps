-- Query that shows the total number of invoices per country

SELECT
    billingCountry,
    COUNT(invoiceId) as "InvoicesPerCountry"
FROM Invoice 
GROUP BY billingCountry;