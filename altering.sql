use db_sep_24_5_30;

insert into table001(name, age)
values ("Alex", 5),
       ("Rita", 7),
	   ("Sam", 6),
       ("Peter", 6),
       ("Samuel", 5);

select * from table001;

-- adding a column with default value
alter table table001
add gender varchar(1) default 'F';
select * from table001;

-- adding a column 
alter table table001
add city varchar(25);

select * from table001;

-- dropping a column
alter table table001
drop gender;

-- renaming a column
alter table table001
rename column name to firstname; 

-- add a column after another
alter table table001
add lastname varchar(25) after firstname;

-- deleting multiple columns
alter table table001
drop lastname, 
drop city;
