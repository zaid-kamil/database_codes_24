-- last class 1) Select Query 2) Sorting "order by"

-- stats
use dp_sep_24_5_30;

select * from employees;

-- count all the records (entries)
select count(*) from employees;

-- count entries in a particular column
select count(name) from employees;

-- count based on condition
select count(*) from employees
where salary > 60000;

-- total salary
select sum(salary) from employees;

-- total salary for dept = 3
select sum(salary) from employees
where department_id = 3;

-- total salary of emp with age > 30
select sum(salary) from employees
where age > 30;

-- average age of emp
select avg(age) from employees;

-- Q what is the avg salary of people in dept = 2

-- show the min and max salary
select 
 min(salary) as "min salary", 
 max(salary) as "max salary"
from employees;

select 
	round(stddev(age), 1) as "std age"
from employees;

-- round of to nearest 5 digits
select round(sum(salary), -5) from employees;

-- ceiling and floor
select salary/10000 from employees;

select ceil(salary/10000) from employees;

select 
 floor(salary/10000), 
 ceil(salary/10000) 
from employees;
