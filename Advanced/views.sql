/* Account Summary */
CREATE VIEW view_account_summary AS
SELECT c.customer_id AS "customer_id",
	   c.name AS "customer_name",
       a.account_id AS "account_id",
       a.account_type AS "account_type",
       a.balance AS "balance",
       a.status AS "account_status",
       DATE(a.opened_at) AS "date_opened"
FROM Customer c
INNER JOIN Accounts a
ON c.customer_id = a.customer_id; 

SELECT * FROM view_account_summary ORDER BY date_opened;  

DROP VIEW view_loan_status;  
/* Loan Status */
CREATE VIEW view_loan_status AS 
SELECT c.customer_id AS "customer_id",
	   c.name AS "customer_name",
       l.loan_id AS "loan_id",
       l.loan_type AS "loan_type",
       l.principal_amount AS "principal_amount",
       l.interest_rate AS "interest_rate",
       l.status AS "loan_status",
       SUM(e.amount) AS "total_emi_paid"
FROM Customer c
INNER JOIN Loans l ON c.customer_id = l.customer_id     
INNER JOIN EMI_Payments e ON e.loan_id = l.loan_id
GROUP BY c.customer_id, c.name, l.loan_id, l.loan_type, l.principal_amount, l.interest_rate, l.status;   

SELECT * FROM view_loan_status;


/* Transaction Summary */
CREATE VIEW view_temp AS 
SELECT  account_id AS "account_id",
     	 SUM(CASE
				WHEN txn_type = "credit" THEN amount
				ELSE 0
			END) 
		      AS "total_credited",
         SUM(CASE
				WHEN txn_type = "debit" THEN amount
				ELSE 0
             END) 
			   AS "total_debited",
         COUNT(txn_id) AS total_transactions      
FROM Transactions
GROUP BY account_id;
     
CREATE VIEW view_transaction_summary AS 
SELECT account_id, total_credited, total_debited,
		(total_debited - total_credited) AS "difference",
        total_transactions
FROM view_temp;         
              
SELECT * FROM view_transaction_summary;


/* Fraud Risk Accounts */


