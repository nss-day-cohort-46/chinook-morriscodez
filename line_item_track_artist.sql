SELECT
    t.Name as TrackName,
    a.Name as ArtistName,
    i.*
FROM
    InvoiceLine i
JOIN track t ON t.trackId = i.TrackId
JOIN Album on Album.AlbumId = t.AlbumId
JOIN Artist a ON a.ArtistId = album.ArtistId
ORDER BY TrackName
