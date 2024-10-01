use db_sep_24_5_30;

-- corelared query

-- select all employee that get salary > avg_salary
select * from employees
where salary > (
	select avg(salary) from employees
);

-- get all total salary of employees that have age greater that avg_age
select sum(salary) from employees
where age > (
	select avg(age) from employees
);