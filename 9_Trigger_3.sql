use triggers ;
show tables; 
#BEFORE DELETE : 
select * from employees3 ; 

create table deleted_emp ( emp_id int primary key , name varchar (30)) ; 

delimiter // 
create trigger trigger5 
before delete  on employees3 
for each row 
begin 
insert into deleted_emp 
values ( old.emp_id , old.name) ;
end  ; // 

#here the deleted employee list is present in table deleted_emp
delete from  employees3 where emp_id = 1 ;

select * from deleted_emp ;

 