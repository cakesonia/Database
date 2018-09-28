SELECT COUNT(date) AS number, CONVERT (varchar, date, 102) AS date, 'London' AS town
FROM pass_in_trip, trip
WHERE town_from = 'London'
GROUP BY date