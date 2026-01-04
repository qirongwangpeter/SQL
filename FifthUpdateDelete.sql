--查看不与‘范传奇’和‘王克晶’教同一科的老师有谁
SELECT name
FROM teacher
WHERE subject_id NOT IN (SELECT subject_id
                        FROM teacher
                        WHERE name IN ('王克晶','范传奇'));
#ALL,ANY
SELECT name,salary
FROM teacher
WHERE salary > ALL(SELECT salary FROM teacher WHERE subject_id IN(2,4));
--ALL(大于所有),ANY(大于任意一个)

UPDATE teacher
SET salary = salary + 500
WHERE subject_id = (SELECT subject_id FROM teacher WHERE name='范传奇');


