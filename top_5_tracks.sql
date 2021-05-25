SELECT
        t.name as TrackName,
        COUNT(invoiceline.quantity) as TimesPurchased
FROM Track t
JOIN InvoiceLine ON invoiceline.trackid = t.trackid 
JOIN invoice i on i.invoiceid = invoiceline.InvoiceId
GROUP BY t.trackid
ORDER BY TimesPurchased DESC
LIMIT 5