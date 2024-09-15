use db_sep_24_5_30;

create table if not exists students(
	id int primary key auto_increment, 
	name varchar(25), 
	std varchar(2), 
	section varchar(1), 
	phone_number varchar(10), 
	created_at timestamp default current_timestamp
);

describe students;

INSERT INTO students (name, std, section, phone_number) VALUES
('Aarav Sharma', '10', 'A', '9876543210'),
('Isha Patel', '9', 'B', '9876543211'),
('Rohan Mehta', '8', 'C', '9876543212'),
('Ananya Gupta', '7', 'A', '9876543213'),
('Krishna Rao', '10', 'B', '9876543214'),
('Diya Singh', '6', 'C', '9876543215'),
('Vikram Reddy', '9', 'A', '9876543216'),
('Meera Desai', '8', 'B', '9876543217'),
('Aditya Nair', '7', 'C', '9876543218'),
('Sanya Kapoor', '10', 'A', '9876543219'),
('Arjun Kumar', '9', 'B', '9876543220'),
('Priya Jain', '8', 'C', '9876543221'),
('Manish Verma', '7', 'A', '9876543222'),
('Ria Shah', '6', 'B', '9876543223'),
('Siddharth Iyer', '10', 'C', '9876543224'),
('Sneha Bhatt', '9', 'A', '9876543225'),
('Rajesh Malhotra', '8', 'B', '9876543226'),
('Tanya Joshi', '7', 'C', '9876543227'),
('Neha Chaudhary', '6', 'A', '9876543228'),
('Raghav Sen', '10', 'B', '9876543229');
