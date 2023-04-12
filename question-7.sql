-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).
SELECT t.TrackId, t.Name, t.Composer
FROM tracks t
LEFT JOIN invoice_items ii ON t.TrackId = ii.TrackId
WHERE ii.TrackId IS NULL;
