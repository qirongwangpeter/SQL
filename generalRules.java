/*
CREATE DATABASE name CHARSET=UTF8;
SHOW DATABASES;
SHOW CREATE DATABASE name;
DROP DATABASE name;
USE name;


CREATE TABLE user(
    id INT,
    username VARCHAR(32);
    nickname VARCHAR(32);
    age INT(3)
);
DESC user;
//check all tables of current databases
SHOW TABLES;


RENAME TABLE user TO userinfo;
DROP TABLE userINFO;
*/

/*
CREATE TABLE hero(
    name VARCHAR(32),
    age INT(3)
);
ALTER TABLE hero ADD gender VARCHAR(10);//add to the last by default
ALTER TABLE hero ADD ... VARCHAR(32) FIRST;
ALTER TABLE hero ADD pwd VARCHAR(32) AFTER name;

ALTER TABLE hero CHANGE age age INT(5);
ALTER TABLE hero CHANGE name nickname VARCHAR(32) NOT NULL; //Can't ne null.
*/