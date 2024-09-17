use db_sep_24_5_30;

select * from products;

# Alias in column
select 
	id, name as model, 
    price as "original price", 
    qty as quantity,
    created_at as date
from 
	products;
    
# a simple calculation
select *, price * qty from products;

# naming the displayed column with Alias
select *, price * qty as "total cost" from products;

# final example
select
	id,
    name as model,
    price as "selling price",
    qty as quantity,
    created_at as "purchase date",
    price * qty as "total cost"
from 
	products;
