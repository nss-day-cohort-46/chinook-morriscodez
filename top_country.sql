SELECT
    Country,
    Max(TotalSales) as MaxSales
FROM (
    SELECT
    i.BillingCountry as Country,
    Sum(i.total) as TotalSales
FROM Invoice i
GROUP BY Country
)

-- cool syntax:
WITH TotalSales AS (
    SELECT SUM(Total) Total,
        BillingCountry Country
    FROM Invoice
    GROUP BY BillingCountry
)
SELECT '$' || MAX(Total) "Grand Total",
    Country
FROM TotalSales