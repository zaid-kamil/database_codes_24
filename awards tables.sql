use db_sep_24_5_30;

drop table if exists awards;

create table awards (
 id integer primary key auto_increment,
 empid integer,
 month varchar(10),
 foreign key (empid) references employees(id)
);

# adding some awards for jun jul aug
insert into awards(empid, month)
values (2, 'jun 24'),
	   (15, "jul 24"),
       (42, "aug 24");
       


insert into awards(empid, month)
values (6, "jan 24"),
       (18, "feb 24"),
       (2, "mar 24"),
       (34, "apr 24"),
       (23, "may 24"),
       (2, "sep 24"),
       (23, "oct 23"),
       (6, "nov 23"),
       (2, "dec 23");
select * from awards;