---РАСШИРЕННАЯ ФИЛЬТРАЦИЯ ДАННЫХ

/*
Можно использовать несколько условий WHERE - для этого предназначены операторы OR и AND.
*/
/*
-------
--AND-- -Для фильтрации данных по нескольким столбцам.
-------
Ключевое слово, используемое в предложении WHERE для того, чтобы возвращались только те строки, к-е удовлетворяют
ВСЕМ указанным условиям
*/
SELECT prod_id, prod_price, prod_name, vend_id
FROM Products
WHERE vend_id = 'DLL01' AND prod_price <= 4;

/*
------
--OR-- 
------
Ключевое слово OR, используемое в предложении WHERE для того, чтобы возвращались ВСЕ строки (/ записи), удовлетворяющие любому из
указанных условий.
*/
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_price DESC;

/*
--------------------------------
--Порядок обработки операторов-- 
--------------------------------
ВСЕГДА 1-м обрабатываются логические операторы AND, а затем OR.
() - скобки ВСЕГДА имеют больший приоритет, чем логические операторы OR или AND. Т.е. СУБД обрабатывает сначала условие
в скобках ().
*/
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE (vend_id = 'DLL01' OR vend_id = 'BRS01')
	AND prod_price >= 8
ORDER BY prod_price DESC;

/*
------
--IN-- 
------
Оператор IN служит для указания диапазона условий (список значений), ЛЮБОЕ ИЗ К-Х МОЖЕТ БЫТЬ ВЫПОЛНЕНО.
Значения заключенные в скобки перечисляются через ","
*/
SELECT prod_name, prod_price
FROM products
WHERE vend_id IN ('DLL01','BRS01')
ORDER BY prod_price DESC;

--эквивалент предыдущему запросу
SELECT prod_name, prod_price
FROM products
WHERE vend_id = 'DLL01' OR vend_id = 'BRS01'
ORDER BY prod_price DESC;

/*
------
--NOT-- 
------
Оператор NOT в предложении WHERE служит только одной цели - отрицать все условия, следующие за ним.
Никогда не используется сам по себе (только с др. лог. операторами). NOT вставляется перед названием столбца
значения к-го нужно фильтровать. Можно использовать NOT в связке с IN
*/
SELECT *
FROM products;

SELECT prod_name, vend_id
FROM products
WHERE NOT vend_id = 'DLL01' AND NOT vend_id = 'FNG01'
ORDER BY prod_name DESC;

--эквивалент предыдущему запросу
SELECT prod_name, vend_id
FROM products
WHERE vend_id <> 'DLL01' AND vend_id <> 'FNG01'
ORDER BY prod_name DESC;

SELECT *
FROM products
WHERE NOT vend_id IN ('DLL01','BRS01')
ORDER BY prod_name DESC;