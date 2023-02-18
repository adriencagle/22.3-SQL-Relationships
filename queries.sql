-- write your queries here
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owners_id;

SELECT first_name, last_name, COUNT(make) FROM (SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id) AS newTable ORDER BY ascending;

SELECT first_name, last_name, AVG(price) AS average_price, COUNT(make) AS count FROM(SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id) AS newTwo GROUP BY (first_name, last_name) HAVING AVG(price) > 10000 AND COUNT(make) >1 ORDER BY first_nam
e DESC;