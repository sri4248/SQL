use d20r;
CREATE TABLE Employee(
EmpID INT PRIMARY KEY,
Name VARCHAR(50),
Department VARCHAR(30),
Salary DECIMAL(10,2),
Age INT,
City VARCHAR(30),
JoiningDate DATE
);


INSERT INTO Employee VALUES
(101, 'Alice', 'HR', 45000, 25, 'Hyderabad', '2022-01-10'),
(102, 'Bob', 'IT', 70000, 30, 'Chennai', '2021-06-15'),
(103, 'Charlie', 'Finance', 55000, 28, 'Bangalore', '2020-08-20'),
(104, 'David', 'IT', 80000, 35, 'Hyderabad', '2019-03-12'),
(105, 'Eva', 'HR', 48000, 27, 'Mumbai', '2023-02-18'),
(106, 'Frank', 'Sales', 60000, 31, 'Delhi', '2021-11-25'),
(107, 'Grace', 'Finance', 75000, 29, 'Chennai', '2018-09-10'),
(108, 'Henry', 'Sales', 52000, 26, 'Bangalore', '2022-07-05'),
(109, 'Ivy', 'IT', 90000, 32, 'Mumbai', '2017-05-30'),
(110, 'Jack', 'HR', 47000, 24, 'Delhi', '2023-01-12');

SELECT * FROM Employee;

SELECT * FROM Employee WHERE salary > 60000;
SELECT * FROM Employee WHERE Department='IT';
SELECT * FROM Employee WHERE age < 30;
SELECT * FROM Employee WHERE city='hyderabad'ORDER BY salary asc;
SELECT * FROM Employee ORDER BY salary desc;
SELECT * FROM Employee WHERE salary > 50000 and 80000 ORDER BY age;
SELECT * FROM Employee WHERE Department = 'HR' ORDER BY name asc;
SELECT * FROM Employee WHERE joiningDate >'2021-01-01' ORDER BY joiningDate desc;
SELECT * FROM Employee WHERE city = 'chennai' or 'Banglore' ORDER BY city,salary desc;
SELECT * FROM Employee WHERE age > 25 ORDER BY Department asc,salary desc;

# create a table on e-commerce orders table
CREATE TABLE e_commerce_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    product_name VARCHAR(100),
    quantity INT,
    price DECIMAL(10, 2),
    total_amount DECIMAL(10, 2),
    order_date DATE
);

# -- Insert sample data (20 rows) with customer names like Ravi
INSERT INTO e_commerce_orders (order_id, customer_name, product_name, quantity, price, total_amount, order_date)
VALUES
(1, 'Ravi Kumar', 'Smartphone', 1, 699.99, 699.99, '2025-10-01'),
(2, 'Amit Sharma', 'Laptop', 1, 999.99, 999.99, '2025-10-02'),
(3, 'Raj Patel', 'Headphones', 2, 49.99, 99.98, '2025-10-03'),
(4, 'Neha Gupta', 'Smartwatch', 1, 199.99, 199.99, '2025-10-04'),
(5, 'Priya Mehta', 'Tablet', 1, 329.99, 329.99, '2025-10-05'),
(6, 'Vikram Singh', 'Keyboard', 1, 89.99, 89.99, '2025-10-06'),
(7, 'Sonia Reddy', 'Mouse', 2, 19.99, 39.98, '2025-10-07'),
(8, 'Ravi Sharma', 'Monitor', 1, 249.99, 249.99, '2025-10-08'),
(9, 'Ananya Iyer', 'Phone Case', 3, 15.99, 47.97, '2025-10-09'),
(10, 'Karan Joshi', 'Smartphone', 2, 699.99, 1399.98, '2025-10-10'),
(11, 'Maya Desai', 'Gaming Console', 1, 399.99, 399.99, '2025-10-11'),
(12, 'Rohit Kapoor', 'Speakers', 2, 79.99, 159.98, '2025-10-12'),
(13, 'Simran Chawla', 'Laptop', 1, 849.99, 849.99, '2025-10-13'),
(14, 'Amitabh Reddy', 'Smartwatch', 1, 199.99, 199.99, '2025-10-14'),
(15, 'Tanya Gupta', 'Smartphone', 1, 799.99, 799.99, '2025-10-15'),
(16, 'Harish Kaur', 'Tablet', 1, 299.99, 299.99, '2025-10-16'),
(17, 'Deepak Singh', 'Keyboard', 2, 69.99, 139.98, '2025-10-17'),
(18, 'Neelam Verma', 'Headphones', 1, 89.99, 89.99, '2025-10-18'),
(19, 'Kunal Joshi', 'Gaming Console', 1, 499.99, 499.99, '2025-10-19'),
(20, 'Pooja Shah', 'Monitor', 1, 199.99, 199.99, '2025-10-20');

SELECT * FROM e_commerce_orders;

SELECT * FROM e_commerce_orders WHERE price > 500;
SELECT product_name FROM e_commerce_orders WHERE customer_name = 'Ravi kumar';
SELECT * FROM e_commerce_orders WHERE product_name ='Laptop';
SELECT * FROM e_commerce_orders ORDER BY order_date asc;
SELECT * FROM e_commerce_orders ORDER BY total_amount desc;
SELECT * FROM e_commerce_orders WHERE order_date BETWEEN '2025-10-05' and '2025-10-15';
SELECT DISTINCT product_name FROM e_commerce_orders;
SELECT DISTINCT customer_name FROM e_commerce_orders where product_name='smartphone';
SELECT * FROM e_commerce_orders LIMIT 5;
SELECT * FROM e_commerce_orders  ORDER BY order_date limit 3 offset 17;
SELECT * FROM e_commerce_orders WHERE customer_name LIKE 'R%';
SELECT * FROM e_commerce_orders WHERE price BETWEEN 100 and 500;
SELECT * FROM e_commerce_orders WHERE quantity >1;
SELECT * FROM e_commerce_orders WHERE product_name != 'smartphone';
SELECT DISTINCT customer_name FROM e_commerce_orders WHERE order_date = '2025-10-10';




