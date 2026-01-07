SELECT t.name,m.name
FROM teacher t
Left JOIN teacher m ON t.manager = m.id;