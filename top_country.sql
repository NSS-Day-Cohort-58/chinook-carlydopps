-- Query that shows which country's customers spent the most

SELECT BillingCountry, max(TotalSales) as "TotalSales"
from    
    (SELECT
        BillingCountry,
        SUM(total) as "TotalSales"
    FROM Invoice 
    GROUP BY BillingCountry);