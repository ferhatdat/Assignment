SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY CustomerId, total DESC;

SELECT InvoiceId, CustomerId, total
FROM invoices
ORDER BY total DESC, CustomerId;

/* in the first query, it sorted CustomerId from small to large, 
then if CustomerId is equal, it sorted total from large to small.
in the second query, first it sorted total from large to small, 
then if total is equal, it sorted CustomerId from small to large.*/

SELECT *
FROM invoices
WHERE total >= 10
LIMIT 10;

SELECT *
FROM invoices
WHERE total <= 10
LIMIT 5;

SELECT Name as track_name
FROM tracks
WHERE Name like 'B%s';

SELECT * 
FROM invoices
WHERE BillingCountry IN ("USA", "Germany", "Norway", "Canada") AND InvoiceDate like "201_%"
ORDER BY InvoiceDate DESC;


