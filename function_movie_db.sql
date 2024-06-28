-- Mengaktifkan server output
SET SERVEROUTPUT ON;

-- Function untuk menghitung usia pengguna
CREATE OR REPLACE FUNCTION CalculateAge(birth_date DATE) RETURN NUMBER IS
    age NUMBER;
BEGIN
    age := FLOOR((SYSDATE - birth_date) / 365);
    RETURN age;
END CalculateAge;
/
  
-- Block PL/SQL untuk menghitung dan menampilkan usia
DECLARE
    v_birth_date DATE := TO_DATE('1990-01-01', 'YYYY-MM-DD');
    v_age NUMBER;
BEGIN
    v_age := CalculateAge(v_birth_date);
    DBMS_OUTPUT.PUT_LINE('Usia: ' || v_age);
END;
/


-- Function untuk menghitung total ulasan oleh pengguna
CREATE OR REPLACE FUNCTION TotalReviewsByUser(p_user_id NUMBER) RETURN NUMBER IS
    total_reviews NUMBER;
BEGIN
    SELECT COUNT(*) INTO total_reviews
    FROM Review
    WHERE user_id = p_user_id;
    RETURN total_reviews;
END TotalReviewsByUser;
/

-- Block PL/SQL untuk menghitung dan menampilkan total ulasan
DECLARE
    v_user_id NUMBER := 1; -- ganti dengan ID pengguna yang sesuai
    v_total_reviews NUMBER;
BEGIN
    v_total_reviews := TotalReviewsByUser(v_user_id);
    DBMS_OUTPUT.PUT_LINE('Total ulasan oleh pengguna ' || v_user_id || ': ' || v_total_reviews);
END;
/


-- Function untuk menghitung rating film rata-rata
CREATE OR REPLACE FUNCTION AverageMovieRating(p_movie_id NUMBER) RETURN NUMBER IS
    avg_rating NUMBER;
BEGIN
    SELECT AVG(rating) INTO avg_rating
    FROM Review
    WHERE movie_id = p_movie_id;
    RETURN avg_rating;
END AverageMovieRating;
/

-- Block PL/SQL untuk menghitung dan menampilkan rating film rata-rata
DECLARE
    v_movie_id NUMBER := 1;
    v_avg_rating NUMBER;
BEGIN
    v_avg_rating := AverageMovieRating(v_movie_id);
    DBMS_OUTPUT.PUT_LINE('Peringkat rata-rata film ' || v_movie_id || ': ' || v_avg_rating);
END;
/
