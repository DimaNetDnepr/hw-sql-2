SELECT contactFirstName, contactLastName, orderDate, ROUND(SUM(priceEach * quantityOrdered), 2) orderSum
FROM customers t1
JOIN orders t2
ON t1.customerNumber = t2.customerNumber
JOIN orderdetails t3
ON t2.orderNumber = t3.orderNumber

WHERE t1.customerNumber = (
SELECT customerNumber
FROM classicmodels.orders
GROUP BY customerNumber
ORDER BY count(*) DESC
LIMIT 1)

GROUP BY t1.customerNumber, t2.orderNumber
ORDER BY orderSum DESC
LIMIT 1;

/*
Выберите покупателя, который совершил наибольшее количество заказов,
имеющих статус Shipped и покажите его самую дорогостоящий заказ.
Вывод должен иметь формат: Имя, фамилия, дата покупки, сумма покупки.
*/