-- Insert data into User table
INSERT INTO "USER" (user_id, username, password, email, date_of_birth) VALUES
(1, 'reza', 'password123', 'hello.rezaluthfi@gmail.com', TO_DATE('1990-05-20', 'YYYY-MM-DD'));
INSERT INTO "USER" (user_id, username, password, email, date_of_birth) VALUES
(2, 'luthfi', 'password456', 'luthfi@gmail.com', TO_DATE('1992-08-15', 'YYYY-MM-DD'));
INSERT INTO "USER" (user_id, username, password, email, date_of_birth) VALUES
(3, 'akbar', 'password789', 'akbar@gmail.com', TO_DATE('1988-12-10', 'YYYY-MM-DD'));
INSERT INTO "USER" (user_id, username, password, email, date_of_birth) VALUES
(4, 'bob', 'password101', 'bob@gmail.com', TO_DATE('1985-03-25', 'YYYY-MM-DD'));
INSERT INTO "USER" (user_id, username, password, email, date_of_birth) VALUES
(5, 'charlie', 'password102', 'charlie@gmail.com', TO_DATE('1995-11-30', 'YYYY-MM-DD'));

-- Insert data into Director table
INSERT INTO director (director_id, director_name) VALUES
(1, 'Christopher Nolan');
INSERT INTO director (director_id, director_name) VALUES
(2, 'James Cameron');
INSERT INTO director (director_id, director_name) VALUES
(3, 'Steven Spielberg');
INSERT INTO director (director_id, director_name) VALUES
(4, 'Quentin Tarantino');
INSERT INTO director (director_id, director_name) VALUES
(5, 'Martin Scorsese');
INSERT INTO director (director_id, director_name) VALUES
(6, 'Peter Jackson');
INSERT INTO director (director_id, director_name) VALUES
(7, 'Ridley Scott');

-- Insert data into Genre table
INSERT INTO genre (genre_id, genre_name) VALUES
(1, 'Science Fiction');
INSERT INTO genre (genre_id, genre_name) VALUES
(2, 'Action');
INSERT INTO genre (genre_id, genre_name) VALUES
(3, 'Romance');
INSERT INTO genre (genre_id, genre_name) VALUES
(4, 'Fantasy');
INSERT INTO genre (genre_id, genre_name) VALUES
(5, 'Drama');
INSERT INTO genre (genre_id, genre_name) VALUES
(6, 'Comedy');
INSERT INTO genre (genre_id, genre_name) VALUES
(7, 'Thriller');
INSERT INTO genre (genre_id, genre_name) VALUES
(8, 'Adventure');

-- Insert data into Language table
INSERT INTO language (language_id, language_name) VALUES
(1, 'English');
INSERT INTO language (language_id, language_name) VALUES
(2, 'Spanish');
INSERT INTO language (language_id, language_name) VALUES
(3, 'French');
INSERT INTO language (language_id, language_name) VALUES
(4, 'German');
INSERT INTO language (language_id, language_name) VALUES
(5, 'Japanese');
INSERT INTO language (language_id, language_name) VALUES
(6, 'Mandarin');

