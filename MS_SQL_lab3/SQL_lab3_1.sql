SELECT trip_no, town_from, town_to 
FROM trip 
WHERE trip.town_to != 'Rostov' AND trip.town_from != 'Rostov' 
ORDER BY trip.plane