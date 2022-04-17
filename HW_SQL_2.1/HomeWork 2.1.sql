SELECT COUNT(*)
FROM products
WHERE productLine IN ('Vintage Cars', 'Classic Cars', 'Planes', 'Trucks and Buses') AND buyPrice > 80;

-- Сколько в базе товаров типа Vintage Cars, Classic Cars, Planes и Trucks and Buses, стоимость которых превышает $80?
