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
SELECT COUNT(*)'人数'
FROM student
GROUP BY class_id,job; 

# ORDER BY
SELECT AVG(salary) avg_sal,subject_id
FROM teacher
GROUP BY subject_id
ORDER BY avg_sal DESC;

#查看班级人数超过60人中年纪最大的同学生日是多少
SELECT MIN(birth) '最大生日',class_id
FROM student
GROUP BY class_id
HAVING COUNT(*) > 60

#查看同一科目平均年龄超过35岁的老师中最小年龄是多少、
SELECT MIN(age),subject_id
FROM teacher
GROUP BY subject_id
HAVING AVG(age) > 35;

#子查询
SELECT name,salary
FROM teacher
WHERE salary > (SELECT salary
                FROM teacher
                WHERE name = 'AAA');
#查看和'BBB'同班的都有谁
SELECT name
FROM student
WHERE class_id = (SELECT class_id
                FROM student
                WHERE name = 'BBB');
#查看和三年级二班同一层的班级都有哪些？
SELECT name
FROM class
WHERE floor = (SELECT floor
                FROM class
                WHERE name = '三年级二班');
# 查看最高工资的老师的工资和奖金是多少
SELECT salary,comm
FROM teacher
WHERE salary = (SELECT MAX(salary)
                FROM teacher);
#查看3年级2班的学生都有谁
SELECT name
FROM student
WHERE class_id = (SELECT id 
                    FROM class
                    WHERE name = '3 年级2班');

#教语文的老师都有谁
SELECT name
FROM teacher
WHERE subject_id = (SELECT id FROM subject WHERE name = '语文');

#IN, NOT IN
-- SELECT class_id FROM student WHERE name IN ('AAA','BBB');
SELECT name,age,class_id
FROM student
WHERE class_id IN (SELECT class_id FROM student WHERE name IN ('AAA','BBB');)