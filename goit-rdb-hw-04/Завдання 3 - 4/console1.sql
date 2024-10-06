USE mydb;

SELECT
    orders.id AS order_id,
    customers.name AS customer_name,
    customers.contact AS customer_contact,
    employees.first_name AS employee_first_name,
    employees.last_name AS employee_last_name,
    orders.date AS order_date,
    shippers.name AS shipper_name,
    products.name AS product_name,
    categories.name AS category_name,
    suppliers.name AS supplier_name,
    order_details.quantity AS product_quantity,
    products.price AS product_price
FROM orders
         INNER JOIN customers ON orders.customer_id = customers.id
         INNER JOIN employees ON orders.employee_id = employees.employee_id
         INNER JOIN shippers ON orders.shipper_id = shippers.id
         INNER JOIN order_details ON orders.id = order_details.order_id
         INNER JOIN products ON order_details.product_id = products.id
         INNER JOIN categories ON products.category_id = categories.id
         INNER JOIN suppliers ON products.supplier_id = suppliers.id;

SELECT COUNT(*) AS total_rows
FROM Result_1;

SELECT
    orders.id AS order_id,
    customers.name AS customer_name,
    customers.contact AS customer_contact,
    employees.first_name AS employee_first_name,
    employees.last_name AS employee_last_name,
    orders.date AS order_date,
    shippers.name AS shipper_name,
    products.name AS product_name,
    categories.name AS category_name,
    suppliers.name AS supplier_name,
    order_details.quantity AS product_quantity,
    products.price AS product_price
FROM orders
         LEFT JOIN customers ON orders.customer_id = customers.id
         LEFT JOIN employees ON orders.employee_id = employees.employee_id
         LEFT JOIN shippers ON orders.shipper_id = shippers.id
         LEFT JOIN order_details ON orders.id = order_details.order_id
         LEFT JOIN products ON order_details.product_id = products.id
         LEFT JOIN categories ON products.category_id = categories.id
         LEFT JOIN suppliers ON products.supplier_id = suppliers.id;

SELECT COUNT(*) AS total_rows
FROM Result;

SELECT
    orders.id AS order_id,
    customers.name AS customer_name,
    customers.contact AS customer_contact,
    employees.first_name AS employee_first_name,
    employees.last_name AS employee_last_name,
    orders.date AS order_date,
    shippers.name AS shipper_name,
    products.name AS product_name,
    categories.name AS category_name,
    suppliers.name AS supplier_name,
    order_details.quantity AS product_quantity,
    products.price AS product_price
FROM orders
         RIGHT JOIN customers ON orders.customer_id = customers.id
         RIGHT JOIN employees ON orders.employee_id = employees.employee_id
         RIGHT JOIN shippers ON orders.shipper_id = shippers.id
         RIGHT JOIN order_details ON orders.id = order_details.order_id
         RIGHT JOIN products ON order_details.product_id = products.id
         RIGHT JOIN categories ON products.category_id = categories.id
         RIGHT JOIN suppliers ON products.supplier_id = suppliers.id;

SELECT COUNT(*) AS total_rows
FROM Result_2;

-- Кількість рядків не змінилася в жодному з випадків, оскільки всі таблиці які я використовував у запиті,
-- мали відповідні записи в інших таблицях.
-- Якби записи були відсутні, тоді могли побачити зростання кількості рядків при використанні LEFT JOIN або RIGHT JOIN.
-- Result_1, Result_2 та Result мають однакову кількість рядків