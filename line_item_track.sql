SELECT
    t.Name as TrackName,
    i.*
FROM InvoiceLine i
JOIN Track t on t.TrackId = i.TrackId
ORDER BY TrackName