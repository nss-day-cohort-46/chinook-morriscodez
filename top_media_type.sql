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



-- Cool Syntax:
With TrackCounts AS (
    Select COUNT(InvoiceLineId) TotalSales,
        TrackId
    FROM InvoiceLine
    GROUP BY TrackId
),
MediaTypeSales AS (
    SELECT SUM(tc.TotalSales) TotalSales,
        mt.Name Name
    FROM TrackCounts tc
        JOIN Track t on t.TrackId = tc.TrackId
        JOIN MediaType mt ON mt.MediaTypeid = t.MediaTypeId
    GROUP BY mt.Name
)
SELECT MAX(TotalSales) TotalSales, Name
FROM MediaTypeSales