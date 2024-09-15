-- select database
use db_sep_24_5_30;

-- drop the current products table (optional)
drop table if exists products;

-- create a new products tables
create table if not exists products(
	id int auto_increment primary key,
    name varchar(50),
    price float,
    qty int,
    created_at timestamp default current_timestamp
);

describe products;

-- create a table students with columns given below 
-- => name, std, section, phone_number

create table if not exists students(
	id int primary key auto_increment, 
	name varchar(25), 
	std varchar(2), 
	section varchar(1), 
	phone_number varchar(10), 
	created_at timestamp default current_timestamp
);

describe students;
