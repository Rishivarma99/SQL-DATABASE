use triggers  ;
show tables; 

#AFTER insert TRIGGER 
create table customers2 ( id int primary key auto_increment , name varchar(30) , birthdate date ) ; 
create table message2 ( id int auto_increment , messageId int , message varchar(50) not null  , primary key (id , messageId) ) ;

delimiter // 
CREATE TRIGGER trigger2 
after 
insert on customers2 
for each row 
begin
if ISNULL(NEW.birthdate) then 
 insert into message2 (messageId , message) 
 values (new.id , concat("hi" , new.name) ) ;
end if ; 
end ; 

insert into customers2 (name , birthdate) 
values 

("raghu" , null) ;
 
select * from message2 ; 


#BEFORE UPDATE TRIGGER  

CREATE TABLE employees3 (
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

insert into employees3 value 
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
    
    #normal update 
    update employees3 
    set commission = 2100 
    where commission = 2000 ;
    
    delimiter // 
    create trigger trigger4 
    before update on employees3 
    for each row
    begin 
    if old.age=52 and new.age = 100 then set new.age = 0 ; 
    end if ; 
    end ; //
    
    #here age of emp_id1 will set to 0 
    update employees3 
    set age = 100 where emp_id = 1 ; 
    
    select * from employees3 ;  
   
