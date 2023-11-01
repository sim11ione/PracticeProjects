CREATE TABLE Sales(
    user_id INT,
    created_at DATE,
    product_id INT
);

INSERT INTO Sales(user_id,created_at,product_id) VALUES (1,'2018-05-09',3),
(3,'2016-11-17',1),
(2,'2020-03-20',2),
(1,'2019-06-24',2),
(1,'2016-12-22',3),
(3,'2017-02-09',2),
(1,'2018-09-05',1),
(1,'2022-09-20',1),
(2,'2018-07-16',2),
(1,'2019-04-11',3),
(1,'2022-03-17',3),
(3,'2021-05-12',3),
(3,'2020-09-18',1),
(3,'2021-07-23',2),
(2,'2019-05-22',3),
(2,'2021-04-05',1);

CREATE TABLE Gold_user(
    user_id INT,
    Gold_sign_up_date DATE
);

INSERT INTO Gold_user(user_id,Gold_sign_up_date) VALUES (2,'2017-09-20'),
(4,'2017-06-11');

CREATE TABLE product(
    product_id INT,
    product_name VARCHAR(50),
    price INT
);

INSERT INTO product(product_id,product_name,price) VALUES (1,'p1',780),
(2,'p2',870),
(3,'p3',550);

CREATE TABLE users(
    user_id INT,
    sign_up DATE
);

INSERT INTO users(user_id,sign_up) VALUES (1,'2014-09-02'),
(2,'2015-01-15'),
(3,'2014-04-11');

SELECT * FROM users; 

/* What is tht total amount each customer spent on Zomato?*/

SELECT a.user_id, sum(b.price) FROM Sales a INNER JOIN product b ON a.product_id=b.product_id
GROUP BY a.user_id;

/* How many days has each customer visited Zomato?*/

SELECT user_id, COUNT(DISTINCT created_at) AS distinct_days FROM Sales GROUP BY user_id;

/* What is the first product purchased by each customer?*/

SELECT * FROM
    (SELECT *, rank() OVER (PARTITION BY user_id ORDER BY created_at)rnk FROM SALES) a WHERE rnk = 1;

/* What is the most purchased item on the menu and how many times was it purchased by all customers?*/
SELECT product_id, COUNT(product_id) AS CNT FROM Sales GROUP BY product_id ORDER BY COUNT(product_id) DESC;

SELECT product_id FROM Sales GROUP BY product_id ORDER BY COUNT(product_id) DESC LIMIT 1;

SELECT user_id, COUNT(product_id) AS cnt FROM sales WHERE product_id = 
(SELECT product_id FROM Sales GROUP BY product_id ORDER BY COUNT(product_id) DESC LIMIT 1) GROUP BY user_id;

/* Which Item was the most popular for customers?*/


SELECT *, rank() OVER (PARTITION BY user_id ORDER BY cnt DESC) rnk FROM
(SELECT user_id, product_id, COUNT(product_id) AS cnt FROM Sales GROUP BY user_id, product_id) AS sub;

SELECT * FROM 
(SELECT *, rank() OVER (PARTITION BY user_id ORDER BY cnt DESC) rnk FROM
(SELECT user_id, product_id, COUNT(product_id) AS cnt FROM Sales GROUP BY user_id, product_id) AS sub) AS New
WHERE rnk = 1;

/* Which Item was purchased first by the customer */

SELECT a.user_id, a.created_at, a.product_id, b.Gold_sign_up_date FROM Sales AS a INNER JOIN Gold_user AS b on a.user_id=b.user_id;

SELECT * FROM (
    SELECT c.*, RANK() OVER(PARTITION BY user_id ORDER BY created_at) rnk FROM 
    (SELECT a.user_id, a.created_at, a.product_id, b.Gold_sign_up_date FROM Sales AS a INNER JOIN Gold_user AS b on a.user_id=b.user_id AND created_at>=Gold_sign_up_date) AS c ) AS d WHERE rnk = 1; 

