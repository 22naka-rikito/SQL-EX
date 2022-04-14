--1
create table sales_old(
    sales_id INT PRIMARY KEY
    , order_date DATE
    , customer_id INT NOT NULL REFERENCES customer(customer_id)
    , amount DECIMAL
);

--2
INSERT INTO sales_old
VALUES (6, '2018/09/02', 2, 20000)
,(7, '2018/09/02', 1, 5000)
,(8, '2018/09/02', 3, 6000)
,(9, '2018/09/05', 1, 3000);

--3
INSERT INTO sales
SELECT * FROM sales_old;

--4
DROP TABLE sales_old;

--5
SELECT sales_id, order_date
,CASE
    WHEN order_date < '2018/10/01' THEN '〇'
else NULL
END is_old
FROM sales
ORDER BY order_date ASC;

--6
SELECT customer_id || ':' || customer_name AS customer_id_name
FROM customer;

--7
SELECT *
FROM sales
WHERE customer_id=1
ORDER BY order_date DESC LIMIT 2;

--8
SELECT order_date, sum(amount)
FROM sales
WHERE order_date = (
    SELECT min(order_date)
    FROM sales)
GROUP BY order_date;

--9
SELECT c.customer_id, c.customer_name, TRUNC(avg(s.amount)) AS avg_amount
FROM sales s
JOIN customer c
ON c.customer_id = s.customer_id
GROUP BY c.customer_id
ORDER BY c.customer_id;

--10
SELECT *
FROM sales
WHERE sales_id = (
    SELECT sales_id
    FROM sales
    WHERE order_date BETWEEN '2018/09/01' AND '2018/09/30'
    ORDER BY amount DESC LIMIT 1);

