CREATE TABLE EMPLOYEE(
    empi_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    birth_day DATE,
    gender VARCHAR(1),
    salary INT,
    super_id INT,
    branch_id INT
);
CREATE TABLE branch(
    branch_id INT PRIMARY KEY,
    branch_name VARCHAR(40),
    mgr_id INT,
    mgr_start_date DATE,
    FOREIGN KEY(mgr_id) REFERENCES EMPLOYEE(empi_id) ON DELETE SET NULL
);

ALTER TABLE EMPLOYEE ADD FOREIGN KEY (branch_id) REFERENCES branch(branch_id)ON DELETE SET NULL;
ALTER TABLE EMPLOYEE ADD FOREIGN KEY (supe_id)REFERENCES EMPLOYEE(empi_id)ON DELETE SET NULL;
CREATE TABLE CLIENT(
    client_id INT PRIMARY KEY,
    client_name VARCHAR(40),
    branch_id INT,
    FOREIGN KEY (branch_id) REFERENCES branch(branch_id) ON DELETE SET NULL
);
CREATE TABLE works_with(
    empi_id INT,
    client_id INT,
    total_sales INT,
    PRIMARY KEY(empi_id,client_id),
    FOREIGN KEY(empi_id) REFERENCES employee(empi_id) ON DELETE CASCADE,
    FOREIGN KEY(client_id) REFERENCES client(client_id) ON DELETE CASCADE
);
CREATE TABLE branch_supplier(
    branch_id INT,
    supplier_name VARCHAR(100),
    supply_type VARCHAR(100),
    PRIMARY KEY(branch_id,supplier_name),
    FOREIGN KEY(branch_id) REFERENCES branch(branch_id) 

);
INSERT INTO employee VALUES (100,'DAVID','WALLACE','1967-11-17','M',250000,NULL,NULL);
INSERT INTO branch VALUES(1,'COORPORATE',100,'2006-02-09');
UPDATE employee
SET branch_id = 1 WHERE empi_id = 100;

INSERT INTO EMPLOYEE VALUES (101,'JAN','LEVINSON','1961-05-11','F',110000,NULL,1);

INSERT INTO EMPLOYEE VALUES ('102','MICHAEL','SCOTT','1964-03-15','M',75000,NULL,NULL);
INSERT INTO BRANCH VALUES(2,'SCRANTON',102,'1992-04-06');
UPDATE EMPLOYEE
SET branch_id = 2 WHERE empi_id = 102;
INSERT INTO EMPLOYEE VALUES(103,'ANGELA', 'MARTIN','1971-06-05','F',63000,NULL,2);
INSERT INTO EMPLOYEE VALUES(104,'KELLY', 'KAPOOR','1980-02-05','F',55000,NULL,2);
INSERT INTO EMPLOYEE VALUES(105,'STANLEY','HUDSON','1958-02-19','M',69000,NULL,2);

INSERT INTO EMPLOYEE VALUES('106','JOSH','PORTER','1969-09-05','M',78000,NULL,NULL);
INSERT INTO BRANCH VALUES(3,'STAMFORD',106,'1998-02-13');
UPDATE EMPLOYEE SET branch_id = 3 where empi_id = 106;
INSERT INTO employee VALUES(107,'ANDY','BERNARD','1973-07-22','M',65000,NULL,3);
INSERT INTO employee VALUES(108,'JIM','HALPERT','1978-10-01','M',71000,NULL,3);



INSERT INTO branch_supplier VALUES(2,'HAMMER MILL','PAPER');
INSERT INTO branch_supplier VALUES(2,'UNI-BALL','WRITING UTENSILS');
INSERT INTO branch_supplier VALUES(3,'PATRIOT PAPER','PAPER');
INSERT INTO branch_supplier VALUES(2,'J.T. FORMS & LABELS','CUSTOM FORMS');
INSERT INTO branch_supplier VALUES(3,'UNI-BALL','WRITING UTENSILS');
INSERT INTO branch_supplier VALUES(3,'HAMMER MILL','PAPAER');
INSERT INTO branch_supplier VALUES(3,'STAMFORD LABELS','CUSTOM FORM');