/* Which item was purchased just before the customer become a memeber*/
SELECT * FROM (
    SELECT c.*, RANK() OVER(PARTITION BY user_id ORDER BY created_at DESC) rnk FROM 
    (SELECT a.user_id, a.created_at, a.product_id, b.Gold_sign_up_date FROM Sales AS a INNER JOIN Gold_user AS b on a.user_id=b.user_id AND created_at<=Gold_sign_up_date) AS c ) AS d WHERE rnk = 1; 

/* What is the total orders and amount spent for each member before they become a member?*/

SELECT user_id, COUNT(created_at) AS order_purchased, SUM(price) AS total_spent FROM
(SELECT c.*, d.price FROM
(SELECT a.user_id, a.created_at, a.product_id, b.Gold_sign_up_date FROM Sales AS a INNER JOIN Gold_user AS b 
ON a.user_id=b.user_id AND created_at<=Gold_sign_up_date) AS c INNER JOIN product AS d ON c.product_id = d.product_id) AS e
GROUP BY user_id;

/* IF buying each product generates points for eg $5 = 2 points and each product has different purchasing points,
for example for p1 $5 = 1 point, p2 $10 = 5 points and p3 $5 = 1 point, Calculate the points collected by each customer*/

SELECT user_id, SUM(total_points) AS Total_points_Earned FROM
(SELECT e.*, amt/points AS total_points FROM
(SELECT d.*, CASE WHEN product_id = 1 THEN 5 WHEN product_id = 2 THEN 2 WHEN product_id = 3 THEN 5 ELSE 0 END AS points FROM
(SELECT c.user_id,c.product_id,SUM(price) AS amt FROM
(SELECT a.*, b.price FROM Sales AS A INNER JOIN product AS b ON a.product_id=b.product_id) AS c
GROUP BY user_id,product_id) AS d) AS e) AS f GROUP BY user_id;

/*Convert the points as Money*/
SELECT user_id, SUM(total_points)*2.5 AS Total_money_Earned FROM
(SELECT e.*, amt/points AS total_points FROM
(SELECT d.*, CASE WHEN product_id = 1 THEN 5 WHEN product_id = 2 THEN 2 WHEN product_id = 3 THEN 5 ELSE 0 END AS points FROM
(SELECT c.user_id,c.product_id,SUM(price) AS amt FROM
(SELECT a.*, b.price FROM Sales AS A INNER JOIN product AS b ON a.product_id=b.product_id) AS c
GROUP BY user_id,product_id) AS d) AS e) AS f GROUP BY user_id;


/* Calculate the points for each of the products*/
SELECT *, RANK() OVER(ORDER BY total_pointsearned DESC) AS Rnk FROM
(SELECT product_id, SUM(total_points) AS total_pointsearned FROM
(SELECT e.*, amt/points AS total_points FROM
(SELECT d.*, CASE WHEN product_id = 1 THEN 5 WHEN product_id = 2 THEN 2 WHEN product_id = 3 THEN 5 ELSE 0 END AS points FROM
(SELECT c.user_id,c.product_id,SUM(price) AS amt FROM
(SELECT a.*, b.price FROM Sales AS A INNER JOIN product AS b ON a.product_id=b.product_id) AS c
GROUP BY user_id,product_id) AS d) AS e) AS f GROUP BY product_id) AS new;

/* Q) In the first one year after a customer joins the gold porgram, (including their join date), irrespective of ehat the customer has purchased, they earn 5 points for every $10 spent.
Who earned the most and what was their point earning in the first year? */

SELECT c.*, d.price*0.5 AS Total_pointsEarned FROM
(SELECT a.user_id, a.created_at, a.product_id, b.Gold_sign_up_date FROM Sales AS a INNER JOIN 
Gold_user AS b ON a.user_id=b.user_id AND a.created_at>=b.Gold_sign_up_date and a.created_at<= DATE_ADD(b.Gold_sign_up_date, INTERVAL 1 YEAR)) AS c
INNER JOIN product AS d ON c.product_id=d.product_id;