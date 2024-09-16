show databases ;
use sql_gfg;

select * from Products ; 
select * from Sales ;

#1 get revenue for eacg cetegory 
select * from Products as p inner join Sales as s on (p.product_id = s.product_id)  ;
select p.category , sum(s.total_price) as total_revenue_for_cat from Products as p inner join Sales as s on (p.product_id = s.product_id) group by p.category ; 

#2 category with highest avg unit price 
select category , avg(unit_price) as avg_unit_cat from Products group by category order by avg_unit_cat desc limit 1 ; 