INSERT INTO client VALUES(400,'DUNMORE HIGH SCHOOL',2);
INSERT INTO client VALUES(401,'LACKAWANA COUNTRY',2);
INSERT INTO client VALUES(402,'FEDEX',3);
INSERT INTO client VALUES(403,'JOHN DALY LAW LLC',3);
INSERT INTO client VALUES(404,'SCRANTON WHITEPAGES',2);
INSERT INTO client VALUES(405,'TIMES NEWSPAPER',3);
INSERT INTO client VALUES(406,'FEDEX',2);

INSERT INTO works_with VALUES(105,400,55000);
INSERT INTO works_with VALUES(102,401,267000);
INSERT INTO works_with VALUES(108,402,22500);
INSERT INTO works_with VALUES(107,403,5000);
INSERT INTO works_with VALUES(108,403,12000);
INSERT INTO works_with VALUES(105,404,33000);
INSERT INTO works_with VALUES(107,405,26000);
INSERT INTO works_with VALUES(102,406,15000);
INSERT INTO works_with VALUES(105,406,130000);

UPDATE EMPLOYEE SET super_id=100 WHERE empi_id = 101;
UPDATE EMPLOYEE SET super_id=100 WHERE empi_id = 102;
UPDATE EMPLOYEE SET super_id=102 WHERE empi_id = 103;
UPDATE EMPLOYEE SET super_id=102 WHERE empi_id = 104;
UPDATE EMPLOYEE SET super_id=102 WHERE empi_id = 105;
UPDATE EMPLOYEE SET super_id=100 WHERE empi_id = 106;
UPDATE EMPLOYEE SET super_id=106 WHERE empi_id = 107;
UPDATE EMPLOYEE SET super_id=106 WHERE empi_id = 108;

-- find all employees ordered by salary in decending order
SELECT * FROM EMPLOYEE
ORDER BY salary DESC;

-- find all employees ordered by Gender and then by Name
SELECT * FROM EMPLOYEE
ORDER BY gender,first_name,last_name;

--find forename and surname of all employees
SELECT first_name AS forename, last_name AS surname FROM employee;

--find number of employees that have a supervisor
SELECT COUNT(super_id) FROM employee;

--find number of female employees born after 1970
SELECT COUNT(empi_id) FROM employee WHERE gender = 'F' AND birth_day > "1970-01-01";

--find average of all employee's salaries who are MALE
SELECT AVG(salary) FROM employee WHERE gender = 'M';

--find all number of emploees who are Male and Female
SELECT COUNT(gender), gender FROM employee GROUP BY gender;

--find total sales of each salesman
SELECT SUM(total_sales), empi_id FROM works_with GROUP BY empi_id;

--find total of each spending of clients
SELECT SUM(total_sales), client_id FROM works_with GROUP BY client_id;

--find any branch suppliers who are in the label business
SELECT * FROM branch_supplier WHERE supplier_name LIKE '% Label%';

--find any employee bron in February
SELECT * FROM employee WHERE birth_day LIKE '____-02%';

--find list of employee and branch name in one column
SELECT first_name FROM employee 
UNION SELECT branch_name FROM branch;

--Find List of all money spent or earned by the company
SELECT salary, employee.empi_id FROM employee 
UNION
SELECT total_sales, works_with.empi_id FROM works_with;

--find all branches and the name of their managers
SELECT employee.empi_id, employee.first_name, branch.branch_name
FROM employee
JOIN branch
ON employee.empi_id = branch.mgr_id;

--find all clients and their corresponding branches including all columns from branch
SELECT branch.branch_id, client.client_name, branch.branch_name
FROM branch
LEFT JOIN client
ON branch.branch_id = client.branch_id;

--find all employees names and their total slaes  including all employees
SELECT employee.empi_id, employee.first_name, works_with.total_sales
FROM EMPLOYEE
LEFT JOIN works_with
ON employee.empi_id = works_with.empi_id; 

--Find names of all employees who have sold over 30000 to a single client
SELECT employee.first_name FROM employee WHERE employee.empi_id IN (SELECT works_with.empi_id
FROM works_with WHERE works_with.total_sales > 30000);

--Find all clients who are handled by the branch that Micheal Scoot manages
-- Assume you know Michael's ID
SELECT client.client_name FROM CLIENT WHERE client.branch_id =(SELECT branch.branch_id FROM branch WHERE branch.mgr_id = 102 LIMIT 1);
