Select InvoiceId, InvoiceDate, BillingCountry, Country
FROM Invoice
JOIN Customer c ON c.CustomerId
WHERE c.Country = "Brazil"
GROUP BY InvoiceId