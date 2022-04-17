SELECT e.email
FROM employees e
LEFT JOIN offices o
ON e.officeCode = o.officeCode
WHERE e.reportsTo = 1143 AND o.city = 'Boston';

-- Укажите почту подчиненных Sales Manager (NA), которые работают в Бостоне.
-- Это можно проверить, сопоставив employeeNubmer и reportsTo.
