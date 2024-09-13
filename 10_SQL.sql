#PROCEDURES 

USE classicmodels ; 

show tables ; 

select * from products ;
select * from orderdetails ;
select * from employees ;

#to get p_naem and p_code 

select productCode , productName , MSRP
 from products
 where productCode 
 in (select productCode from orderdetails where priceEach<100)  ;

#PROCEDURES 

#procedure ae simplly functions 

delimiter && 
create procedure procedure1() 
begin 
select productCode , productName , quantityInStock 
from products 
where quantityInStock >8000 ;  
end && delimiter ; 

call procedure1() ;

#procedure using arguments : 

delimiter && 
create procedure procedure2(in number1 int ) 
begin
select productCode , priceEach 
from orderdetails 
order by priceEach desc limit number1 ; 
end && delimiter ; 

call procedure2(5);

#PROCEDURE USING OUT   ************
delimiter && 
create procedure procedure3(out employeesCount int ) 
begin
select count(employeeNumber) into employeesCount from employees ; 
end && delimiter ; 

call procedure3(@count1) ;
select @count1  ;  

