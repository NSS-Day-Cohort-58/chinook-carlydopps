-- Query that shows all the Tracks, but displays no IDs

SELECT  
    t.name as "AlbumName", 
    m.name as "MediaType",
    g.name as "Genre"
FROM Track t
JOIN MediaType m ON m.mediaTypeId = t.mediaTypeId
JOIN Genre g ON g.genreId = t.genreId;