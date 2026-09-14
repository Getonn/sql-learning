SELECT * FROM MOVIES;
SELECT ID FROM MOVIES;
SELECT TITLE FROM MOVIES;
SELECT DIRECTOR FROM MOVIES;
SELECT YEAR FROM MOVIES;
SELECT LENGH_MINUTES FROM MOVIES;

day 2
sql WHERE, AND, OR ,BETWEEN

SELECT * FROM MOVIES WHERE ID BETWEEN 1 AND 6;
SELECT TITLE, YEAR, ID FROM MOVIES
WHERE YEAR BETWEEN 1990 AND 2000;
SELECT ID FROM MOVIES WHERE ID=1;
SELECT title, director, year FROM movies
WHERE Director = ("John Lasseter" or director =  "Brad Bird" 
and year between 2000 and 2011);

day 3 
sql LIKE, NOT LIKE, %% "ABC" IN ("A", "B", "C") NOT IN ("A","B","C")

SELECT * FROM MOVIES
WHERE TITLE LIKE "WALL-%"
WHERE YEAR LIKE "20%"
WHERE LENGTH_MINUTES NOT LIKE "10%" AND YEAR NOT LIKE "20%" AND TITLE
 LIKE "toy%" or title like "%BUG%" and director like "ss"

WHERE  LENGTH_MINUTES NOT BETWEEN '110' AND '145'
	AND (TITLE LIKE 'Toy%' OR DIRECTOR LIKE '%AD%')
WHERE YEAR BETWEEN 1990 AND 2000
	OR DIRECTOR LIKE '%BRAD%'
 
day 4

Summary: between 1st and 3rd days;

SELECT * FROM MOVIES
	WHERE TITLE LIKE '%A%'
	AND (YEAR BETWEEN 2009 AND 2014 OR DIRECTOR LIKE '%STANTO_');
	
	WHERE DIRECTOR LIKE '%BIRD' OR YEAR BETWEEN 2008 AND 2009;
	
	WHERE YEAR IS 2004 AND LENGTH_MINUTES > 110;
	
	WHERE YEAR IN ('1995','2001');
	
	WHERE YEAR BETWEEN 1 AND 2000 AND DIRECTOR LIKE '%ss%';

HINT: Создал прототип опросника на python, для автоматизации процесса приема
клиентов и записи на юридическую консультацию с ветвлением логики исходя из
ответов. (ver. 0.1 Stable)

day 5 : working out mistakes (Работа над ошибками)

FROM(команда "откуда") => *(колонка(и), с которой берем - в данном случае 
- все колонки) => movies (Таблица из которой берем данные)
WHERE (ГДЕ ?) => (таблица или таблицы из которой мы берем данные)
LIKE (то, что соответствует)
NOT LIKE (Не соответствует)
% (символ ставится в начале или в конце буквы(строчки), разрешает 
добавлять любые знаки после указанных строк, либо до, либо вместе)
IN (Строгое соответствие ('A','B','C')) , NOT IT (строгое несоответствие)
' (одинарные кавычки - правильный синтаксис выделения, двойные работают 
не везде)
AND - (и), OR - (или) - вместе образуют цикл, например - where title 
like '%ss%' and (year between 2000 and 2003, or director '%bird')
BETWEEN (между, принимает значение между одним и вторым числом)
2000 (числа пишутся без кавычек)
GG_ (нижнее подчеркивание означает, что после символов присутствует 
ещё один символ, которого мы не знаем)
