use db_sep_24_5_30;

alter table employees
add role varchar(25) default "developer";

select * from employees;

update employees
set role = 'manager'
where id = 1;

update employees
set role = 'manager'
where id = 16;

update employees
set role = 'manager'
where id = 20;

update employees
set role = 'manager'
where id = 30;

update employees
set role = 'manager'
where id = 40;