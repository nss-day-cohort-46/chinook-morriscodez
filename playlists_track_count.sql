-- Count number of songs per playlist
-- with playlist name

SELECT 
    playlist.PlaylistId as PlaylistId,
    playlist.Name as PlaylistName,
    Count(playlisttrack.trackId) as NumberOfTracks
FROM Playlist
LEFT JOIN PlaylistTrack on playlist.playlistid = PlaylistTrack.PlaylistId
GROUP BY playlist.PlaylistId