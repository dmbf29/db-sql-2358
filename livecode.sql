-- Livecode Queries - cRud

-- 1. List all customers (names + email), ordered alphabetically (no extra information)
-- -- (Should yield 59 results)
-- SELECT first_name, last_name, email
-- FROM customers ORDER BY first_name ASC;


-- 2. Count the number of tracks that are shorter than 2 minutes
-- (Should yield 93 results)
-- SELECT COUNT(*)
-- FROM tracks WHERE milliseconds < 120000;


-- 3. List all 'Rock' tracks (only names)
-- (Should yield 1297 results)
-- SELECT tracks.name FROM tracks
-- JOIN genres ON genres.id = tracks.genre_id
-- WHERE genres.name = "Rock";


-- 4. List tracks (Name + Composer) of the 'Classical' playlist
-- -- (Should yield 75 results)
-- SELECT tracks.name, tracks.composer
-- FROM playlists
-- JOIN playlist_tracks ON playlists.id = playlist_tracks.playlist_id
-- JOIN tracks ON tracks.id = playlist_tracks.track_id
-- WHERE playlists.name = "Classical";


-- 5. Which customers (first_name, last_name) have spent the most money and how much?
-- -- (Helena Holý should be first with 49.62)
-- SELECT customers.first_name, customers.last_name, SUM(invoices.total) AS sum
-- FROM customers
-- JOIN invoices   ON invoices.customer_id = customers.id
-- GROUP BY customers.id
-- ORDER BY sum DESC;



-- 6. List the 10 artists most listed in all playlists
-- (First result should be Iron Maiden with 516 results)
-- SELECT artists.name, COUNT(*) c FROM artists
--  JOIN albums ON artists.id = albums.artist_id
--  JOIN tracks ON tracks.album_id = albums.id
--  JOIN playlist_tracks ON tracks.id = playlist_tracks.track_id
--  GROUP BY artists.id
--  ORDER BY c DESC
--  LIMIT 10;


-- 7. List the tracks(composer + name) which have been purchased at least twice, ordered by number of purchases
-- (Should yield 265 results Steve Harris - The Trooper having 5 purchases)
SELECT tracks.name, tracks.composer, COUNT(*) c
FROM tracks
JOIN invoice_lines ON tracks.id = invoice_lines.track_id
GROUP BY tracks.id
HAVING c > 1
ORDER BY c DESC;

-- WHERE -> column_name
-- HAVING -> aggregate function
