use sql_intro ; 
show tables ; 
select  * from employees1 ; 
#WINDOWS FUNCTION 

#PARTITIONS  -> different from group by 
#we need avg salray for each depatment assigned to each person in that depatment 
select name , salary , dep_id , avg(salary) over (partition by dep_id) 
from employees1 ;  

#ROW NUMBERS : 
select row_number() over (order by salary) , name , salary from employees1 ; 



