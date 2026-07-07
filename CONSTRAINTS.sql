show databases;
create database D20r;
use D20r;
# constraints
create table students(
student_id int auto_increment primary key,
email varchar(50) unique,
name varchar(100) Not null,
age int check(age between 18 and  30),
city varchar(50) default'hyderabad'
);
desc students;
insert into students(email,name,age,city)values('abc@gmail.com','sandy',24,'palnadu'),
('xyz@gmail.com','riya',26,'tenali'),('pqr@gmail.com','rishi',22,'guntur');
insert into students(email,name,age)values
('mno@gmail.com','laxmi',21),
('stu@gmail.com','yamuna',22),
('wxy@gmail.com','harika',21);
select * from students;
# Task 2: Create an Employee Table

create table Employees(
emp_id int auto_increment primary key,
emp_name varchar(50) Not null,
email varchar(50) unique,
salary int check(salary>15000),
joining_date date  default (current_date)
);
insert into Employees(emp_name,email,salary)
values('sandhya','abc@gmail.com',18000),
('sree','xyz@gmail.com',20000),
('yamuna','pqr@gmail.com',25000);
select * from Employees;
# Task 3 product Management
create table products(
product_id int auto_increment primary key,
product_name varchar(100)Not null,
barcode bigint unique,
price int check(price >0),
stock int Default '0'
);
insert into products values(100,'laptop',243647,35000,15);
select * from products;
insert into products(product_name,barcode,price)
values('smart_watch',1324358,2500),
('mobile',978653,25000);
select * from products;

#Bonus Tasks
create table customers(
sno int auto_increment primary key,
customer_name varchar(100)unique,
contact_no bigint not null,
price int check(price>2000),
address varchar(100)default 'hyderabad'
);
insert into customers(customer_name,contact_no,price)
values('yamuna',1324354668,4500),
('harika',9786645342,3000),
('Likhitha',6453423124,2500);
select * from customers;






 




