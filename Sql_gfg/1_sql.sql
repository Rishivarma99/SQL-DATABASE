create database sql_gfg ; 
use sql_gfg ; 

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    product_id INT,
    quantity_sold INT,
    sale_date DATE,
    total_price DECIMAL(10, 2)
);
INSERT INTO Sales (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
(1, 101, 5, '2024-01-01', 2500.00),
(2, 102, 3, '2024-01-02', 900.00),
(3, 103, 2, '2024-01-02', 60.00),
(4, 104, 4, '2024-01-03', 80.00),
(5, 105, 6, '2024-01-03', 90.00);

INSERT INTO Sales (sale_id, product_id, quantity_sold, sale_date, total_price) VALUES
(7, 106, 5, '2024-01-05', 200.00) ,
 (8, 107, 4, '2024-01-07', 400.00) ;

INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(108, 'pen', 'Study', 20.00);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    unit_price DECIMAL(10, 2)
);
INSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(101, 'Laptop', 'Electronics', 500.00),
(102, 'Smartphone', 'Electronics', 300.00),
(103, 'Headphones', 'Electronics', 30.00),
(104, 'Keyboard', 'Electronics', 20.00),
(105, 'Mouse', 'Electronics', 15.00);

iNSERT INTO Products (product_id, product_name, category, unit_price) VALUES
(106, 'Laptop', 'Grocery', 50.00);


select * from Products ; 
select * from Sales ;

#BIGINNER QUESTIONS 
 
 #4
SELECT  * FROM Sales where total_price>100 ;
#5 
select * from Products where category='Electronics' ; 
#6 
select  sale_id , total_price from Sales where sale_date in ("2024-01-03") ; 
#7 total revenue generated in sales table 
select sum(total_price) as Total_revenue from Sales ;
#9 avg unit price in  pr 
select round(avg(unit_price),0) from Products ;  
#12 
select product_id , unit_price from Products order by unit_price desc ; 
#13 
select round(sum(total_price),1) from Sales ; 
#15 
select sale_id , DATE_FORMAT(sale_date , "%Y-%m-%D") from Sales ; 
#16 total sales in electronics 
select * from Sales as s inner join Products as p on (s.product_id=p.product_id)  ;  
select sum(s.total_price) from Sales as s inner join Products as p on (s.product_id=p.product_id) where p.category = "Electronics"  ; 
#17  **** BTWEEN 
select product_name , unit_price from Products where unit_price between 20 AND 600; 

#qUNATITY SOLD IN ELECTRONIC CETEGORY 
SELECT sum(s.quantity_sold) from Products as  p inner join Sales as s on (p.product_id = s.product_id) where p.category = "Electronics";

#20 
select  p.product_name , p.unit_price*s.quantity_sold as price , s.total_price  from Products as  p inner join Sales as s on (p.product_id = s.product_id) ;
