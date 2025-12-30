/*
CREATE TABLE person(
    name VARCHAR(30) DEFAULT 'NOBODY',
    age INT(3)
);
INSERT INTO person (name,age) VALUES ('Peter',19);
INSERT INTO person (age,name) VALUES (31,'teacher');
SELECT * FROM person; //checking data.
ALTER TABLE person CHANGE age age INT(3) DEFAULT '18';

INSERT INTO person VALUES ('ABCD',34);//SAME ORDER AS TABLE ABOVE.
INSERT INTO person VALUES ('EFGH',12);
INSERT INTO person VALUES (DEFAULT,55);//insert default value if it has.
INSERT INTO person VALUES (NULL,66);// or null.

INSERT INTO person 
VALUES('AAA',22),('BBB',33),('CCC',44);


UPDATE person SET age=40;//this will change all age to 40!

UPDATE person 
SET age = 22
WHERE name = 'AAA';
//!= IS <> IN SQL NOT != IN JAVA.

UPDATE person 
SET age = 39
WHERE age > 30;

UPDATE person 
SET age = 66, name = 'DDD'
WHERE name = 'CCC';


DELETE FROM person
WHERE name = 'DDD';

DELETE FROM person 
WHERE age < 30;
*/
