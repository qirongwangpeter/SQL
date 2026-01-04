#TCL--事务控制语言，与删表无关，与增删改有关
BEGIN;

--.....;
DELETE FROM teacher
WHERE subject_id = (SELECT subject_id FROM teacher WHERE name = '范传奇');

COMMIT;--run this to confirm
ROLLBACK;--run this to rollback

--关联查询

SELECT teacher.name,teacher.salary,subject.name
FROM teacher,subject
WHERE teacher.subject_id = subject.id;
AND teacher.name IN ('AAA','BBB');--condition

-- OR
AND teacher.name LIKE '王%'

SELECT s.name,c.name,t.name
FROM student s,class c, teacher tables
WHERE s.class_id = c.id AND c.teacher_id = t.id
AND t.name = '范传奇';

#查看将每门课老师的平均工资
SELECT AVG(t.salary),s.name
FROM  subject s, teacher t
WHERE s.name = t.subject_id
GROUP BY s.name;
#再加上平均工资要大于100
HAVING AVG(t.salary) > 100;

