SELECT 
    strftime("%Y", InvoiceDate) as InvoiceYear,
    Sum(Total)
FROM Invoice
WHERE InvoiceYear LIKE "%2009%"
OR InvoiceYear LIKE "%2011%"
GROUP BY InvoiceYear
