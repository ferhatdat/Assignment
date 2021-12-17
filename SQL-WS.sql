SELECT Name, Composer
FROM tracks;

SELECT *
FROM tracks;

SELECT Name, Composer
FROM tracks;

SELECT AlbumId, MediaTypeId
FROM tracks;

SELECT Composer, name, TrackId
FROM tracks
WHERE Composer = 'Jorge Ben';

SELECT *
FROM invoices
WHERE total > 25;

SELECT *
FROM invoices
WHERE total < 15
LIMIT 5;

SELECT *
FROM invoices
WHERE total > 10
ORDER BY total DESC
LIMIT 2;

SELECT *
FROM invoices
WHERE BillingCountry <> 'Canada'
ORDER BY total
LIMIT 10;

SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId, total DESC;

SELECT name
FROM tracks
WHERE name like 'B%S';

SELECT InvoiceDate
FROM invoices
WHERE InvoiceDate BETWEEN '2008-01-01' AND '2011-12-31'
ORDER BY InvoiceDate DESC
LIMIT 1;

SELECT max(InvoiceDate)
FROM invoices
WHERE InvoiceDate BETWEEN '2008-01-01' AND '2011-12-31';

SELECT FirstName, LastName, country
FROM customers
WHERE country in ('Norway', 'Belgium');

SELECT name, Composer
FROM tracks
WHERE Composer like "%Zappa%";

SELECT count(name) as tracks_number
FROM tracks;

SELECT count(InvoiceId) as invoice_number
from invoices;

SELECT count(DISTINCT Composer) as Composer
from tracks;

SELECT AlbumId, count(name) as track_number
FROM tracks
GROUP BY AlbumId
ORDER BY track_number DESC;

SELECT name, min(Milliseconds)
FROM tracks;

SELECT name, max(Milliseconds)
FROM tracks;

SELECT name, Milliseconds
FROM tracks
ORDER BY Milliseconds DESC
LIMIT 1

SELECT name
FROM tracks
WHERE Milliseconds <(SELECT avg(Milliseconds) FROM tracks);

SELECT Composer, count(name)
FROM tracks
GROUP BY Composer
ORDER BY count(name) DESC;

SELECT t.name, g.name
FROM tracks t
INNER JOIN genres g
ON t.GenreId = g.GenreId;

SELECT artists.Name, albums.Title
FROM artists 
inner JOIN albums
on albums.ArtistId = artists.ArtistId;

SELECT t.AlbumId, a.Title, min(Milliseconds) as Duration
FROM tracks t INNER JOIN albums a
on t.AlbumId = a.AlbumId
GROUP BY t.AlbumId
ORDER BY Duration DESC;

SELECT a.Title, sum(Milliseconds) as Duration
FROM tracks t INNER JOIN albums a
on t.AlbumId = a.AlbumId
GROUP BY a.AlbumId
HAVING Duration > 3600000
ORDER BY Duration DESC;

SELECT t.TrackId, t.name, a.AlbumId, a.Title
FROM albums a INNER JOIN tracks t
on a.AlbumId = t.AlbumId
WHERE a.Title in ('Prenda Minha', 'Heart of the Night', 'Out Of Exile')
GROUP BY a.AlbumId;







