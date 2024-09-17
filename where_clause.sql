-- where clause
use dp_sep_24_5_30;

-- get all students
select count(*) from students;

-- get all students from 10 B
select * from students 
where std = 10 and section = 'B';

-- get all students from 10th class or section B
select * from students 
where std = 10 or section = 'B'
order by std;

-- get all students except from class 10
select * from students
where not std = 10
order by field(std, '9','8','7','6');

-- get all students, with names starting with 'a'
select * from students
where name like 'a%';

-- count all students with names ending with 'a'
select count(*) from students
where name like '%a';

select * from employees;

-- select employee with name starting with 'B'
select name from employees
where name like 'b%';

-- select all products that have 'a' as second char
select name from products
where name like '_a%';

-- select all products with 3 chars only
select name from products
where name like '___';

-- get all the employees with 5 chars for first name
select * from employees
where name like '_____ %';

-- select all emp with salary in range of 50K - 60K
select * from employees
where salary between 50000 and 60000
order by salary desc;

-- select emp from dept 1 and 4
select * from employees
where department_id in (1,4)
order by department_id;

-- select students from class 6, 9, 10

-- count no of students per class
select count(id), std from students
group by std;

-- avg salary per dept
select round(avg(salary),-3), department_id
from employees
group by department_id;

-- count no of emp per dept

-- total salary per dept





