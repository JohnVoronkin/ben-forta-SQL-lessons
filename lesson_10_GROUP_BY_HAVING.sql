------------------------------
------ГРУППИРОВКА ДАННЫХ-----
------------------------------
/*
Группировка данных по подмножеству записей таблицы - GROUP BY и HAVING
*/
SELECT *
FROM products;

SELECT vend_id, COUNT(*) AS num_prods
FROM products
GROUP BY vend_id
ORDER BY num_prods DESC;

/*
-Предложение GROUP BY должно стоять после предложения WHERE и перед предложением ORDER BY
-Могут быть использованы только извлекаемые столбцы или выражения; должно быть указано каждое
выражение из предложения SELECT;
*/

------------------------------
------ФИЛЬТРАЦИИ ПО ГРУППАМ---
------------------------------
/*
SQL позволяет не только группировать данные с помощью - GROUP BY. Но и осуществлять их фильтрацию,
 т.е. указывать, какие группы должны быть включены в результаты запроса.
 WHERE - фильтрует СТРОКИ; HAVING - фильтрует ГРУППЫ.
*/
SELECT *
FROM orders;

SELECT cust_id, COUNT(*) AS orders
FROM orders
GROUP BY cust_id
HAVING COUNT(*) >= 2;

/*
WHERE фильтрует строки до того, как данные будут сгруппированы, а предложение HAVING -
после того, как данные были сгруппированны.
*/
SELECT *
FROM products;

/*
WHERE and HAVING
*/
SELECT vend_id, COUNT(*) AS num_prods
FROM products
WHERE prod_price >= 4
GROUP BY vend_id
HAVING COUNT(*) >= 2
ORDER BY num_prods DESC;

SELECT *
FROM orderitems;

SELECT order_num, COUNT(*) AS items
FROM orderitems
GROUP BY order_num
HAVING COUNT(*) >= 3
ORDER BY items, order_num;

/*
Предложения инструкции SELECT и порядок их следования
Предложение -- Описание -- Необходимость
*/
--1. SELECT -- Столбцы / выражения, к-е должны быть получены -- ВАЖНОЕ
--2. FROM -- Таблица для извлечения данных -- Только если извлекаются данные из таблицы
--3. WHERE -- Фильтрация на уровне Cтрок -- Нет
--4. GROUP BY -- Определение группы -- Только если выпол-ся итоговые вычис-я по группам
--5. HAVING -- Фильтрация на уровне Групп -- Нет
--5. GROUP BY -- Порядок сортировки результатов -- Нет
