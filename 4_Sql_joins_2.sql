/* LEFT OUTER JOIN */ 
show databases ;
 USE classicmodels ;
select * from customers ; 
select * from orders ; 

select o.orderNumber , c.customerName , o.status  from orders as o left join customers as c using (customerNumber) ;
select o.orderNumber , c.customerName , o.status  from  customers as c left join orders as o using (customerNumber) ;  

/*CUSTOMERS WITH NO ORDERS */
select o.orderNumber , c.customerName  from  customers as c left join orders as o using (customerNumber) where o.orderNumber is  NULL  ;  


/*right join */

select * from customers ; 
select * from employees ; 

select employeeNumber , count(customerNumber)  from  customers as c right join employees as e on c.salesRepEmployeeNumber =  e.employeeNumber 
where c.customerNumber is not null group by employeeNumber ; 

select c.customerName ,c.phone , e.employeenumber , e.email from  customers as c right join employees as e on c.salesRepEmployeeNumber =  e.employeeNumber  ; 


/*SELF JOIN */
select * from employees  ; 

select concat(e1.firstName , ' ' , e1.lastName) as manager , concat(e2.firstName , ' ' , e2.lastName) as employee
from employees as e1 inner join employees as e2 on e1.employeeNumber = e2.reportsTo 
order by manager ; 

/*FULL JOIN */
select * from customers ; 
select * from orders ; 
select  c.customerName , o.orderNumber from customers as c left join orders as o on c.customerNumber = o.customerNumber 
union 
select  c.customerName , o.orderNumber from customers as c right join orders as o on c.customerNumber = o.customerNumber ;

