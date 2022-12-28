CREATE TABLE cars
(
	id INT NOT NULL PRIMARY KEY,
    name VARCHAR(45),
    cost INT
);

INSERT cars
VALUES
	(1, "Audi", 52642),
    (2, "Mercedes", 57127 ),
    (3, "Skoda", 9000 ),
    (4, "Volvo", 29000),
	(5, "Bentley", 350000),
    (6, "Citroen ", 21000 ), 
    (7, "Hummer", 41400), 
    (8, "Volkswagen ", 21600);
    
SELECT *
FROM cars;


# 1.	Создайте представление, в которое попадут автомобили стоимостью  до 25 000 долларов

DROP VIEW CAR;

CREATE VIEW CAR AS
SELECT NAME, COST
FROM CARS 
WHERE COST < 25000;

SELECT * FROM CAR;


# 2.	Изменить в существующем представлении порог для стоимости: пусть цена будет до 30 000 долларов (используя оператор ALTER VIEW) 

ALTER VIEW CAR AS
SELECT NAME, COST
FROM CARS
WHERE COST < 30000;

SELECT * FROM CAR;


# 3. 	Создайте представление, в котором будут только автомобили марки “Шкода” и “Ауди”

DROP VIEW SKOUDI;

CREATE VIEW SKOUDI AS
SELECT NAME, COST 
FROM CARS
WHERE NAME = "SKODA" OR NAME = "AUDI";

SELECT * FROM SKOUDI;



