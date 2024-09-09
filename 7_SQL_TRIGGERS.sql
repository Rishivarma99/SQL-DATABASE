CREATE database triggers ; 
use triggers ;


create table customers1 (cust_id int,  age int , name varchar(30)) ; 


#BEFORE INSERT TRIGGER 

delimiter //
create trigger age_verify 
before insert on customers1 
for each row 
if new.age<0 then set new.age = 0 ;
end if ; 
// 

insert into customers1 values 
(101 , 27 , 'James') , 
(102 , -1 , 'ammy ') ,
(103 , 32 , 'Ben') , 
(104 , -39 , 'raju') ;

select * from customers1 ; 

#AFTER INSERT TRIGGER  : 

