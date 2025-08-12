Lab 2 Question:
Database Schema: Consider a simple database with one tables: BankAccount

mysql> CREATE DATABASE BANKACCOUNT;
Query OK, 1 row affected (0.10 sec)

mysql> USE BANKACCOUNT;
Database changed



Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance 
create table bankaccount(account_id INT(10) primary key not null, account_holder_name varchar(20) not null, account_balance int(10) not null);
Query OK, 0 rows affected, 2 warnings (0.16 sec)

mysql> desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | int         | NO   | PRI | NULL    |       |
| account_holder_name | varchar(20) | NO   |     | NULL    |       |
| account_balance     | int         | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+



 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table.

mysql> INSERT INTO BankAccount (account_id, account_holder_name, account_balance)VALUES (101, 'Rahul Patil', 45000),(102, 'Priya Mohite', 28000),(103, 'Kishor Rane', 28000),(104,'Tushar Mane',50000),(105,'Swara Godse',60000);
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Patil         |           45000 |
|        102 | Priya Mohite        |           28000 |
|        103 | Kishor Rane         |           28000 |
|        104 | Tushar Mane         |           50000 |
|        105 | Swara Godse         |           60000 |
+------------+---------------------+-----------------+



 Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table.

mysql> SELECT account_holder_name, account_balance FROM BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Patil         |           45000 |
| Priya Mohite        |           28000 |
| Kishor Rane         |           28000 |
| Tushar Mane         |           50000 |
| Swara Godse         |           60000 |
+---------------------+-----------------+


 Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000. 

mysql> SELECT account_holder_name, account_balance FROM BankAccount WHERE account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rahul Patil         |           45000 |
| Tushar Mane         |           50000 |
| Swara Godse         |           60000 |
+---------------------+-----------------+


 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101.
mysql> UPDATE BankAccount SET account_balance = 50000 WHERE account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from bankaccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
|        101 | Rahul Patil         |           50000 |
|        102 | Priya Mohite        |           28000 |
|        103 | Kishor Rane         |           28000 |
|        104 | Tushar Mane         |           50000 |
|        105 | Swara Godse         |           60000 |
+------------+---------------------+-----------------+

