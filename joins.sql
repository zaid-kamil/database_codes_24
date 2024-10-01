use db_sep_24_5_30;

-- cross join
select * from 
employees cross join awards;

-- show emp name and month of award
select 
	e.id,
	e.name,
    a.month
from employees e inner join awards a
on e.id = a.empid
order by id;

-- left join

select 
	e.name,
    d.name
from 
	employees e left join department d
    on e.department_id = d.id;
    
-- left join (samp but swapped the tables)
select 
	e.name,
    d.name
from 
	department d left join employees e
    on e.department_id = d.id;
    
-- right join
select * from 
department right join employees
on department.id = employees.department_id;


