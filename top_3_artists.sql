-- Query that shows the top 3 best selling artists

SELECT
    a.name,
    SUM(il.unitPrice*il.quantity) as "Sales"
FROM InvoiceLine il
JOIN Track t ON t.trackId = il.trackId
JOIN Album al ON al.albumId = t.albumId
JOIN Artist a ON a.artistId = al.artistId
GROUP BY a.name
ORDER BY Sales DESC LIMIT 3;