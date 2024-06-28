-- Procedure untuk menambahkan ulasan baru
CREATE OR REPLACE PROCEDURE AddReview(
    p_review_id IN NUMBER,
    p_user_id IN NUMBER,
    p_movie_id IN NUMBER,
    p_rating IN NUMBER,
    p_comment VARCHAR2,
    p_review_date IN DATE
)
IS
BEGIN
    INSERT INTO review (review_id, user_id, movie_id, rating, "COMMENT", review_date)
    VALUES (p_review_id, p_user_id, p_movie_id, p_rating, p_comment, p_review_date);
    -- Tampilkan pesan
    DBMS_OUTPUT.PUT_LINE('Review ditambahkan untuk user ' || p_user_id || ' pada movie ' || p_movie_id);
END AddReview;
/

-- Block PL/SQL untuk memanggil prosedur
BEGIN
    AddReview(35, 1, 4, 8, 'Filmnya mantap abisss!', SYSDATE);
END;
/

-- Verifikasi dengan melihat tabel Review
SELECT * FROM Review WHERE user_id = 1 AND movie_id = 4;




-- Procedure untuk memperbarui peringkat film
CREATE OR REPLACE PROCEDURE UpdateMovieRating(
    p_movie_id IN NUMBER,
    p_rating IN NUMBER
)
IS
BEGIN
    UPDATE Movie
    SET rating = p_rating
    WHERE movie_id = p_movie_id;
    -- Tampilkan pesan
    DBMS_OUTPUT.PUT_LINE('Peringkat untuk movie ' || p_movie_id || ' diperbarui menjadi ' || p_rating);
END UpdateMovieRating;
/

-- Block PL/SQL untuk memanggil prosedur
BEGIN
    UpdateMovieRating(2, 10);
END;
/

-- Verifikasi dengan melihat tabel Movie
SELECT * FROM Movie WHERE movie_id = 2;



-- Procedure untuk menghapus ulasan
CREATE OR REPLACE PROCEDURE DeleteReview(p_review_id IN NUMBER)
IS
BEGIN
    DELETE FROM Review
    WHERE review_id = p_review_id;
    -- Tampilkan pesan
   DBMS_OUTPUT.PUT_LINE('Review dengan ID ' || p_review_id || ' dihapus');
END DeleteReview;
/

-- Block PL/SQL untuk memanggil prosedur
BEGIN
    DeleteReview(35);
END;
/

-- Verifikasi dengan melihat tabel Review
SELECT * FROM Review WHERE review_id = 35;
