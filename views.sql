use db_sep_24_5_30;

-- create a view
create view customer_order_summary as
select 
	c.firstname,
    c.lastname,
    c.email,
    o.orderid,
    o.orderdate,
    o.totalamount
from customer c join orders o
on c.customerid = o.customerid;

-- query the view
select * from customer_order_summary;

-- drop the view
drop view if exists customer_order_summary;