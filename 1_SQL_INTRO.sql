show databases;
/* use mysql when we write like this the table is stored here */
use sql_intro;
show tables ; 
describe db;--   
create database sql_intro ;
create table emp_details( Name varchar(25) , Age int, Gender char(25) , doj date , city varchar(15) , salary float) ;
describe emp_details ;
insert into emp_details values ("Rishi",21,"M","2024-07-09","Vizag",800),
("Raghav",19,"M","2024-06-10","vizianagaram",1000),("Mohan",15,"F","2024-05-10","Vizag",400);

select * from emp_details ; 
select Name,Age,Salary from emp_details ; 

/* to get disticnt city names  */
select distinct city from emp_details ;  

/* use simple aggregate function in sql */
select count(*) as count_name from emp_details ; 
select avg(Age) from emp_details ;
select sum(Salary) as totol_salary from emp_details  ; 

/* USING WHERE CLAUSE  */
select * from emp_details where Gender='F' ; 

/* USING LOGICAL OPERATOR */
Select * from emp_details where 
city='Vizag' or Age = 21 ;
Select * from emp_details where 
city='Vizag' and Age = 21 ;

/*IN ADN BETWEEN OPEAROATOR*/
Select * from emp_details where 
city in ('Vizag','vzm') ;
#BETWEEN CLAUSE 
Select * from emp_details where 
doj between '2024-06-01' and '2024-08-01' ; 

/*GROUP BY */
select Gender , sum(salary)  as total_salary from emp_details group by Gender ; 

/* ORDER BY :  TO GROUP IN DESCENDING OR ASSENDING  */
SELECT * from emp_details order by salary desc ;
 SELECT * from emp_details order by salary asc ; 
    /* using order we can also arrange in alphaetical order and keep limit */
 select Name from emp_details order by Name asc limit 2 ;    
 
 /* IMPORTANT FUNCTIONS METHODS  */

SELECT (20-10) AS SUB ;
SELECT LENGTH('INDIA') AS Length_1 ; 
select repeat('@' , 10 );
select upper('india') ; 
select lower('INDIA');
select concat('India','today');
select reverse('India');
select replace('orange is a vegetable','vegetable' , 'fruit');
select rtrim('   orange    ');
select ltrim('   orange    ');
select position("fruit" in "orange fruit");
select left("Rishi",1) ; 
select right ("ishi",1);
select ascii('a');
select Name as hi , concat(Age,' ', Gender) as combine from emp_details ; 
select round(23.3333,2);
select RIGHT("india", 3);

/*DATE FUNCTION  */
select now() ;
select curdate() ; 
select current_time() ;
 
select day(curdate());
select month(curdate()) ; 
select year(curdate());
select time(current_time());
select minute(current_time()) ;


/*CASE AND THEN */ 
select 
case when (A+B) > C 
 then
   case 
     when (A=B and B=C) then "Equilateral"
     when (A=B or B=C or C=A) then "Isosceles"
     when (A<>B or B<>C OR C<>A) then "Scalene" 
    end
  else "Not A Triangle"
  end from triangles;


	
SELECT Name from emp_details where (age%2)!=0 ; 

/*IMPORTNAT POINTS */
/*
1. ABOUT ORDER BY FUNCTIONALITY FOR MULTIPLE EXPRESIION 
  ->Multiple Expressions: If you provide multiple expressions, the results are sorted based on the first expression, and if there are ties,
     the second expression is used to break the tie, and so on. For example, ORDER BY Name ASC, Age DESC would sort the results by Name in
     ascending order, and if there are multiple students with the same Name, they would be further sorted by Age in descending order.

*/
 
 




