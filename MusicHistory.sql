-- Query all of the entries in the Genre table
-- SELECT *
-- FROM Genre;

-- Using the INSERT statement, add one of your favorite artists to the Artist table.
-- INSERT INTO Artist VALUES('Talking Heads', '1976')
-- SELECT * FROM Artist

-- Using the INSERT statement, add one, or more, albums by your artist to the Album table.

-- INSERT INTO Album VALUES('Remain in Light', '11/14/1981', 2233, 'Columbia', 28, 4)
-- SELECT * FROM Album

-- Using the INSERT statement, add some songs that are on that album to the Song table.
-- SELECT * FROM Song
-- INSERT INTO Song VALUES ('Once in a Lifetime', 66, '12/03/1980', 9, 28, 23)
-- INSERT INTO Song VALUES ('Crosseyed and Painless', 82, '12/03/1980', 9, 28, 23)

-- SELECT * FROM Song 

-- Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.
-- SELECT s.Title as SongTitle, al.Title as AlbumTitle, ar.ArtistName
-- FROM Song as s
-- JOIN Album al ON s.AlbumId = al.Id 
-- JOIN Artist ar ON s.ArtistId = ar.Id

-- Reminder: Direction of join matters. Try the following statements and see the difference in results.

-- SELECT a.Title, s.Title FROM Album a LEFT JOIN Song s ON s.AlbumId = a.Id;
-- SELECT a.Title, s.Title FROM Song s LEFT JOIN Album a ON s.AlbumId = a.Id;

-- Write a SELECT statement to display how many songs exist for each album. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- SELECT s.AlbumId, COUNT(s.title) as NumOfSongs
-- FROM Song s
-- GROUP BY s.AlbumId

-- Write a SELECT statement to display how many songs exist for each artist. You'll need to use the COUNT() function and the GROUP BY keyword sequence.

-- SELECT s.AlbumId, COUNT(s.title) as NumOfSongs
-- FROM Song s
-- GROUP BY s.ArtistId

-- Write a SELECT statement to display how many songs exist for each genre. You'll need to use the COUNT() function and the GROUP BY keyword sequence.
-- SELECT  s.GenreId, COUNT(s.title) as NumberOfSongs
-- FROM Song s
-- GROUP BY s.GenreId;

-- Using MAX() function, write a select statement to find the album with the longest duration. The result should display the album title and the duration.
-- SELECT * FROM ALBUM
-- SELECT al.Title as AlbumTitle, al.AlbumLength as AlbumLength 
-- FROM Album al
-- WHERE (al.AlbumLength) = (SELECT Max(AlbumLength) as AlbumLength FROM Album)

-- Using MAX() function, write a select statement to find the song with the longest duration. The result should display the song title and the duration.
-- SELECT s.Title as SongTitle, s.SongLength
-- FROM Song s 
-- WHERE s.SongLength = (SELECT MAX(SongLength) as SongLength FROM Song)

-- Modify the previous query to also display the title of the album.
-- SELECT s.Title as SongTitle, s.SongLength, a.Title as AlbumTitle
-- FROM Song s 
-- JOIN Album a ON s.AlbumId = a.Id
-- WHERE s.SongLength = (SELECT MAX(SongLength) as SongLength FROM Song)

