SELECT c.contactFirstName, c.contactLastName, o.orderDate, MAX(p.amount) max_amount
FROM customers c
LEFT JOIN payments p
ON c.customerNumber = p.customerNumber

LEFT JOIN orders o
ON c.customerNumber = o.customerNumber
WHERE o.status = 'Shipped'

GROUP BY c.contactFirstName, c.contactLastName
ORDER BY max_amount DESC
LIMIT 1;

/*
Выберите покупателя, который совершил наибольшее количество заказов,
имеющих статус Shipped и покажите его самую дорогостоящий заказ.
Вывод должен иметь формат: Имя, фамилия, дата покупки, сумма покупки.
*/