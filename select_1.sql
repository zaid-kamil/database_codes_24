use db_sep_24_5_30;

describe students;

# getting a single column
select name from students;

# getting multiple column
select name, std 
from students;

# get all the columns from table
select * from students;

# only first 5
select * from students limit 5;

# ordering by name
select name 
from students
order by name;

# ordering by section
select name
from students
order by section;

# ordering based on 2 columns
select name, std, section
from students
order by std desc, section desc;

# ordering by field function
select name, std, section
from students
order by 
	field(std, '6','9','10','8','7'), 
    section desc;













