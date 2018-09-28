SELECT c.class, sum(c.number) FROM (
SELECT DISTINCT class, 
CASE 
    WHEN EXISTS(SELECT class FROM ships)
	THEN CAST(COUNT(class) AS varchar) 
	END AS number
FROM ships
GROUP BY class
UNION 
SELECT DISTINCT class, COUNT(*) AS number
FROM classes, outcomes
WHERE ship = class
GROUP BY class) AS c 
GROUP BY c.class
