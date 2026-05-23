CREATE DATABASE IF NOT EXISTS BANK;

USE BANK;


CREATE TABLE Customer(
 customer_id int PRIMARY KEY,
 name varchar(50),
 email varchar(50),
 phone varchar(20),
 dob date,
 created_at timestamp
);

SELECT customer_id FROM Customer;  



CREATE TABLE Branch(
branch_id int PRIMARY KEY,
name varchar(50),
city varchar(50), 
ifsc_code varchar(50)
);

SELECT * FROM Branch; 



CREATE TABLE Employee(
emp_id int PRIMARY KEY,
branch_id int,
name varchar(50),
role varchar(50), 
salary int,
FOREIGN KEY (branch_id) REFERENCES Branch (branch_id) 
);

SELECT * FROM Employee;



CREATE TABLE Accounts(
 account_id int PRIMARY KEY,
 customer_id int,
 account_type varchar(50),
 balance int,
 status varchar(20),
 opened_at timestamp,
 FOREIGN KEY (customer_id) REFERENCES Customer (Customer_id)
);

SELECT * FROM Accounts;



CREATE TABLE Loans(
 loan_id int PRIMARY KEY,
 customer_id int,
 loan_type varchar(50),
 principal_amount float,
 interest_rate float,
 tenure_months int,
 status varchar(20),
 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id)
);

SELECT * FROM Loans;



CREATE TABLE Transactions(
 txn_id int PRIMARY KEY,
 account_id int,
 amount float,
 balance_after float,
 txn_time timestamp,
 description varchar(20),
 FOREIGN KEY (account_id) REFERENCES Accounts (account_id)
);

ALTER TABLE Transactions
ADD COLUMN txn_type varchar(50);

UPDATE Transactions SET txn_type = 'credit' 
WHERE txn_id IN (3001, 3002, 3016, 3022, 3028, 3033, 3040, 3045, 
                 3051, 3056, 3060, 3066, 3072, 3079, 3083, 3088,
                 3094, 3007, 3009, 3010, 3011, 3012, 3036, 3048,
                 3063, 3075);
               
SET SQL_SAFE_UPDATES = 0;

UPDATE Transactions SET txn_type = 'debit' WHERE txn_type IS NULL;


UPDATE Accounts a
INNER JOIN (
    SELECT account_id, balance_after
    FROM Transactions t1
    WHERE txn_time = (
        SELECT MAX(txn_time) 
        FROM Transactions t2
        WHERE t2.account_id = t1.account_id
    )
) AS latest
ON a.account_id = latest.account_id
SET a.balance = latest.balance_after;

SET SQL_SAFE_UPDATES = 1;

SELECT * FROM Transactions;



CREATE TABLE Cards(
 card_id int PRIMARY KEY,
 account_id int,
 card_type varchar(50),
 card_number int,
 expiry date,
 credit_limit float,
 FOREIGN KEY (account_id) REFERENCES Accounts (account_id)
);

SELECT * FROM Cards;



CREATE TABLE EMI_Payments(
 emi_id int PRIMARY KEY,
 loan_id int,
 due_date date,
 paid_date date,
 amount float,
 status varchar(50),
 FOREIGN KEY (loan_id) REFERENCES Loans (loan_id)
);

SELECT * FROM EMI_Payments;



CREATE TABLE Fraud_Alerts(
 alert_id int PRIMARY KEY,
 account_id int,
 txn_id int,
 reason varchar(50),
 flagged_at timestamp,
 resolved boolean,
 FOREIGN KEY (account_id) REFERENCES Accounts (account_id),
 FOREIGN KEY (txn_id) REFERENCES Transactions (txn_id)
);

SELECT * FROM Fraud_Alerts where account_id = 1001;

SHOW TABLES;