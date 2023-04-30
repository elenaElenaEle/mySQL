SELECT * FROM sem3.activity_staff;

-- GROUP BY. 
-- Задачи 1. Выведите общее количество напечатанных страниц каждым сотрудником 
select staff_id, sum(count_page) as total_pages
from activity_staff
group by staff_id;

-- 2. Посчитайте количество страниц за каждый день 
select date_activity, sum(count_page) as dayly_pages
from activity_staff
group by date_activity;

-- 3. Найдите среднее арифметическое по количеству ежедневных страниц
select date_activity, avg(count_page) as dayly_pages
from activity_staff
group by date_activity;


/*Сгруппируйте данные о сотрудниках по возрасту: 
1 группа –младше 20 лет 
2 группа–от 20 до 40 лет 
3 группа –старше  40 лет. 
Для каждой группы найдите суммарную зарплату */

SELECT category_age, SUM(salary)
FROM (
SELECT salary, 
case
	when age < 20
		THEN '1 группа –младше 20 лет'
	WHEN age between 20 and 40
		THEN '2 группа–от 20 до 40 лет'
	when age > 40
		THEN '3 группа –старше  40 лет'
	ELSE 'Не определено'
END AS category_age
FROM staff) AS Tablica
group by category_age;


-- HAVING. 
-- 1.Выведите id сотрудников, которые напечатали более 500 страниц за все дни 

SELECT staff_id, SUM(count_page) AS total_pages
FROM activity_staff
group by staff_id
HAVING total_pages > 500;

-- 2.Выведите дни, когда работало более 3 сотрудников. Также укажите кол-во сотрудников, которые работали в выбранные дни. 

SELECT date_activity, COUNT(staff_id) AS tot_woked
FROM activity_staff
group by date_activity
HAVING tot_woked > 3;

-- 3.Выведите среднюю заработную плату по должностям, которая составляет более 30000

SELECT post, AVG(salary) AS avg_salary
FROM staff
group by post
HAVING avg_salary > 30000;