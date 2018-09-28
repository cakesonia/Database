SELECT DISTINCT maker 
FROM product
WHERE type = 'pc' AND maker = SOME(SELECT maker FROM product WHERE type = 'laptop')