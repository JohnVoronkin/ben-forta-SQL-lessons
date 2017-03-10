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

/*
Ссылочная целостность означает, обеспечивающие непротиворичивость данных.
БД должна позволять пользователю вводить только достоверные значения, т.е.
к-е представлены в таблицах.
*/