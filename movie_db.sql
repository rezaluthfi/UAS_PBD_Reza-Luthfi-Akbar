-- Create User table 
CREATE TABLE "USER" (
    user_id NUMBER PRIMARY KEY,
    username VARCHAR2(50) NOT NULL,
    password VARCHAR2(50) NOT NULL,
    email VARCHAR2(100) NOT NULL,
    date_of_birth DATE NOT NULL
);

-- Create Director table
CREATE TABLE DIRECTOR (
    director_id NUMBER PRIMARY KEY,
    director_name VARCHAR2(100) NOT NULL
);

-- Create Genre table
CREATE TABLE GENRE (
    genre_id NUMBER PRIMARY KEY,
    genre_name VARCHAR2(50) NOT NULL
);

-- Create Language table
CREATE TABLE LANGUAGE (
    language_id NUMBER PRIMARY KEY,
    language_name VARCHAR2(50) NOT NULL
);

-- Create Movie table
CREATE TABLE MOVIE (
    movie_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    release_date DATE NOT NULL,
    duration NUMBER NOT NULL,
    rating NUMBER,
    director_id NUMBER,
    genre_id NUMBER,
    language_id NUMBER,
    CONSTRAINT fk_movie_director FOREIGN KEY (director_id) REFERENCES DIRECTOR(director_id),
    CONSTRAINT fk_movie_genre FOREIGN KEY (genre_id) REFERENCES GENRE(genre_id),
    CONSTRAINT fk_movie_language FOREIGN KEY (language_id) REFERENCES LANGUAGE(language_id)
);

-- Create Review table
CREATE TABLE REVIEW (
    review_id NUMBER PRIMARY KEY,
    user_id NUMBER,
    movie_id NUMBER,
    rating NUMBER NOT NULL,
    "COMMENT" VARCHAR2(500),
    review_date DATE NOT NULL,
    CONSTRAINT fk_review_user FOREIGN KEY (user_id) REFERENCES "USER"(user_id),
    CONSTRAINT fk_review_movie FOREIGN KEY (movie_id) REFERENCES MOVIE(movie_id)
);
