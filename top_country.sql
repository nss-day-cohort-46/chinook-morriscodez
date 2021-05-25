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

