
use classicmodels ; 
show tables; 

select * from customers; 
#VIEWS 

create view view1 
as 
select customerNUmber , customerName  
from customers ; 

select * from view1 ;

#VIEWS USING JOINS 
create view view2 as 
select pl.productLine , pr.productCode, pr.productName , pl.textDescription  from products as pr inner join productlines as pl on pr.productLine=pl.productLine  ; 

#TO RANAME A VIEW 
rename table view2 to innerjoinOfprandpl ; 

select * from innerjoinOfprandpl ; 

#DISPLAY ALL VIEWS 
show full tables
where table_type = 'VIEW'  ;

#DELETE VIEW 
drop view  innerjoinOfprandpl  ; 