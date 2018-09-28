SELECT maker,
 CASE 
     WHEN (SELECT COUNT(*) FROM product WHERE type = 'pc' AND p.maker = maker) > 0 
	 THEN 'yes(' + CAST((SELECT COUNT(*) FROM product WHERE type = 'pc' AND p.maker = maker) AS varchar) + ')'
	 ELSE 'no'	 
END AS PC  
FROM product AS p
GROUP BY maker 