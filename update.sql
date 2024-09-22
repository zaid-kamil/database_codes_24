use dp_sep_24_5_30;

-- single column update
update employees
set department_id = 3
where id = 1;

select * from employees where id = 1;

-- multi column update
update employees
set age = 30, salary = 75000
where id = 1;

-- update 9B students to 9A
update students
set section = 'A'
where std = 9 and section = 'B';

select * from students;

update students
set std = 9
where std = 8;
