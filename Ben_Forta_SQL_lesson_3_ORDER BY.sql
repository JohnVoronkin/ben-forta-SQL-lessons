/*
ORDER BY - сортировка данных столбца в алфавитном порядке
*/
SELECT prod_name
FROM Products
ORDER BY prod_name; -- данные по умолчанию сортируются по возрастанию

/*
Сортировка по нескольким столбцам.
Товары сортируются по столбцу prod_name, только если существует несколько строк с одинаковыми значениями
prod_price. Если никакие значения столбца prod_price не совпадают, данные по столбцу prod_name
сортироваться не будут
Результат сортируется по двум колонкам - сначала - по цене, потом - по названию.
*/
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price, prod_name;


/*
Сортировка по положению столбца в оператора SELECT
*/
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY 2,3;

/*
Сортировка данных по убыванию
DESC(ENDING) - по убыванию - применяется к тому столбцу, после которого оно стоит.
ASC(ENDING) - по возрастанию (дефолтная сортировка).
*/
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC;

/*
Сортировка данных по убыванию по нескольким столбцам
*/
SELECT prod_id, prod_price, prod_name
FROM Products
ORDER BY prod_price DESC, prod_name DESC;