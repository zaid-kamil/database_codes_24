use db_sep_24_5_30;


drop table if exists department;
-- create tbl departments id, name, dept-head

create table department (
	id integer auto_increment primary key,
    name varchar(25),
    dept_head varchar(50)
);

insert into department(name, dept_head)
values ("sales", "Munshi Singh"),
	   ("purchase", "vikas verma"),
       ("rnd", "bruce banner"),
       ("accounts", "saytam sharma"),
       ("hr","arti verma"),
       ("operations", "suman pratap"),
       ("security", "vinayak rathore"),
       ("planning", "mohd ali");
       
       
