-- Query for total sales in 2009 and 2011

SELECT 
    STRFTIME('%Y', invoiceDate) as "Year",
    SUM(total) as "Yearly Sales"
FROM Invoice 
WHERE invoiceDate LIKE '2009%' OR invoiceDate LIKE '2011%'
GROUP BY year;