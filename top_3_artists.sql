SELECT
    a.name as ArtistName,
    SUM(il.UnitPrice) as TotalSales
FROM Artist a
JOIN Album on album.artistid = a.artistid
JOIN Track t ON t.albumid = album.AlbumId
JOIN InvoiceLine il ON il.trackid = t.trackid
GROUP BY a.artistid
ORDER BY TotalSales DESC
LIMIT 3