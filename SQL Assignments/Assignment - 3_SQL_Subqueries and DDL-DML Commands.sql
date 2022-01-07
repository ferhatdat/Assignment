/* Single-Row Subqueries: */
1.
SELECT TrackId, name, Milliseconds
FROM tracks
WHERE Milliseconds = (SELECT max(Milliseconds) from tracks);

2.
SELECT TrackId, name, Milliseconds
FROM tracks
WHERE Milliseconds = (SELECT min(Milliseconds) from tracks);

3. 
SELECT TrackId, Name, Bytes, (SELECT avg(Bytes) FROM tracks) as [General average]
FROM tracks
WHERE Bytes > 
(SELECT avg(Bytes)
FROM tracks)
ORDER BY Bytes DESC;

/*Multiple-Row Subqueries:*/
1. 
SELECT CustomerId, FirstName, LastName
FROM customers
where SupportRepId IN 
(SELECT EmployeeId 
from employees
WHERE LastName IN ("Peacock", "Park") and FirstName IN ("Jane", "Margaret"));

2.
SELECT c.CustomerId, c.FirstName, c.LastName
FROM customers c
INNER JOIN employees e
ON c.SupportRepId = e.EmployeeId
WHERE e.LastName IN ("Peacock", "Park") and e.FirstName IN ("Jane", "Margaret");

/*DDL (CREATE, ALTER, DELETE) and DML (SELECT, INSERT, UPDATE, DELETE) Statements:*/

1.
CREATE TABLE if not exists courses 
(CourseId INT PRIMARY KEY,
CourseName TEXT NOT NULL, 
EmployeeId INT,
CoursePrice INT,
FOREIGN KEY(EmployeeId) 
REFERENCES employees(EmployeeId));

2.
INSERT INTO courses VALUES(1, 'SQL', 1, 500);
INSERT INTO courses VALUES(2, 'CSS', 4, 700);
INSERT INTO courses VALUES(3, 'HTML', 5, 400);
INSERT INTO courses VALUES(4, 'Python', 2, 800);
INSERT INTO courses VALUES(5, 'LINUX', 7, 600);

3. 
DELETE FROM courses
WHERE CourseId = 5;

4.
ALTER TABLE courses
ADD COLUMN "StartDate" TEXT NOT NULL;

5.
ALTER TABLE courses
DROP COLUMN "CoursePrice";

6. 
DROP TABLE courses;





 
  
 
 
 


