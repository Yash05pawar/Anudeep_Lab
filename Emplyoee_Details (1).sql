create database Employee_Management_System;

use  Employee_Management_System;




//1.Create a table called Employees with the following columns:

EmployeeID (INTEGER, Primary Key)

FirstName (VARCHAR(50))

LastName (VARCHAR(50))

Salary (DECIMAL(10,2))  //
desc Employee;

Query:mysql> Create table Employees(EmployeeID INT Primary Key Not Null,FirstName VARCHAR(50) Not Null,LastName VARCHAR(50) Not Null,Salary DECIMAL(10,2) Not Null);
Query OK, 0 rows affected (0.12 sec)

mysql> desc Employees;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| EmployeeID | int           | NO   | PRI | NULL    |       |
| FirstName  | varchar(50)   | NO   |     | NULL    |       |
| LastName   | varchar(50)   | NO   |     | NULL    |       |
| Salary     | decimal(10,2) | NO   |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
4 rows in set (0.04 sec)



//2.Insert  5 employees records.


Query:mysql> INSERT INTO EMPLOYEES( EmployeeID,FirstName, LastName, Salary)VALUES(1,'AMIT','BHOSALE',60000.00),(2,'BHAKTI','MORE',52000.00),(3,'KIRAN','PATIL',58000.00),(4,'SUMIT','YADAV',49000.00),(5,'SHARMISHTHA','RAUT',70000.00);
Query OK, 5 rows affected (0.04 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM EMPLOYEES;
+------------+-------------+----------+----------+
| EmployeeID | FirstName   | LastName | Salary   |
+------------+-------------+----------+----------+
|          1 | AMIT        | BHOSALE  | 60000.00 |
|          2 | BHAKTI      | MORE     | 52000.00 |
|          3 | KIRAN       | PATIL    | 58000.00 |
|          4 | SUMIT       | YADAV    | 49000.00 |
|          5 | SHARMISHTHA | RAUT     | 70000.00 |
+------------+-------------+----------+----------+
5 rows in set (0.00 sec)




//3.Alter the table to include a new column.:Add a new column Departments (VARCHAR(50)) to the table.

Query:mysql> ALTER TABLE EMPLOYEES ADD DEPARTMENT VARCHAR(50) NOT NULL;
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> DESC EMPLOYEES;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| EmployeeID | int           | NO   | PRI | NULL    |       |
| FirstName  | varchar(50)   | NO   |     | NULL    |       |
| LastName   | varchar(50)   | NO   |     | NULL    |       |
| Salary     | decimal(10,2) | NO   |     | NULL    |       |
| DEPARTMENT | varchar(50)   | NO   |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
5 rows in set (0.00 sec)
mysql> UPDATE Employees SET Department = 'HR' WHERE EmployeeID = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE Employees SET Department = 'IT' WHERE EmployeeID = 2;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE Employees SET Department = 'Finance' WHERE EmployeeID = 3;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE Employees SET Department = 'Marketing' WHERE EmployeeID = 4;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql>  UPDATE Employees SET Department = 'IT' WHERE EmployeeID = 5;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> SELECT * FROM EMPLOYEES;
+------------+-------------+----------+----------+------------+
| EmployeeID | FirstName   | LastName | Salary   | DEPARTMENT |
+------------+-------------+----------+----------+------------+
|          1 | AMIT        | BHOSALE  | 60000.00 | HR         |
|          2 | BHAKTI      | MORE     | 52000.00 | IT         |
|          3 | KIRAN       | PATIL    | 58000.00 | Finance    |
|          4 | SUMIT       | YADAV    | 49000.00 | Marketing  |
|          5 | SHARMISHTHA | RAUT     | 70000.00 | IT         |
+------------+-------------+----------+----------+------------+
5 rows in set (0.00 sec)




//4.Get the names and department of employees who earn more than 55000.


Query:
mysql> SELECT FirstName,LastName,Department,Salary from Employees WHERE Salary>55000;
+-------------+----------+------------+----------+
| FirstName   | LastName | Department | Salary   |
+-------------+----------+------------+----------+
| AMIT        | BHOSALE  | HR         | 60000.00 |
| KIRAN       | PATIL    | Finance    | 58000.00 |
| SHARMISHTHA | RAUT     | IT         | 70000.00 |
+-------------+----------+------------+----------+
3 rows in set (0.01 sec)
