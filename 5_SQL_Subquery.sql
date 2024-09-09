use classicmodels ; 
use sql_intro ; 
select * from employees1  ;

/* TO FIND DETPTAMENT OF A PERSON WHO HAS MAX SALRY 
NEED TO USE SUBQUERY 
*/

select max(salary) from employees1 ; 

select dep_id from  employees1 
where salary = (select max(salary) from employees1);

/*TO GET THE MEMBERS WHO HAVE SALARY LESS THAN AVG SALARY OF ALL EMPLOYEES */
select avg(salary) from employees1 ;

select * from employees1 
where salary>(select avg(salary) from employees1)  ; 

#UPDATE SUBQUERY , INSERT STATMENT 

create table products1 (prod_id int , item varchar(20) , sell_price float , product_type varchar(30) )  ;
insert into products1 values
(101, 'jewelery' , 1800 , 'luxury') ,
(102 , 'T-shirt' , 110 , 'non-luxury'),
(103 , 'laptop' , 1300 , 'luxury'),
(104,'Table' , 400 , 'Non-luxry');
select * from products1 ;

create table orders1 (order_id int , product_sold varchar (30) , selling_price float) ; 

#To insert in to orders where the products whose price is more than 10000 
insert into orders1 
select prod_id , item , sell_price from products1 
where prod_id in (select prod_id from products1 where sell_price>1000) ;  

select * from orders1 ;

 

 