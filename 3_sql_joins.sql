  /*INNER JOIN */ 

create database sql_joins ; 
show databases ; 
use sql_joins ; 

create table cricket( cricket_id int auto_increment  , name  varchar (30) , primary key (cricket_id)) ;  

create table footbal( football_id int auto_increment  , name  varchar (30) , primary key (football_id)) ;
  
insert into cricket (name)  values ('rishi') , ('raghav') , ('mohan'), ('johnson'),('hari') ;  
select * from cricket ;
 
insert into footbal (name)  values ('rishi') , ('balaji') , ('mohan'), ('prudvi'),('ram') ;
select * from footbal ;

/*INNER JOIN : TO GET PLAYES INVOLVED IN BOTH FOOTBAL AND  CRICKET TEAM */
select  c.name from cricket as c inner join footbal as f on c.name = f.name  ; 

/* SCHEMA DESIGN IS IN PHOTOS */
show databases ; 
use classicmodels ; 
show tables ; 

select * from products ; 

/*SHOW PRODUCT CODE AND PRODUCT LINE AND ITS TEXT DESCRIPTION */
select pl.productLine , pr.productCode, pr.productName , pl.textDescription  from products as pr inner join productlines as pl on pr.productLine=pl.productLine  ; 
select pl.productLine , pr.productCode, pr.productName , pl.textDescription  from products as pr inner join productlines as pl using (productLine)  ; 

select * from orders ; 
select * from orderdetails ;

select  pr.productCode , pr.productName, pr.buyPrice , od.orderNumber , od.priceEach ,od.quantityOrdered from  products as pr inner join orderdetails as od using (productCode) ;  

/*REVENUE GENERATED */
select  pr.productCode , pr.productName , sum(od.quantityOrdered * od.priceEach) as revenue from  products as pr inner join orderdetails as od using (productCode) group by productCode ; 

select od.orderNumber , sum(od.quantityOrdered * od.priceEach) as revenue from orderdetails as od inner join orders as o using (orderNumber) group by orderNumber ; 

/* IF WE ALSO WANT STATUS OF SHIPMENT WE ASLO NEED TO INCLUDE ORDER TABLE */

select *
from orderdetails as od inner join orders as o on od.orderNumber= o.orderNumber inner join products as pr on od.productCode = pr.productCode
where od.orderNumber = 10123;

select pr.productCode , o.orderNumber ,sum(od.quantityOrdered * od.priceEach) as revenueForEachProduct
from orderdetails as od inner join orders as o on od.orderNumber= o.orderNumber inner join products as pr on od.productCode = pr.productCode
 group by orderNumber , productCode ; 	

 
