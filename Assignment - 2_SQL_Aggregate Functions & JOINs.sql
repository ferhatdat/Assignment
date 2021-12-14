SELECT AlbumId, COUNT(Name) AS tracks_number
FROM tracks
GROUP BY AlbumId
ORDER BY tracks_number DESC;

SELECT a.Title AS album_title, t.Name AS track_name
FROM tracks AS t
LEFT JOIN albums AS a
ON t.AlbumId = a.AlbumId

SELECT t.AlbumId, a.Title, MIN(t.Milliseconds) AS Duration
FROM tracks AS t
LEFT JOIN albums AS a
ON t.AlbumId = a.AlbumId
GROUP BY a.AlbumId
ORDER BY Duration DESC;

SELECT a.AlbumId, a.Title, SUM(t.Milliseconds) AS Duration
FROM tracks AS t
LEFT JOIN albums AS a
ON t.AlbumId = a.AlbumId
GROUP BY a.AlbumId
ORDER BY Duration DESC;

SELECT a.AlbumId, a.Title, SUM(t.Milliseconds) AS Duration
FROM tracks AS t
LEFT JOIN albums AS a
ON t.AlbumId = a.AlbumId
GROUP BY a.AlbumId
HAVING Duration > 4200000
ORDER BY Duration DESC;









