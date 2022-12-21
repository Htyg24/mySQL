use myfirstdb;

drop table staff;

create table staff(
	ID int primary key auto_increment not null,
    namee varchar(20) not null,
    surname  varchar(20) not null,
    specialty varchar (20) not null,
    seniority int not null,
    salary int not null,
    age int not null
);

insert into staff(namee, surname, specialty, seniority, salary, age)
values
('Вася', 'Васькин', 'начальник', 40, 100000, 60),
('Петя', 'Петькин', 'начальник', 8, 70000, 30),
('Катя', 'Каткина', 'инжинер', 2, 70000, 25),
('Саша', 'Сашкин', 'инжинер', 12, 50000, 35),
('Иван', 'Иванов', 'рабочий', 40, 30000, 59),
('Петр', 'Петров', 'рабочий', 20, 25000, 40),
('Сидор', 'Сидоров', 'рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'рабочий', 8, 19000, 28),
('Юра', 'Юркин', 'рабочий', 5, 15000, 25),
('Максим', 'Воронин', 'рабочий', 2, 11000, 22),
('Юра', 'Галкин', 'рабочий', 3, 12000, 24),
('Люся', 'Люськина', 'уборщик', 10, 10000, 49);

# Отсортируйте поле “зарплата” (salary) в порядке убывания и возрастания
-- Убавание
select * 
from staff 
order by salary desc;

-- Возрастание
select * from staff
order by salary;


# Выведите 5 максимальных зарплат (salary)

select salary
from staff
order by salary desc
limit 5;

# Подсчитать суммарную зарплату(salary) по каждой специальности (speciality)

select specialty, sum(salary) as sum 
from staff
group by specialty;

# Найти количество сотрудников по специальности “Рабочий” (speciality) в возрасте от 24 до 42 лет

select count(specialty) 
from staff
where specialty = 'Рабочий' and age between 24 and 42;

# Найти количество специальностей

select count(distinct specialty)
from staff;

# Вывести специальности, у которых средний возраст сотрудника меньше 44 лет

select specialty
from staff
group by specialty
having avg(age) < 44;