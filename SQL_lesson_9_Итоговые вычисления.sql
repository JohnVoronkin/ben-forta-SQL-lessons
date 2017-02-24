------------------------------
------ИТОГОВЫЕ ВЫЧИСЛЕНИЯ-----
------------------------------
/*
Функции, обрабатывающие набор строк для вычисления одного обобщающего значения.
Итоговые функции предназначены для вычисления базовых статических данных.
*/
--AVG() - среднее значение по столбцу
--COUNT() - Число строк в столбце
--MAX() - Наибольшее значение в столбце (Число / Дата; Текст - выводится последняя строка в зависимости от сортировки)
--MIN() - Наименьшее значение в столбце (Число / Дата; Текст - выводится первая строка)
--SUM() - Сумма значений стобца
SELECT prod_id, prod_price, vend_id
FROM Products;

SELECT AVG(prod_price) 
    AS avg_prod_price
FROM Products;

SELECT AVG(prod_price) 
    AS avg_prod_price_DLL01
FROM Products
WHERE vend_id = 'DLL01'; --среднее значение определенной строки

/*
AVG() - можно использовать только для вычисления среднего значения конкретного числового
столбца. Имя столбца указывается в качестве аргумента функции.
Для определения ср. значения по нескольким столбцам - необходимо исполь-ть несколько
функций AVG()
*/
SELECT *
FROM customers;

SELECT COUNT(*) AS num_cust -- подсчет общего кол-ва строк в таблице
FROM customers;

SELECT COUNT(cust_email) AS num_cust -- подсчет общего кол-ва строк в таблице c заполненным полем email 
FROM customers;
--
SELECT MAX(prod_price) AS max_price -- максим. значение указанного столбца
FROM products;
--
SELECT MIN(prod_price) AS max_price -- миним. значение указанного столбца
FROM products;
--
SELECT *
FROM orderitems;

SELECT SUM(quantity) AS item_ordered -- сумма значение указанного столбца
FROM orderitems
WHERE order_num = 20005;

SELECT SUM(item_price * quantity) AS total_price --вычисление над несколькими столбцами, путем стандартных матем. операций 
FROM orderitems
WHERE order_num = 20005;

/*
Все пять итоговых фун-ий могут быть исполь-ны 2 спос.
- ALL - выполняются вычисления по всем строкам;
- DISTINCT - выполняются вычисления по уникальным значениям;
*/

SELECT *
FROM Products;

SELECT AVG(DISTINCT prod_price) -- ключевое слово DISTINCT должно стоять перед именем столбца
    AS avg_prod_price_DLL01
FROM Products
WHERE vend_id = 'DLL01'; --среднее значение определенной строки


/*
Комбинирование итоговых функций
*/
SELECT COUNT(*) AS num_items,
       MIN(prod_price) AS price_min,
       MAX(prod_price) AS price_max,
       AVG(prod_price) AS price_avg,
       SUM(prod_price) AS price_sum
FROM products;














