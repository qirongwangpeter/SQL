--JOIN ON 与 WHERE 来表示连接条件是一样的🔗
SELECT s.name,s.age,c.name
FROM class c
JOIN student s ON c.id = s.class_id
WHERE c.name = '1年级1班';
