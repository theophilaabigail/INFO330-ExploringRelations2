-- Find tracks (id, name and composer) that are part of a line in an invoice.
SELECT t.TrackId, t.Name, t.Composer
FROM tracks t
INNER JOIN invoice_items ii ON t.TrackId = ii.TrackId;
