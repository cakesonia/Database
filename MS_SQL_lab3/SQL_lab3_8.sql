SELECT ship, displacement, numGuns 
FROM outcomes, classes, ships
WHERE battle = 'Guadalcanal' AND outcomes.ship  = ships.name AND ships.class = classes.class