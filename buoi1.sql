CREATE TABLE CUSTOMER(
CUST_NO  nvarchar(20) PRIMARY KEY,
 CUST_NAME nvarchar(20),
  Phone_No VARCHAR(20)

)
GO

CREATE TABLE Items (
Item_No nvarchar(20) PRIMARY KEY,
    Description VARCHAR(50),
    Price INT
)
GO

CREATE TABLE ORDER_AUGUST (
Ord_No int PRIMARY KEY,
Ord_Date DATE,
    Cust_No INT,
    )
    GO
CREATE TABLE ORDER_DETAILS (
Ord_No int PRIMARY KEY,
Item_No int,
QTY int,
)
INSERT INTO CUSTOMER (CUST_NO, CUST_NAME, Phone_No) VALUES
('1', 'David Gordon', '0231-5466356'),
('2', 'Prince Fernandes', '0221-5762382'),
('3', 'Charles Yale', '0321-8734723'),
('4', 'Ryan Ford', '0241-2343444'),
('5', 'Bruce Smith', '0241-8472198');
DROP TABLE IF EXISTS Items;
CREATE TABLE Items (
    Item_No NVARCHAR(10) PRIMARY KEY,
    Description VARCHAR(50),
    Price INT
);
INSERT INTO Items (Item_No, Description, Price) VALUES
('HW1', 'Power Supply', 4000),
('HW2', 'Keyboard', 2000),
('HW3', 'Mouse', 800),
('SW1', 'Office Suite', 15000),
('SW2', 'Payroll Software', 8000);

DROP TABLE IF EXISTS Items;
INSERT INTO ORDER_AUGUST (Ord_No, Ord_Date, Cust_No)
VALUES
(101, '2012-08-02', 002),
(102, '2012-08-11', 003),
(103, '2012-08-21', 003),
(104, '2012-08-28', 002),
(105, '2012-08-30', 005);
DROP TABLE ORDER_DETAILS;
CREATE TABLE ORDER_DETAILS (
    Ord_No int,
    Item_No nvarchar(20),
    Qty int,
    PRIMARY KEY (Ord_No, Item_No)  
);
GO

INSERT INTO ORDER_DETAILS (Ord_No, Item_No, Qty)
VALUES
(101, 'HW3', 50),
(101, 'SW1', 150),
(102, 'HW2', 10),
(103, 'HW3', 50),
(104, 'HW2', 25),
(104, 'HW3', 100),
(105, 'SW1', 100);
GO
