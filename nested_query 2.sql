use db_sep_24_5_30;

select salary from employees
where role = 'manager';

-- developers that are getting more salary than managers
select name, salary
from employees
where role = 'developer' and
salary > all(select salary from employees
where role = 'manager');

-- developers where salary is greater than any manager
select name, salary
from employees
where role = 'developer' and
salary > any(select salary from employees
where role = 'manager');

-- all the manager which are younger that developers

-- display the avg age of developer that get more salary than managers

-- display the department that dont have managers


