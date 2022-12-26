# Вывести на экран сколько машин каждого цвета для машин марок BMW и LADA

SELECT MARK, COLOR, COUNT(COLOR)
FROM AUTO
GROUP BY MARK, COLOR
HAVING MARK = "BMW" OR MARK = "LADA";

# Вывести на экран марку авто и количество AUTO не этой марки

SELECT MARK, (SELECT COUNT(MARK) FROM AUTO AS A1 WHERE A1.MARK != A2.MARK) AS "число машин других марок"
FROM AUTO AS A2
GROUP BY MARK;


SELECT MARK, COUNT(MARK)
FROM AUTO
GROUP BY MARK

# Даны 2 таблицы, созданные следующим образом:
create table test_a (id INT, data varchar(1));
create table test_b (id INT);
insert into test_a(id, data) values
(10, 'A'),
(20, 'A'),
(30, 'F'),
(40, 'D'),
(50, 'C');

insert into test_b(id) values
(10),
(30),
(50);

# Напишите запрос, который вернет строки из таблицы test_a, id которых нет в таблице test_b, НЕ используя ключевого слова NOT.

SELECT ID, DATA
FROM TEST_A
NATURAL LEFT JOIN TEST_B
WHERE TEST_B.ID IS NULL;

