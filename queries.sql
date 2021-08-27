-- write your queries here
-- 1.
SELECT * FROM owners FULL OUTER JOIN vehicles ON owners.id = vehicles.owner_id;
-- 2.
SELECT owners.first_name, owners.last_name, COUNT(*)
FROM owners 
JOIN vehicles ON owners.id = vehicles.owner_id 
GROUP BY owners.id 
ORDER BY owners.first_name;
-- 3.
SELECT owners.first_name, owners.last_name, CAST(AVG(ROUND(vehicles.price)) AS INTEGER) AS average_price, COUNT(*)
FROM owners
JOIN vehicles ON owners.id = vehicles.owner_id
GROUP BY owners.id 
HAVING COUNT(*) > 1 AND AVG(vehicles.price) > 10000
ORDER BY owners.first_name DESC;
