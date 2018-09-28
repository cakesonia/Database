SELECT DISTINCT maker 
FROM product type1 JOIN pc type2 ON type1.model=type2.model
WHERE speed >= 750 AND maker IN (
SELECT maker FROM product table1 JOIN laptop table2 ON table1.model = table2.model 
WHERE speed>=750)