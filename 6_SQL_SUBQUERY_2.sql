
use sql_intro  ;
show tables ;
CREATE TABLE employees_b (
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

insert into employees_b value 
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

#UPDATE CLUASE 

#To change the salry in the employee table whose age is greater than 31 

select * from employees1 ;
select * from employees1 where age>31 ;

select * from employees_b;

update employees1 
set salary = salary * 0.35 
where age in 
(select age from employees_b where age > 31) ;

#DELETE CLUSE 

#To delete smployees with age greater than 27 

delete from employees1 
where emp_id in (select emp_id from employees_b where age>27) ;