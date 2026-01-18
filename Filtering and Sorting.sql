create database assignment2_db;
use assignment2_db;

CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    Department VARCHAR(20),
    City VARCHAR(20),
    Salary INT,
    HireDate DATE
);


INSERT INTO Employees VALUES
(101, 'Rahul Mehta', 'Sales', 'Delhi', 55000, '2020-04-12'),
(102, 'Priya Sharma', 'HR', 'Mumbai', 62000, '2019-09-25'),
(103, 'Aman Singh', 'IT', 'Bengaluru', 72000, '2021-03-10'),
(104, 'Neha Patel', 'Sales', 'Delhi', 48000, '2022-01-14'),
(105, 'Karan Joshi', 'Marketing', 'Pune', 45000, '2018-07-22'),
(106, 'Divya Nair', 'IT', 'Chennai', 81000, '2019-12-11'),
(107, 'Raj Kumar', 'HR', 'Delhi', 60000, '2020-05-28'),
(108, 'Simran Kaur', 'Finance', 'Mumbai', 58000, '2021-08-03'),
(109, 'Arjun Reddy', 'IT', 'Hyderabad', 70000, '2022-02-18'),
(110, 'Anjali Das', 'Sales', 'Kolkata', 51000, '2023-01-15');


/*Question 1 : Show employees working in either the ‘IT’ or ‘HR’ departments*/
SELECT *
FROM Employees
WHERE Department IN ('IT', 'HR');



/* Q2: Employees in Sales, IT, or Finance*/
SELECT *
FROM Employees
WHERE Department IN ('Sales', 'IT', 'Finance');

/*Q3: Salary between 50000 and 70000*/
SELECT *
FROM Employees
WHERE Salary BETWEEN 50000 AND 70000;

/* Q4: Names start with 'A'*/
SELECT *
FROM Employees
WHERE EmpName LIKE 'A%';

/*Q5: Names contain 'an'*/
SELECT *
FROM Employees
WHERE EmpName LIKE '%an%';

/*Question 6 : Show employees who are from ‘Delhi’ or ‘Mumbai’ and earn more than ₹55,000.*/

select *
from employees
where city in ('delhi', 'mumbai')
and SALARY > 60000;

/*Question 7 : Display all employees except those from the ‘HR’ department*/

select *
from employees
where DEPARTMENT <> 'HR';

/*Question 8 : Get all employees hired between 2019 and 2022, ordered by HireDate (oldest first).*/

select *
from employees
where HIREDATE between '2019-01-01'and '2022-01-31'
order by hiredate asc;
