-- Trigger untuk mencegah ulasan ganda oleh pengguna yang sama untuk film yang sama
CREATE OR REPLACE TRIGGER PreventDuplicateReview
BEFORE INSERT ON Review
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*)
    INTO v_count
    FROM Review
    WHERE user_id = :NEW.user_id
    AND movie_id = :NEW.movie_id;

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'User has already reviewed this movie.');
    END IF;
END;
/

-- Mengaktifkan server output
SET SERVEROUTPUT ON;

-- Pengujian Trigger
BEGIN
    INSERT INTO Review (review_id, user_id, movie_id, rating, "COMMENT", review_date)
    VALUES (2, 1, 1, 5, 'Another review!', SYSDATE);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

-- Memeriksa ulasan untuk pengguna 1 dan film 1
SELECT * FROM Review WHERE user_id = 1 AND movie_id = 1;



-- Trigger untuk memastikan bahwa rating yang dimasukkan oleh pengguna berada dalam rentang yang valid
CREATE OR REPLACE TRIGGER EnforceValidRatingRange
BEFORE INSERT OR UPDATE ON Review
FOR EACH ROW
DECLARE
    v_min_rating NUMBER := 1;
    v_max_rating NUMBER := 10;
BEGIN
    -- Memastikan rating yang dimasukkan berada dalam rentang yang valid
    IF :NEW.rating < v_min_rating OR :NEW.rating > v_max_rating THEN
        RAISE_APPLICATION_ERROR(-20004, 'Rating must be between ' || v_min_rating || ' and ' || v_max_rating || '.');
    END IF;
END;
/

-- Pengujian untuk rating yang tidak valid (contoh: rating = 15)
BEGIN
    INSERT INTO Review (review_id, user_id, movie_id, rating, "COMMENT", review_date)
    VALUES (49, 4, 5, 15, 'Good movie!', SYSDATE);
    DBMS_OUTPUT.PUT_LINE('Insert successful.');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/

