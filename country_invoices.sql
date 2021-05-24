SELECT BillingCountry, Count(BillingCountry) as InvoicesPerCountry
FROM Invoice
GROUP BY BillingCountry
