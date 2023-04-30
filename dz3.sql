CREATE DATABASE dz3;
use dz3;
CREATE table staff
(id int primary key auto_increment,
firstname varchar(20),
lastname varchar(30),
post varchar(20),
seniority int,
salary int,
age int);

insert into staff (firstname, lastname, post, seniority, salary, age)
values
('Вася', 'Петров', 'Начальник', 40, 100000, 60),
('Петр', 'Власов', 'Начальник', 8, 70000, 30),
('Катя', 'Катина', 'Инженер', 2, 70000, 25),
('Саша', 'Сасин', 'Инженер', 12, 50000, 35),
('Иван', 'Иванов', 'Рабочий', 40, 30000, 59),
('Петр', 'Петров', 'Рабочий', 20, 25000, 40),
('Сидр', 'Сидоров', 'Рабочий', 10, 20000, 35),
('Антон', 'Антонов', 'Рабочий', 8, 19000, 28),
('Юрий', 'Юрков', 'Рабочий', 5, 15000, 25),
('Максим', 'Максимов', 'Рабочий', 2, 11000, 22),
('Юрий', 'Максимов', 'Рабочий', 3, 12000, 24),
('Людмила', 'Маркина', 'Уборщик', 10, 10000, 49);

-- 1.Отсортируйте данные по полю заработная плата (salary) в порядке: убывания; возрастания 

SELECT * FROM staff
ORDER BY salary DESC;

SELECT * FROM staff
ORDER BY salary;

-- 2.Выведите 5 максимальных заработных плат (saraly) 

SELECT salary FROM staff
ORDER BY salary DESC
LIMIT 5;

-- 3.Посчитайте суммарную зарплату (salary) по каждой специальности (роst) 

SELECT post, SUM(salary) AS total_salary
FROM staff
GROUP BY post;

-- 4.Найдите кол-во сотрудников с специальностью (post) «Рабочий» в возрасте от 24 до 49 лет включительно. 

SELECT post, COUNT(id)
FROM staff
WHERE post = 'Рабочий' and age BETWEEN 23 AND 50
group by post;

-- 5.Найдите количество специальностей 

SELECT count(post) AS count_post
FROM (
SELECT post
FROM staff
GROUP BY post) AS tab1;

-- 6.Выведите специальности, у которых средний возраст сотрудников меньше 30 лет

SELECT post, AVG(age) AS avg_age
FROM staff
group by post
HAVING avg_age < 30;