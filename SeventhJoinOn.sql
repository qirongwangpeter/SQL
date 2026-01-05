--JOIN ON 与 WHERE 来表示连接条件是一样的🔗
SELECT s.name,s.age,c.name
FROM class c
JOIN student s ON c.id = s.class_id
WHERE c.name = '1年级1班';
-- LEFT/RIGHT JOIN 除了WHERE 过滤条件，会把LEFT 或RIGHT 边的表的所有信息都列出来
-- IN MySQL, UNION combine two SELECT results.
SELECT c.name,c.floor,t.name,t.title
FROM class c
LEFT JOIN teacher t ON c.teacher_id = t.id
UNION
SELECT c.name,c.floor,t.name,t.title
FROM class c
LEFT JOIN teacher t ON c.teacher_id = t.id;

SELECT COUNT(*) 人数,'姓张' 姓氏
FROM student
WHERE name LIKE '张%'
UNION
SELECT COUNT(*) 人数,'姓李' 姓氏
FROM student
WHERE name LIKE '李%';