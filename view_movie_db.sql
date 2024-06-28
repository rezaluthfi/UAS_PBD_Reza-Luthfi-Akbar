-- View untuk melihat daftar semua film dengan sutradara masing-masing
CREATE OR REPLACE VIEW MoviesWithDirectors AS
SELECT m.movie_id, m.title, d.director_name
FROM Movie m
JOIN Director d ON m.director_id = d.director_id;

SELECT * FROM MoviesWithDirectors;

-- View untuk membuat daftar semua ulasan dengan detail pengguna dan film
CREATE OR REPLACE VIEW ReviewsWithDetails AS
SELECT r.review_id, u.username, m.title, r.rating, r."COMMENT", r.review_date
FROM Review r
JOIN "USER" u ON r.user_id = u.user_id
JOIN Movie m ON r.movie_id = m.movie_id;

SELECT * FROM ReviewsWithDetails;

-- View untuk mencantumkan rating film rata-rata per genre
CREATE OR REPLACE VIEW AverageRatingsPerGenre AS
SELECT g.genre_name, AVG(m.rating) AS avg_rating
FROM Movie m
JOIN Genre g ON m.genre_id = g.genre_id
GROUP BY g.genre_name;

SELECT * FROM AverageRatingsPerGenre;

-- View untuk membuat daftar film dengan rating ulasan rata-rata
CREATE OR REPLACE VIEW MoviesWithAverageReviewRating AS
SELECT m.movie_id, m.title, AVG(r.rating) AS avg_review_rating
FROM Movie m
JOIN Review r ON m.movie_id = r.movie_id
GROUP BY m.movie_id, m.title;

SELECT * FROM MoviesWithAverageReviewRating;