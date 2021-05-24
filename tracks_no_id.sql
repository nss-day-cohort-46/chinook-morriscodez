SELECT
    t.name as Track,
    a.title as AlbumName,
    g.name as Genre,
    m.name as MediaType
FROM Track t
JOIN Album a on a.albumid = t.albumid
JOIN genre g on t.genreid = g.genreid
JOIN MediaType m on m.mediatypeid = t.mediatypeid
ORDER BY AlbumName