-- Insert data into Movie table
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(1, 'Inception', TO_DATE('2010-07-16', 'YYYY-MM-DD'), 148, 8.8, 1, 1, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(2, 'The Dark Knight', TO_DATE('2008-07-18', 'YYYY-MM-DD'), 152, 9.0, 1, 2, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(3, 'Interstellar', TO_DATE('2014-11-07', 'YYYY-MM-DD'), 169, 8.6, 1, 1, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(4, 'Titanic', TO_DATE('1997-12-19', 'YYYY-MM-DD'), 195, 7.8, 2, 3, 2);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(5, 'Avatar', TO_DATE('2009-12-18', 'YYYY-MM-DD'), 162, 7.8, 2, 4, 2);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(6, 'Jurassic Park', TO_DATE('1993-06-11', 'YYYY-MM-DD'), 127, 8.1, 3, 8, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(7, 'Pulp Fiction', TO_DATE('1994-10-14', 'YYYY-MM-DD'), 154, 8.9, 4, 7, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(8, 'The Shawshank Redemption', TO_DATE('1994-09-23', 'YYYY-MM-DD'), 142, 9.3, 5, 5, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(9, 'The Lord of the Rings: The Fellowship of the Ring', TO_DATE('2001-12-19', 'YYYY-MM-DD'), 178, 8.8, 6, 4, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(10, 'Gladiator', TO_DATE('2000-05-05', 'YYYY-MM-DD'), 155, 8.5, 7, 8, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(11, 'Schindler''s List', TO_DATE('1993-12-15', 'YYYY-MM-DD'), 195, 8.9, 3, 5, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(12, 'The Matrix', TO_DATE('1999-03-31', 'YYYY-MM-DD'), 136, 8.7, 1, 1, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(13, 'Fight Club', TO_DATE('1999-10-15', 'YYYY-MM-DD'), 139, 8.8, 5, 7, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(14, 'The Godfather', TO_DATE('1972-03-24', 'YYYY-MM-DD'), 175, 9.2, 5, 5, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(15, 'Forrest Gump', TO_DATE('1994-07-06', 'YYYY-MM-DD'), 142, 8.8, 3, 6, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(16, 'Star Wars: Episode IV - A New Hope', TO_DATE('1977-05-25', 'YYYY-MM-DD'), 121, 8.6, 3, 1, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(17, 'The Lion King', TO_DATE('1994-06-24', 'YYYY-MM-DD'), 88, 8.5, 3, 4, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(18, 'Spirited Away', TO_DATE('2001-07-20', 'YYYY-MM-DD'), 125, 8.6, 1, 4, 5);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(19, 'Amélie', TO_DATE('2001-04-25', 'YYYY-MM-DD'), 122, 8.3, 1, 6, 3);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(20, 'The Intouchables', TO_DATE('2011-11-02', 'YYYY-MM-DD'), 112, 8.5, 1, 6, 3);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(21, 'Parasite', TO_DATE('2019-05-30', 'YYYY-MM-DD'), 132, 8.6, 1, 5, 6);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(22, 'Coco', TO_DATE('2017-10-27', 'YYYY-MM-DD'), 105, 8.4, 1, 4, 2);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(23, 'Mad Max: Fury Road', TO_DATE('2015-05-15', 'YYYY-MM-DD'), 120, 8.1, 1, 2, 1);
INSERT INTO movie (movie_id, title, release_date, duration, rating, director_id, genre_id, language_id) VALUES
(24, 'The Avengers', TO_DATE('2012-05-04', 'YYYY-MM-DD'), 143, 8.0, 1, 2, 1);

-- Insert data into Review table with Indonesian comments
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(1, 1, 1, 9.0, 'Film yang luar biasa dengan plot yang mengesankan!', TO_DATE('2021-06-14', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(2, 2, 2, 9.5, 'Film superhero terbaik sepanjang masa.', TO_DATE('2021-06-15', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(3, 3, 3, 8.5, 'Film fiksi ilmiah yang hebat dengan visual yang menakjubkan.', TO_DATE('2021-06-16', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(4, 4, 4, 7.0, 'Cerita cinta yang menyentuh hati.', TO_DATE('2021-06-17', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(5, 5, 5, 8.0, 'Dunia dan visual yang fantastis.', TO_DATE('2021-06-18', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(6, 1, 2, 9.0, 'Heath Ledger sangat fenomenal!', TO_DATE('2021-06-19', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(7, 2, 1, 8.5, 'Sebuah karya yang benar-benar luar biasa.', TO_DATE('2021-06-20', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(8, 3, 6, 8.2, 'Dinosaurus hidup dengan cara yang mendebarkan!', TO_DATE('2021-07-01', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(9, 4, 7, 8.9, 'Karya terbaik Tarantino!', TO_DATE('2021-07-02', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(10, 5, 8, 9.4, 'Drama yang sangat mengharukan dan membangkitkan semangat.', TO_DATE('2021-07-03', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(11, 1, 9, 9.0, 'Epik dan besar, sebuah kisah fantasi klasik.', TO_DATE('2021-07-04', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(12, 2, 10, 8.6, 'Kisah gladiator dengan kedalaman emosional.', TO_DATE('2021-07-05', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(13, 3, 11, 9.0, 'Film perang yang kuat dan emosional.', TO_DATE('2021-07-06', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(14, 4, 12, 8.7, 'Revolusioner dan penuh aksi.', TO_DATE('2021-07-07', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(15, 5, 13, 8.8, 'Drama psikologis yang brilian.', TO_DATE('2021-07-08', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(16, 1, 14, 9.2, 'Klasik abadi tentang keluarga dan kekuasaan.', TO_DATE('2021-07-09', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(17, 2, 15, 8.7, 'Cerita yang menghangatkan hati tentang cinta dan kehidupan.', TO_DATE('2021-07-10', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(18, 3, 16, 8.5, 'Epik ruang angkasa asli.', TO_DATE('2021-07-11', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(19, 4, 17, 8.6, 'Sebuah mahakarya animasi.', TO_DATE('2021-07-12', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(20, 5, 18, 8.6, 'Perjalanan yang dianimasikan dengan indah.', TO_DATE('2021-07-13', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(21, 1, 19, 8.4, 'Menawan dan menyenangkan.', TO_DATE('2021-07-14', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(22, 2, 20, 8.5, 'Inspiratif dan menghangatkan hati.', TO_DATE('2021-07-15', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(23, 3, 21, 8.6, 'Sebuah satir sosial dengan plot yang mendebarkan.', TO_DATE('2021-07-16', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(24, 4, 22, 8.4, 'Penuh warna dan kaya budaya.', TO_DATE('2021-07-17', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(25, 5, 23, 8.1, 'Aksi yang tiada henti dan visual yang menakjubkan.', TO_DATE('2021-07-18', 'YYYY-MM-DD'));
INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date) VALUES
(26, 1, 24, 8.0, 'Superhero bersatu dalam pertarungan yang spektakuler.', TO_DATE('2021-07-19', 'YYYY-MM-DD'));
