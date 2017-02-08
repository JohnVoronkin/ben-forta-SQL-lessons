---ФИЛЬТРАЦИЯ ДАННЫХ
/*
В инструкции SELECT данные фильтруются путем указания критерии отбора в предложении
WHERE, указывается сразу после названия таблицы.
ORDER BY - следует сразу за WHERE.
*/
SELECT prod_name, prod_price
FROM Products
WHERE prod_price = 3.49;

/*
~ Операторы WHERE:
= - Равенство;
<> - Неравенство;
!= - Неравенство;
< - Меньше;
<= - Меньше или равно;
!< - Не меньше;
> - Больше;
>= - Больше или равно;
!> - Не больше;
BETWEEN - Вхождение в диапозон;
IS NULL - Значение NULL;
*/

SELECT prod_name, prod_price
FROM Products
WHERE prod_price <= 10;

-- Выводим товары не изготовленные фирмой "DLL01"
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE vend_id <> 'DLL01'; -- одинарные кавычки служат для определения границ строки.

/*
 Для BETWEEN обязательно два значения Начальное и Конечное - нижняя и верхняя граница диапозона;
 Диапазон должен разделен оператором AND. Значения извлекаются включая граничные значения.
*/
SELECT prod_name, prod_price, vend_id
FROM Products
WHERE prod_price BETWEEN 5 AND 10;

--IS NULL
SELECT cust_name, cust_email
FROM Customers
WHERE cust_email IS NULL;