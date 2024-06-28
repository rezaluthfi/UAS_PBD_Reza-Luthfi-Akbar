-- Query Complex 1: Menampilkan Film dengan Rating Rata-Rata Review
SELECT m.title, AVG(r.rating) AS average_rating
FROM Movie m
JOIN Review r ON m.movie_id = r.movie_id
GROUP BY m.title;

-- Query Complex 2: Menampilkan User yang Memberikan Review Tertinggi untuk Setiap Film
SELECT u.username, m.title, r.rating
FROM Review r
JOIN "USER" u ON r.user_id = u.user_id
JOIN Movie m ON r.movie_id = m.movie_id
WHERE r.rating = (
    SELECT MAX(r2.rating)
    FROM Review r2
    WHERE r2.movie_id = r.movie_id
);

-- Query Complex 3: Menampilkan Film yang Direview oleh User Tertentu dengan Komentar Panjang
SELECT m.title, r."COMMENT"
FROM Review r
JOIN Movie m ON r.movie_id = m.movie_id
WHERE r.user_id = 1
AND LENGTH(r."COMMENT") > 50;

-- Query Complex 4: Menampilkan Film yang Tidak Direview oleh User Tertentu
SELECT m.title
FROM Movie m
WHERE m.movie_id NOT IN (
    SELECT r.movie_id
    FROM Review r
    WHERE r.user_id = 1
);

-- Query Complex 5: Menampilkan Direktur yang Memiliki Film dengan Rating Tertinggi
SELECT d.director_name, m.title, m.rating
FROM Director d
JOIN Movie m ON d.director_id = m.director_id
WHERE m.rating = (
    SELECT MAX(rating)
    FROM Movie
);