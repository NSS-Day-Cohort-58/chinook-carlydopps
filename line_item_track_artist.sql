-- Query that shows each Invoice line item, with the name of the track that was purchase, and the name of the artist

SELECT  
    i.*, 
    t.name as "TrackName",
    t.composer as "Artist"
FROM InvoiceLine i
JOIN Track t ON t.trackId = i.trackId;