SELECT state, AVG(creditLimit) avg_creditLimit
FROM customers
WHERE country = 'USA'
GROUP BY state
ORDER BY avg_creditLimit DESC
LIMIT 1;

-- В каком штате у покупателей в среднем наибольший кредитный лимит (customers.creditLimit)?