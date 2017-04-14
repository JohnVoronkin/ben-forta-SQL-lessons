------------------------------
------ОБЪЕДИНЕНИЕ ТАБЛИЦ-----
------------------------------
/*
Объединение представляет собой механизм слияния таблиц в инструкции SELECT. Используя особый синтаксис, можно объединить
несколько исходных таблиц в одну общую, к-я будет связывать на лету нужные строки из каждой таблицы.
*/

SELECT *
FROM vendors;

SELECT *
FROM products;

SELECT *
FROM orderitems;

SELECT *
FROM orders;

SELECT *
FROM customers;


/*
Ссылочная целостность означает, обеспечивающие непротиворичивость данных.
БД должна позволять пользователю вводить только достоверные значения, т.е.
к-е представлены в таблицах.
*/

SELECT vend_name, prod_name, prod_price
FROM vendors, products
WHERE vendors.vend_id = products.vend_id;

/*
Объединение по равенству - оно основано на проверке равенства записей двух таблиц - его еще
называют ВНУТРЕННИМ объединением.
*/
--иной синтаксис, чем ранее указанный
SELECT vend_name, prod_name, prod_price
FROM vendors INNER JOIN products 
    ON vendors.vend_id = products.vend_id;


SELECT prod_name, vend_name, prod_price, quantity
FROM vendors, products, orderitems
WHERE products.vend_id = vendors.vend_id
    AND orderitems.prod_id = products.prod_id
    AND order_num = 20005;

SELECT cust_name, cust_contact
FROM customers, orders, orderitems
WHERE customers.cust_id = orders.cust_id
    AND orderitems.order_num = orders.order_num
    AND prod_id = 'RGAN01';



