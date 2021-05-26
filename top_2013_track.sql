SELECT
    Max(TimesPurchased) as MostPurchased,
    TrackName
FROM(
    SELECT
        t.name as TrackName,
        COUNT(invoiceline.trackid) as TimesPurchased
    FROM Track t
    JOIN InvoiceLine ON invoiceline.trackid = t.trackid 
    JOIN invoice i on i.invoiceid = invoiceline.InvoiceId
    WHERE i.invoicedate LIKE "%2013%"
    GROUP BY t.trackid
    ORDER BY TimesPurchased DESC
)

SELECT 
    invoice.InvoiceId,
    track.name
FROM Invoice
JOIN Invoiceline on invoiceline.InvoiceId = invoice.InvoiceId
JOIN Track on invoiceline.trackid = track.trackid
GROUP BY invoiceline.InvoiceId

SELECT
    COUNT(invoiceline.trackid) as TrackCount,
    track.name
FROM InvoiceLine
JOIN invoice ON invoice.invoiceid = invoiceline.InvoiceLineId
JOIN Track on track.trackid = invoiceline.TrackId
WHERE invoice.InvoiceDate LIKE "%2013%"
GROUP BY track.Name
ORDER BY TrackCount


-- Cool syntax:
With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales, TrackId
    FROM InvoiceLine
    JOIN Invoice i ON i.InvoiceId = InvoiceLine.InvoiceId
    WHERE i.InvoiceDate like "%2013%"
    GROUP BY TrackId
)
SELECT MAX(tc.TotalSales) TotalSales, t.Name
FROM TrackCounts tc
JOIN Track t ON tc.TrackId = t.TrackId