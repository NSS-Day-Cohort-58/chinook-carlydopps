-- Query that shows each Invoice line item, with the name of the track that was purchased

SELECT  
    i.*, 
    t.Name as "TrackName"
FROM InvoiceLine i
JOIN Track t
    ON t.trackId = i.trackId;