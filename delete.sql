use db_sep_24_5_30;
drop table if exists table001;
create table table001(
	id integer primary key auto_increment, 
	name varchar(50) not null unique,  
	age integer default 10
);

insert into table001(name, age)
values ("Alex", 5),
       ("Rita", 7),
	   ("Sam", 6),
       ("Peter", 6),
       ("Samuel", 5);

select * from table001;

-- single record delete
delete from table001 where id = 3;

-- condition based deletion
delete from table001 where age < 6;

-- clearing all records
truncate table001;
select * from table001;

