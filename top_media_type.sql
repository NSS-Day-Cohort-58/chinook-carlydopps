-- Query that shows the most purchased Media Type

SELECT
    m.name,
    SUM(il.unitPrice*il.quantity) as "Sales"
FROM InvoiceLine il
JOIN Track t ON t.trackId = il.trackId
JOIN MediaType m ON m.mediaTypeId = t.mediaTypeId
GROUP BY m.name
ORDER BY Sales DESC LIMIT 1;