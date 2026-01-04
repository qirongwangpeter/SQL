SELECT AVG(salary)
FROM teacher;

SELECT MAX(salary),MIN(salary),AVG(salary),SUM(salary)
FROM teacher;

SELECT COUNT(name)
FROM teacher;

#functions ignor null values

SELECT AVG(comm) FROM teacher;
SELECT IFNULL(comm,0) FROM teacher;
SELECT AVG(IFNULL(comm,0)) FROM teacher;


SELECT COUNT(1) FROM teacher;
SELECT COUNT(*) FROM teacher;

# GROUP BY
SELECT AVG(salary),tile
FROM teacher
GROUP BY title

#同班级同性人数多少

SELECT COUNT(*)
FROM student
GROUP BY class_id, gender;

#每个班的每种职位多少人？
SELECT COUNT(*)
FROM student
GROUP BY class_id,job; 

# ORDER BY
SELECT AVG(salary) avg_sal,subject_id
FROM teacher
GROUP BY subject_id
ORDER BY avg_sal DESC;