-- Query that shows the total sales per country

SELECT
    BillingCountry,
    SUM(total) as "TotalSales"
FROM Invoice 
GROUP BY BillingCountry;