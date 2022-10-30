 
CREATE DATABASE org;


 USE org
 
 CREATE TABLE worker (
     WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMEN
     first_name CHAR(25),
     last_name CHAR(25),
     SALARY INT(15),
     joining_date DATETIME,
     department VARCHAR(25)
     );
 
 INSERT INTO worker
     (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
     (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
     (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'admin'),
     (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
     (004, 'Amitabh', 'singh', 500000, '14-02-20 09.00.00', 'Admin'),
     (005, 'Vivek', 'Bhati', 50000, '14-06-11 09.00.00', 'admin'),
     (006, 'Vipul', 'Diwan', 20000, '14-06-11 09.00.00', 'Account'),
     (007, 'Satish', 'Kumar', 75000, '14-02-20 09.00.00', 'Account'),
     (008, 'Getika', 'Chauhan', 90000, '14-06-11 09.00.00', 'Admin');


SELECT * FROM worker;

CREATE TABLE Bonus (
    Worker_ref_id INT,
    bonus_amount INT(10),
    bonus_date DATETIME,
    FOREIGN KEY (Worker_ref_id)
    REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);


INSERT INTO Bonus(Worker_ref_id, bonus_amount, bonus_date) VALUES
(001, 5000, '16-02-20'),
(002, 3000, '16-06-11'),
(003, 4000, '16-02-20'),
(001, 4500, '16-02-20'),
(002, 3500, '16-06-11');


CREATE TABLE Title (
    Worker_ref_id INT,
    worker_title CHAR(25),
    AFFECTED_FORM DATETIME,
    FOREIGN KEY (Worker_ref_id)
    REFERENCES Worker(WORKER_ID)
    ON DELETE CASCADE
);

 INSERT INTO Title
    (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FORM) VALUES
    (001, 'Manager', '2016-02-20 00:00:00'),
    (002, 'Executive', '2016-06-11 00:00:00'),
    (008, 'Executive', '2016-06-11 00:00:00'),
    (005, 'Manager', '2016-06-11 00:00:00'),
    (004, 'Asst.Manger','2016-06-11 00:00:00' ),
    (007, 'Executive', '2016-06-11 00:00:00'),
    (006, 'Lead', '2016-06-11 00:00:00'),
    (003, 'Lead', '2016-06-11 00:00:00');




Copyright (c) 2000, 2022, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> SHOW DATABASES
    -> SHOW DATABASES^C
mysql> SHOW DATABASES;
+----------------------+
| Database             |
+----------------------+
| book_shop            |
| cat_app              |
| customers_and_orders |
| ig_clone             |
| information_schema   |
| join_us              |
| mysql                |
| new_testing_db       |
| people               |
| performance_schema   |
| shirts_db            |
| sys                  |
| tv_review_app        |
+----------------------+
13 rows in set (0.03 sec)

mysql> CREATE DATABASE temp;
Query OK, 1 row affected (0.04 sec)

mysql> CREATE TABLE student (
    -> id INT PRIMARY KEY,
    -> name VARCHAR(255)
    -> );
ERROR 1046 (3D000): No database selected
mysql> USE temp
Database changed
mysql>  CREATE TABLE student (
    ->  id INT PRIMARY KEY,
    ->  name VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.10 sec)

mysql> SHOW tables
    -> ^C
mysql> SHOW tables;\
+----------------+
| Tables_in_temp |
+----------------+
| student        |
+----------------+
1 row in set (0.05 sec)

mysql> SELECT * FROM student;
Empty set (0.03 sec)

mysql> VIEW student
    -> ^C
mysql> VIEW student;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'VIEW student' at line 1
mysql>
mysql>
mysql> INSERT INTO student VALUES(1, 'Ankit');
Query OK, 1 row affected (0.04 sec)

mysql> SELECT * FROM student;
+----+-------+
| id | name  |
+----+-------+
|  1 | Ankit |
+----+-------+
1 row in set (0.00 sec)

mysql> INSERT INTO student VALUES(2, 'Surya');
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM student;
+----+-------+
| id | name  |
+----+-------+
|  1 | Ankit |
|  2 | Surya |
+----+-------+
2 rows in set (0.00 sec)

mysql> CREATE TABLE tablename(
    -> ^C
mysql> CREATE TABLE tablename(
    -> col INT,
    -> col2 INT UNSIGNED
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO tablename(
    -> ^C
mysql> INSERT INTO tablename VALUES(2, -2);
ERROR 1264 (22003): Out of range value for column 'col2' at row 1
mysql> INSERT INTO tablename VALUES(-2, 22);
Query OK, 1 row affected (0.02 sec)

mysql> SELECT * FROM tablename;
+------+------+
| col  | col2 |
+------+------+
|   -2 |   22 |
+------+------+
1 row in set (0.00 sec)

mysql> CREATE DATABASE deleteDatabase;
Query OK, 1 row affected (0.03 sec)

mysql> SHOW DATABASE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DATABASE' at line 1
mysql> SHOW DATABASES;
+----------------------+
| Database             |
+----------------------+
| book_shop            |
| cat_app              |
| customers_and_orders |
| deletedatabase       |
| ig_clone             |
| information_schema   |
| join_us              |
| mysql                |
| new_testing_db       |
| people               |
| performance_schema   |
| shirts_db            |
| sys                  |
| temp                 |
| tv_review_app        |
+----------------------+
15 rows in set (0.02 sec)

mysql> DROP DATABASE deletedatabase;
Query OK, 0 rows affected (0.05 sec)

mysql> SHOW DATABASES;
+----------------------+
| Database             |
+----------------------+
| book_shop            |
| cat_app              |
| customers_and_orders |
| ig_clone             |
| information_schema   |
| join_us              |
| mysql                |
| new_testing_db       |
| people               |
| performance_schema   |
| shirts_db            |
| sys                  |
| temp                 |
| tv_review_app        |
+----------------------+
14 rows in set (0.00 sec)

mysql> CREATE DATABASE org;
Query OK, 1 row affected (0.02 sec)

mysql> USE org
Database changed
mysql> CREATE TABLE worker (
    -> WORKER_ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    -> first_name CHAR(25),
    -> last_name CHAR(25),
    -> SALARY INT(15),
    -> joining_date DATETIME,
    -> department VARCHAR(25)
    -> );
Query OK, 0 rows affected, 1 warning (0.06 sec)

mysql> INSERT INTO worker
    -> (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    -> (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
    -> (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'admin'),
    -> (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
    -> (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'Admin'),
    -> ^C
mysql>
mysql>
mysql>  INSERT INTO worker
    ->      (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT) VALUES
    ->      (001, 'Monika', 'Arora', 100000, '14-02-20 09.00.00', 'HR'),
    ->      (002, 'Niharika', 'Verma', 80000, '14-06-11 09.00.00', 'admin'),
    ->      (003, 'Vishal', 'Singhal', 300000, '14-02-20 09.00.00', 'HR'),
    ->      (004, 'Amitabh', 'singh', 500000, '14-02-20 09.00.00', 'Admin'),
    ->      (005, 'Vivek', 'Bhati', 50000, '14-06-11 09.00.00', 'admin'),
    ->      (006, 'Vipul', 'Diwan', 20000, '14-06-11 09.00.00', 'Account'),
    ->      (007, 'Satish', 'Kumar', 75000, '14-02-20 09.00.00', 'Account'),
    ->      (008, 'Getika', 'Chauhan', 90000, '14-06-11 09.00.00', 'Admin');
Query OK, 8 rows affected, 8 warnings (0.15 sec)
Records: 8  Duplicates: 0  Warnings: 8

mysql> SELECT * FROM worker;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     |  50000 | 2014-06-11 09:00:00 | admin      |
|         6 | Vipul      | Diwan     |  20000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-02-20 09:00:00 | Account    |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.03 sec)

mysql> CREATE TABLE Bonus
    -> ^C
mysql> CREATE TABLE Bonus(Worker_ref_id, bonus_amount, bonus_date) VALUES
    -> (001, 5000, '16-02-20'),
    -> (002, 3000, '16-06-11'),
    -> (003, 4000, '16-02-20'),
    -> (001, 4500, '16-02-20'),
    -> (002, 3500, '16-06-11');
-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', bonus_amount, bonus_date) VALUES
-- (001, 5000, '16-02-20'),
-- (002, 3000, '16-06-1' at line 1
 CREATE TABLE Bonus(Worker_ref_id, bonus_amount, bonus_date) VALUES
     (001, 5000, '16-02-20'),
     (002, 3000, '16-06-11'),
     (003, 4000, '16-02-20'),
     (001, 4500, '16-02-20'),
     (002, 3500, '16-06-11');
-- ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ', bonus_amount, bonus_date) VALUES
-- (001, 5000, '16-02-20'),
-- (002, 3000, '16-06-1' at line 1
mysql> INSERT INTO Bonus(Worker_ref_id, bonus_amount, bonus_date) VALUES
    -> (001, 5000, '16-02-20'),
    -> (002, 3000, '16-06-11'),
    -> (003, 4000, '16-02-20'),
    -> (001, 4500, '16-02-20'),
    -> (002, 3500, '16-06-11');
-- ERROR 1146 (42S02): Table 'org.bonus' doesn't exist
mysql>
mysql>
mysql> CREATE TABLE Bonus (
    ->     Worker_ref_id INT,
    ->     bonus_amount INT(10),
    ->     bonus_date DATETIME,
    ->     FOREIGN KEY (Worker_ref_id)
    ->     REFERENCES Worker(WORKER_ID)
    ->     ON DELETE CASCADE
    -> );
Query OK, 0 rows affected, 1 warning (0.12 sec)

mysql>
mysql> INSERT INTO Bonus(Worker_ref_id, bonus_amount, bonus_date) VALUES
    -> (001, 5000, '16-02-20'),
    -> (002, 3000, '16-06-11'),
    -> (003, 4000, '16-02-20'),
    -> (001, 4500, '16-02-20'),
    -> (002, 3500, '16-06-11');
Query OK, 5 rows affected (0.03 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> CREATE TABLE Title (
    -> ^C
mysql>
mysql>
mysql>
mysql> CREATE TABLE Title (
    ->     Worker_ref_id INT,
    ->     worker_title CHAR(25),
    ->     AFFECTED_FORM DATETIME,
    ->     FOREIGN KEY (Worker_ref_id)
    ->     REFERENCES Worker(WORKER_ID)
    ->     ON DELETE CASCADE
    -> );
Query OK, 0 rows affected (0.04 sec)

mysql> INSERT INTO Title
    -> (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VA^C
mysql>
mysql>
mysql>
mysql>  INSERT INTO Title
    ->     (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FROM) VALUES
    ->     (001, 'Manager', '2016-02-20 00:00:00'),
    ->     (002, 'Executive', '2016-06-11 00:00:00'),
    ->     (008, 'Executive', '2016-06-11 00:00:00'),
    ->     (005, 'Manager', '2016-06-11 00:00:00'),
    ->     (004, 'Asst.Manger','2016-06-11 00:00:00' ),
    ->     (007, 'Executive', '2016-06-11 00:00:00'),
    ->     (006, 'Lead', '2016-06-11 00:00:00'),
    ->     (003, 'Lead', '2016-06-11 00:00:00');
ERROR 1054 (42S22): Unknown column 'AFFECTED_FROM' in 'field list'
mysql>  INSERT INTO Title
    ->     (WORKER_REF_ID, WORKER_TITLE, AFFECTED_FORM) VALUES
    ->     (001, 'Manager', '2016-02-20 00:00:00'),
    ->     (002, 'Executive', '2016-06-11 00:00:00'),
    ->     (008, 'Executive', '2016-06-11 00:00:00'),
    ->     (005, 'Manager', '2016-06-11 00:00:00'),
    ->     (004, 'Asst.Manger','2016-06-11 00:00:00' ),
    ->     (007, 'Executive', '2016-06-11 00:00:00'),
    ->     (006, 'Lead', '2016-06-11 00:00:00'),
    ->     (003, 'Lead', '2016-06-11 00:00:00');
Query OK, 8 rows affected (0.03 sec)
Records: 8  Duplicates: 0  Warnings: 0

mysql> SELECT * FROM worker;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     |  50000 | 2014-06-11 09:00:00 | admin      |
|         6 | Vipul      | Diwan     |  20000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-02-20 09:00:00 | Account    |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.03 sec)

mysql> SELECT first_name, salary FROM worker;
+------------+--------+
| first_name | salary |
+------------+--------+
| Monika     | 100000 |
| Niharika   |  80000 |
| Vishal     | 300000 |
| Amitabh    | 500000 |
| Vivek      |  50000 |
| Vipul      |  20000 |
| Satish     |  75000 |
| Getika     |  90000 |
+------------+--------+
8 rows in set (0.02 sec)

mysql> SELECT 44+11
    -> ^C
mysql> ^C
mysql> SELECT 44+11;
+-------+
| 44+11 |
+-------+
|    55 |
+-------+
1 row in set (0.02 sec)

mysql> SELECT NOW();
+---------------------+
| NOW()               |
+---------------------+
| 2022-10-29 18:26:53 |
+---------------------+
1 row in set (0.00 sec)

mysql> SELECT LOWERCASE('SURYA');
ERROR 1305 (42000): FUNCTION org.LOWERCASE does not exist
mysql> SELECT LCASE('SURYA');
+----------------+
| LCASE('SURYA') |
+----------------+
| surya          |
+----------------+
1 row in set (0.02 sec)

mysql> SELECT UCASE('surya');
+----------------+
| UCASE('surya') |
+----------------+
| SURYA          |
+----------------+
1 row in set (0.02 sec)

mysql> SELECT * FROM worker;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     |  50000 | 2014-06-11 09:00:00 | admin      |
|         6 | Vipul      | Diwan     |  20000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-02-20 09:00:00 | Account    |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.04 sec)

mysql> SELECT first_name, last name FROM worker WHERE worker_id == 2
    -> ^C
mysql> SELECT first_name, last name FROM worker WHERE worker_id = 2;
ERROR 1054 (42S22): Unknown column 'last' in 'field list'
mysql> SELECT first_name, last_name FROM worker WHERE worker_id = 2;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Niharika   | Verma     |
+------------+-----------+
1 row in set (0.03 sec)

mysql> SELELECT * FROM worker WHERE salary > 80000
    -> ^C
mysql> SELELECT * FROM worker WHERE salary > 80000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELELECT * FROM worker WHERE salary > 80000' at line 1
mysql> SELECT * FROM worker WHERE salary > 80000;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE salary > 80000;\
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE department = 'HR';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set (0.02 sec)

mysql> SELECT * FROM worker WHERE salary BETWEEN 80000 AND 300000;
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
4 rows in set (0.00 sec)

mysql> SELECT * FROM worker WHERE department = 'HR' || 'admin';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set, 2 warnings (0.01 sec)

mysql> SELECT * FROM worker WHERE department = 'HR' OR 'admin';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set, 1 warning (0.00 sec)

mysql> SELECT * FROM worker WHERE department = 'HR' || department = 'admin';
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     |  50000 | 2014-06-11 09:00:00 | admin      |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
6 rows in set, 1 warning (0.00 sec)

mysql>
mysql>
mysql> Better way to select by name of the departments:
    ->
    ->
    -> ^C
mysql>  SELECT * FROM workers WHERE department IN ('HR', 'admin', 'Account');
-- ERROR 1146 (42S02): Table 'org.workers' doesn't exist
mysql>  SELECT * FROM worker WHERE department IN ('HR', 'admin', 'Account');
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         1 | Monika     | Arora     | 100000 | 2014-02-20 09:00:00 | HR         |
|         2 | Niharika   | Verma     |  80000 | 2014-06-11 09:00:00 | admin      |
|         3 | Vishal     | Singhal   | 300000 | 2014-02-20 09:00:00 | HR         |
|         4 | Amitabh    | singh     | 500000 | 2014-02-20 09:00:00 | Admin      |
|         5 | Vivek      | Bhati     |  50000 | 2014-06-11 09:00:00 | admin      |
|         6 | Vipul      | Diwan     |  20000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-02-20 09:00:00 | Account    |
|         8 | Getika     | Chauhan   |  90000 | 2014-06-11 09:00:00 | Admin      |
+-----------+------------+-----------+--------+---------------------+------------+
8 rows in set (0.00 sec)

mysql> SELECT * FROM workers WHERE department NOT IN ('HR', 'admin', 'Account');
-- ERROR 1146 (42S02): Table 'org.workers' doesn't exist
mysql> SELECT * FROM worker WHERE department NOT IN ('HR', 'admin', 'Account');
Empty set (0.01 sec)

mysql> SELECT * FROM worker WHERE department NOT IN ('HR', 'admin', 'Account');
Empty set (0.00 sec)

mysql> SELECT * FROM worker WHERE department NOT IN ('HR', 'admin');
+-----------+------------+-----------+--------+---------------------+------------+
| WORKER_ID | first_name | last_name | SALARY | joining_date        | department |
+-----------+------------+-----------+--------+---------------------+------------+
|         6 | Vipul      | Diwan     |  20000 | 2014-06-11 09:00:00 | Account    |
|         7 | Satish     | Kumar     |  75000 | 2014-02-20 09:00:00 | Account    |
+-----------+------------+-----------+--------+---------------------+------------+
2 rows in set (0.00 sec)

mysql>














 56:50










