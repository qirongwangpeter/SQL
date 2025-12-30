CREATE TABLE userinfo(
    id INT,
    name VARCHAR(30),
    gender CHAR(1),
    birthday DAYTIME,
    age DOUBLE(7,2)
)

INSERT INTO userinfo (id,name,gender,birthday,salary)
VALUES (1,'AAA','male','1992-08-02 20:55:33',5000.19);

CRAETE TABLE user1(
    id INT PRIMARY KEY,
    name VARCHAR(30),
    age INT(3)
)
INSERT INTO user1 (id,name,age)
VALUES(1,'AA',18),(2,'BB',22);
#id can't be duplicated nor NULL!(PRIMARY KEY)

CREATE TABLE user2(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30),
    age INT(3)
)
ALTER TABLE user1 CHANGE id id INT PRIMARY KEY AUTO_INCREMENT;
INSERT INTO user2 (name,age)
VALUES ('AA',18),('BB',22);

DELETE FROM user1 WHERE name = 'AA';


CREATE TABLE user3(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    age INT(3)
)

CREATE TABLE user4(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) UNIQUE, #all values must be unique except for null.
    age INT(3)
)
ALTER TABLE user4 CHANGE name name VARCHAR(30) NOT NULL UNIQUE;



CREATE TABLE user5(
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) UNIQUE,
    age INT(3) CHECK (age > 0 AND age < 120)
)