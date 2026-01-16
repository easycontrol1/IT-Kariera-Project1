-- Най-продаващи се продукти
SELECT s.shop_name, b.bakery_name, b.bakery_price
FROM shops s
INNER JOIN shops_bakery sb ON s.shop_id = sb.shop_id
INNER JOIN bakeries b ON sb.bakery_id = b.bakery_id

-- Работно място на служителите
SELECT e.first_name, e.last_name, t.town_name
FROM employees e
LEFT JOIN shops s ON e.shop_id = s.shop_id
LEFT JOIN towns t ON s.city_id = t.town_ids

-- Роля на всеки служител
SELECT e.first_name, e.last_name, r.role_name
FROM employees e
INNER JOIN roles r ON e.role_id = r.role_id;

-- Градове със само 1 магазин
SELECT t.town_name
FROM towns t
JOIN shops s ON t.town_id = s.city_id
GROUP BY t.town_name
HAVING COUNT(s.shop_id) = 1;

-- Работно място на всеки мениджър
SELECT e.first_name, e.last_name, s.shop_name, s.shop_address
FROM employees e
INNER JOIN shops s ON e.shop_id = s.shop_id
INNER JOIN roles r ON e.role_id = r.role_id
WHERE r.role_name = 'manager';

-- Магазините по градовете
SELECT t.town_name, s.shop_name
FROM towns t
LEFT JOIN shops s ON t.town_id = s.city_id;

-- Липсващи печива в определени пекарни
SELECT s.shop_name, b.bakery_name
FROM bakeries b
LEFT JOIN shops_bakery sb ON b.bakery_id
LEFT JOIN shops s ON s.shop_id = 1
WHERE sb.bakery_id IS NULL;

-- Броя на служителите в определен град
SELECT t.town_name, COUNT(e.id) AS broi_slujiteli
FROM employees e
INNER JOIN shops s ON e.shop_id = s.shop_id
INNER JOIN towns t ON s.city_id = t.town_id
GROUP BY t.town_name;

-- Разход заплати по градове
SELECT t.town_name, SUM(e. salary) AS razhod_zaplati
FROM employees e
INNER JOIN shops s ON e.shop_id = s.shop_id
INNER JOIN towns t ON s.city_id = t.town_id
GROUP BY t.town_name
ORDER BY razhod_zaplati DESC;

-- Служителите и заплатите им в град Бургас
SELECT e.first_name, e.last_name, r.role_name, e.salary
FROM employees e
JOIN shops s ON e.shop_id = s.shop_id
JOIN towns t ON s.city_id = t.town_id
JOIN roles r ON e.role_id = r.role_id
WHERE t.town_name = 'Burgas';