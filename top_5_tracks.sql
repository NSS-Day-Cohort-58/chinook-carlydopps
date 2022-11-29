-- Query that shows the top 5 most purchased tracks over all

SELECT
    t.name,
    SUM(il.quantity) as "Purchases"
FROM InvoiceLine il
JOIN Invoice i ON i.InvoiceId = il.InvoiceId
JOIN Track t ON t.TrackId = il.TrackId
WHERE i.invoiceDate LIKE "2013%" 
GROUP BY name
ORDER BY Purchases DESC LIMIT 5;