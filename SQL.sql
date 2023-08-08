CREATE DATABASE TEST;
DROP database test;

CREATE DATABASE STUDIO_COMPANY default character SET utf8 collate utf8_general_ci;
show databases;
use studio_company;
create table test(
test_collum INT UNSIGNED
);
rename table test to new_test;

alter table new_test add  test_collum2 varchar(255);

drop table test;

create table directors(
id int not null auto_increment,
name varchar(255) not null,
PRIMARY KEY (id)
);


CREATE TABLE movies (
	id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    release_year INT,
    director_id INT NOT NULL,
    PRIMARY KEY (id),
    -- יצירת קשר יחסי לטבלה אחרת של הבמאים
    FOREIGN KEY (director_id) REFERENCES directors(id)
);

-- הוספת מידע לטבלה
INSERT INTO directors (name)
VALUES ('אפרים קישון');

SELECT * FROM directors;

INSERT INTO directors (name)
VALUES ('סטיבן שפילברג'), ('בן בכר'), ('מנחם גולן');

-- LIMIT
SELECT * FROM directors LIMIT 3;

-- עמודות ספציפיות
SELECT name FROM directors;

SELECT id AS '#', name AS 'במאי' FROM directors;

-- ארגון לפי סדר עולה
SELECT * from directors ORDER BY name;

-- ארגון לפי סדר יורד
SELECT * FROM directors ORDER BY name DESC;

INSERT INTO movies (name, release_year, director_id)
VALUES ('סאלח שבתי', 1964, 1);

INSERT INTO movies (name, release_year, director_id)
VALUES ('קזבלן', 1973, 2);

INSERT INTO movies (name, release_year, director_id)
VALUES ('לשחרר את שולי', 2021, 3);

INSERT INTO movies (name, release_year, director_id)
VALUES ('לשחרר את שולי 2', NULL, 4);

SELECT * FROM movies ;

ALTER TABLE movies AUTO_INCREMENT = 1;

CREATE DATABASE record_company default character SET utf8 collate utf8_general_ci;
DROP DATABASE record_company;


CREATE TABLE bands(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE albums(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
release_year INT,
band_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (band_id) REFERENCES bands(id)

);

DROP TABLE albums;

CREATE TABLE songs(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
length FLOAT NOT NULL,
album_id INT NOT NULL,
PRIMARY KEY (id),
FOREIGN KEY (album_id) REFERENCES albums(id)
);



