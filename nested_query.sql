use db_sep_24_5_30;

-- fetching ids from awards
select empid from awards;

-- sample scenario with random employee ids
select name, department_id, salary
from employees
where id in (2, 15, 50);

-- -----------------------------
-- nested query implementation
-- -----------------------------

-- all employees that were awarded
select id, name, salary, department_id
from employees
where id in (select empid from awards);

-- all employees that have not been awarded
select name, department_id
from employees
where id not in (select empid from awards);

-- all employees with awards and salary >= 75K
select name, salary
from employees
where salary >= 75000
and id in (select empid from awards);

