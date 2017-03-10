---ИЗВЛЕЧЕНИЕ ДАННЫХ ИЗ ТАБЛИЦ

SELECT prod_id, vend_id, prod_name, prod_price
FROM Products;

/*
Только уникальные значения (строки) столбца
*/
SELECT DISTINCT vend_id
FROM Products;

/*
Лимит выборки строк таблицы
*/
SELECT vend_id, prod_name
FROM Products
LIMIT 4;

/*
LIMIT - число возвращаемых строк;
OFFSET - начальная точка извлечения записей (/строк) из таблицы
*/
SELECT vend_id, prod_name
FROM Products
LIMIT 2 OFFSET 4;