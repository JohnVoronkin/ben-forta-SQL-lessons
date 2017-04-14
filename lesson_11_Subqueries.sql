--------------------
------ПОДЗАПРОСЫ----
--------------------
-- Пример необходимо получить список всех клиентов, к-е сделали заказ товара - "RGAN01"
SELECT *
FROM customers;

SELECT *
FROM Orders;

SELECT *
FROM orderitems;

SELECT *
FROM products;


-- 1-й запрос
SELECT order_num
FROM orderitems
WHERE prod_id = 'RGAN01';
-- 2-й запрос
SELECT cust_id
FROM Orders
WHERE order_num IN (20007, 20008);

--Объединяем в подзапрос:
SELECT cust_id
FROM Orders
WHERE order_num IN (SELECT order_num
                    FROM orderitems
                    WHERE prod_id = 'RGAN01');
/*
Подзапросы всегда выполняются - начиная с самого внутреннего - инструкции SELECT 
в направлении "изнутри наружу". Т.е. сначала - 
SELECT order_num
FROM orderitems 
WHERE prod_id = 'RGAN01'
*/

--Информация о пользователях сделавших заказ 'RGAN01'
SELECT *
FROM customers
WHERE cust_id IN (SELECT cust_id
                FROM orders
                WHERE order_num IN (SELECT order_num
                                    FROM orderitems
                                    WHERE prod_id = 'RGAN01'));
                

--Посчитать общее кол-во заказов сделанных каждым из клиентов
SELECT COUNT(*) AS orders_customers
FROM orders
WHERE cust_id = '1000000004';


SELECT cust_name,
       cust_state,
       (SELECT COUNT(*)
       FROM orders
       WHERE orders.cust_id = customers.cust_id) AS
       orders_customers
FROM customers
ORDER BY orders_customers desc;

/*
Реляционные таблицы разрабатываются т.о., что вся информация распределяется по мно-ву таблиц,
причем для данных каждого типа создается отдельная таблица. Эти таблицы связываются
между собой через общие поля.

*/

