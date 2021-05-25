SELECT Count(InvoiceId) FROM Invoice
WHERE InvoiceDate BETWEEN "2009-01-01 00:00:00" AND "2011-12-31 00:00:00"

SELECT 
    COUNT(invoiceid) as "Sales",
    STRFtime("%Y", InvoiceDate) as "Year"
FROM Invoice
WHERE InvoiceDate LIKE "%2009%" OR InvoiceDate LIKE "%2011%"
GROUP BY Year