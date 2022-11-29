-- Query that shows the most purchased track(s) of 2013

SELECT
    groupedIl.name,
    groupedIl.Purchases
FROM (
    SELECT *, SUM(il.quantity) as Purchases
    FROM InvoiceLine il
    JOIN Invoice i ON i.InvoiceId = il.InvoiceId
    JOIN Track t ON t.TrackId = il.TrackId
    WHERE i.invoiceDate LIKE "2013%"
    GROUP BY t.name
    ORDER BY Purchases DESC) groupedIl 
WHERE groupedIl.Purchases = (
    SELECT MAX(sumQuantity) as maxQuantity
    FROM 
        (SELECT trackId, SUM(quantity) as sumQuantity
        FROM InvoiceLine
        GROUP BY trackId))
GROUP BY name
ORDER BY Purchases;