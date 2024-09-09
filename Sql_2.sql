show databases ; 
use sql_intro ; 

 
CREATE TABLE employees1 (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    job_name VARCHAR(50),
    manager_id INT,
    hire_date DATE,
    salary DECIMAL(10, 2),
    commission DECIMAL(10, 2),
    dep_id INT,
    city varchar(21),
    age int
);

insert into employees1 value 
(1, 'John Doe', 'Manager', NULL, '2022-01-01', 80000.00, 1000.00, 1,"hyd",52),
    (2, 'Jane Smith', 'Salesperson', 1, '2020-01-01', 50000.00, 2000.00, 1, "hyd",22),
    (3, 'Bob Johnson', 'Salesperson', 1, '2020-02-01', 55000.00, 1500.00, 1,"vzm",25),
    (4, 'Mary Lee', 'Salesperson', 1, '2020-02-15', 60000.00, 1000.00, 1 , "vsk" , 30),
    (5, 'Tom Williams', 'Manager', NULL, '2019-01-01', 90000.00, 2000.00, 2 , "kaki" , 19),
    (6, 'Emily Chen', 'Salesperson', 5, '2018-01-15', 60000.00, 1500.00, 2,"raj",25),
    (7, 'David Kim', 'Salesperson', 5, '2020-02-01', 65000.00, 1000.00, 2,"klk",20),
    (8, 'Amy Park', 'Salesperson', 5, '2020-03-01', 70000.00, 2000.00, 2,"vzm",35),
    (9, 'Michael Brown', 'Manager', NULL, '2022-01-01', 100000.00, 3000.00, 3,"hyd",40),
    (10, 'Sarah Johnson', 'Salesperson', 9, '2023-02-01', 60000.00, 1500.00, 3,"vzm",50),
    (11, 'Adam Lee', 'Salesperson', 9, '2020-03-01', 55000.00, 1000.00, 3,"hyd",28),
    (12, 'Emma Davis', 'Manager', NULL, '2017-01-01', 110000.00, 4000.00, 4,"vsk",36),
    (13, 'Oliver Smith', 'Salesperson', 12, '2020-02-01', 50000.00, 2000.00, 4,"vsk",53),
    (14, 'Sophia Brown', 'Salesperson', 12, '2020-03-01', 55000.00, 1500.00, 4,"hyd",45),
    (15, 'Ethan Johnson', 'Salesperson', 12, '2020-04-01', 60000.00, 1000.00, 4,"kaki",56),
    (16, 'Ava Lee', 'Salesperson', 12, '2020-05-01', 60000.00, 1000.00, 4,"vzm",22) ; 
    
    select * from employees1 ; 
    select distinct city from employees1 order by city asc ; 
    select avg(age) from employees1 ; 
    
    /*group by */
    select dep_id as dept , avg(salary) as average_salary from employees1 group by  dep_id ; 
    select dep_id as dept , round(avg(age),2) as average_agey from employees1 group by  dep_id ; 
    select city , count(city) from employees1 group by city  order by count(city) asc ; 
    
    select year(hire_date),emp_id from employees1 ; 
    
    /* SALES */
     
     create table sales (productId int , sellPrice float , quantity int , state varchar(21)) ; 
     
     insert into sales values 
    (101, 29.99, 5, 'California'),
(101, 29.99, 3, 'Texas'),
(101, 29.99, 2, 'Florida'),
(102, 35.00, 4, 'New York'),
(102, 35.00, 1, 'Michigan'),
(101, 29.99, 6, 'Illinois'),
(103, 7.99, 10, 'Pennsylvania'),
(102, 35.00, 2, 'Georgia'),
(102, 35.00, 3, 'Ohio'),
(110, 7.99, 5, 'Washington');
  
  select * from sales ;
  
  select productId , sum(quantity * sellPrice) as revenue from sales where productId=101 or productId=102 group by productId  ; 
  
  create table c_product( productId int , costPrice float) ; 
  insert into c_product value 
  (101,10),
  (102,100) ,
  (103 , 1000 ) ;
  ;
  
  select s.productId , sum( (s.sellPrice-c.costPrice) * quantity ) as profit 
  from sales as s inner join c_product as c 
  where s.productId = c.productId 
  group by s.productId ; 
  
  /*HAVING CLUSE : IT KEEPS CONDITION OFR GROUP BY CLAUSE  */
     SELECT * from employees1 ; 
     /* for getting count employess having salary greater than 70k and avg salray grater than 70k */
     select count(emp_id) as count1 , salary from employees1 group by salary having salary>=70000 order by salary asc ; 
     select job_name , avg(salary) as average_salary from employees1 group by job_name ; 
     select job_name , avg(salary) as average_salary from employees1 group by job_name having avg(salary)>70000;
     /*giting city name for count grater than 2 */
     select city , count(*) from employees1 where city !='vzm' group by city having count(*)>2  ; 
     
  use classicmodels ;      
     select  od.orderNumber ,  pr.productName , sum(quantityOrdered * priceEach) as revenue from orderdetails as od inner join orders as o on od.orderNumber= o.orderNumber inner join products as pr on od.productCode = pr.productCode group by orderNumber ; 

    