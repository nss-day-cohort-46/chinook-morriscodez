SELECT
    MediaType,
    TotalMediaSales
FROM (
    SELECT
    m.name as MediaType,
    Count(t.mediatypeId) as TotalMediaSales
    FROM MediaType m
    JOIN track t on t.mediatypeid = m.mediatypeid
    JOIN InvoiceLine il on il.trackid = t.trackid
    GROUP BY m.MediaTypeId
)



