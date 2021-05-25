SELECT
    i.BillingCountry,
    SUM(i.total) as SalesPerCountry
FROM Invoice i
GROUP BY i.BillingCountry