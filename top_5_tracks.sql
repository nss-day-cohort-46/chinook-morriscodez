SELECT
        t.name as TrackName,
        COUNT(*) as TimesPurchased
FROM Track t
JOIN InvoiceLine ON invoiceline.trackid = t.trackid 
GROUP BY t.trackid
ORDER BY TimesPurchased DESC
LIMIT 5

SELECT 
    track.Name,
    artist.name as ArtistName
FROM Track
JOIN album on album.albumid = track.AlbumId
JOIN artist on artist.ArtistId = album.ArtistId
ORDER BY Track.Name