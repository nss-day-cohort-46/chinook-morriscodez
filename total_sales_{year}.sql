SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "%2009%"

SELECT SUM(Total)
FROM Invoice
WHERE InvoiceDate LIKE "%2011%"

SELECT 
    strftime("%Y", InvoiceDate) as InvoiceYear,
    Sum(Total)
FROM Invoice
WHERE InvoiceYear LIKE "%2009%"
OR InvoiceYear LIKE "%2011%"
GROUP BY InvoiceYear
