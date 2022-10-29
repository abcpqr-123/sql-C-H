 
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