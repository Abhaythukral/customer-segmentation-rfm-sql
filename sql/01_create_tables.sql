--Customers Table 
CREATE TABLE customers(
customer_id	INT PRIMARY KEY,
customer_name VARCHAR(20), 
city VARCHAR(20)
);


--Orders Table 
CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id	INT NOT NULL,
order_date	DATE,
amount INT,
CONSTRAINT fk_orders 
 FOREIGN KEY	(customer_id)
 REFERENCES customers(customer_id)
);

