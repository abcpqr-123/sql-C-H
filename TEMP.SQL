crEate table Customer (
     id integer PRIMARY KEY,
     cname VARCHAR(225),
     Address VARCHAR(255),
     Gender CHAR(2),
     City VARCHAR(225),
     Pincode INTEGER
     );


INSERT INTO Customer 
VALUES(1251, "Ram Kumar", "Dilbag Nagar", 'M', 'Jalandar', 144002),
      (1300, 'Shayam Singh', 'Ludhiana H.O', 'M', 'Ludhiana', 141001),
      (245, "Neelabh Shukla", "Ashok Nagar", 'M', 'Jalandar', 144003),
      (210, "Barkha Singh", "Dilbag Nagar", 'F', 'Jalandar', 144002),
      (500, 'Shayam Singh', 'Ludhiana H.O', 'M', 'Ludhiana', 141001);


 INSERT INTO worker
    VALUES(10, 'abcdi', 'xyz', 20000, '2014-02-20 09:00:00', 'Admin');



CREATE TABLE order_details(
    order_id INTEGER PRIMARY KEY,
    delivery_date DATE,
    cust_id INT,
    FOREIGN KEY (cust_id) REFERENCES Customer(id)
);

CREATE TABLE account(
    id INT PRIMARY KEY,
    name VARCHAR(225) UNIQUE,
    balance INT,
    CONSTRAINT acc_balance_chk CHECK(balance > 1000)
);


CREATE TABLE account2(
    id INT PRIMARY KEY,
    name VARCHAR(225) UNIQUE,
    balance INT NOT NULL DEFAULT 0
);

INSERT INTO account2(id, name)
values (1, 'A');

INSERT INTO account2(id, name)
values (2, 'B');

CREATE TABLE account3(
    id INT PRIMARY KEY,
    name VARCHAR(225) UNIQUE,
    balance INT NOT NULL DEFAULT 0
);
 INSERT INTO account3(id, name)
   values (1, 'A');
 INSERT INTO account3(id, name)
   values (2, 'B');