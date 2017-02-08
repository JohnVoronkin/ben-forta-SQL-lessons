--ФИЛЬТРАЦИЯ С ИСПОЛЬЗОВАНИЕМ МЕТАСИМВОЛОВ

/*
Поиск с использованием метасимволов может осуществляться только в текстовых полях (строках)
Нельзя использовать при поиске НЕтекстовых полей.
*/
--- % --- означает найти все вхождения любого символа. Учитывается множество символов.

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'Fish%';

SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '%bean bag%';

/*
Анализ - Шаблон поиска '%bean bag%' означает найти все значения, содержащие текст
bean bag в любом месте названия, независимо от кол-ва символов перед указанным текстом
или после него.
*/

--Поиск записи - название к-х начинается на F и заканчивается на y
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE 'F%y';

/* Метасимвол - "Знак подчеркивания (_)" - Учитывается ТОЛЬКО ОДИН любой символ.
Знак _ всегда означает один символ - не больше и не меньше.
*/
SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '__ inch teddy bear%';


SELECT prod_id, prod_name
FROM Products
WHERE prod_name LIKE '% inch teddy bear%';

/* Метасимвол - "Квадратные скобки([])" - служит для указания набора символов, каждый из которых
должен совпадать с искомым значением, причем в точно указанном месте (в позиции метасимвола).
*/
SELECT cust_contact
FROM customers
WHERE cust_contact LIKE '[JM]%'
ORDER BY cust_contact;

--^ - НЕ учитывается в шаблоне поиска указанный набор поиска. В некоторых СУБД - !
SELECT cust_contact
FROM customers
WHERE cust_contact LIKE '[^JD]%'
ORDER BY cust_contact;



