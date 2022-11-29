-- Query that shows the total number of tracks in each playlist

SELECT  
    p.name as "PlaylistName",
    COUNT(pt.playlistId) as "TracksPerPlaylist"
FROM PlaylistTrack pt
JOIN Playlist p
    ON p.playlistId = pt.playlistId
GROUP BY p.playlistId;