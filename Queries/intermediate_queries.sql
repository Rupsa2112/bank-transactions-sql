/* Total amount credited and debited per account — show account ID, total credited, total debited */
SELECT account_id, 
SUM(CASE 
		WHEN txn_type = "credit" THEN amount 
		ELSE 0 
     END)
    AS "amount_credited",
SUM(CASE 
		WHEN txn_type = "debit" THEN amount
		ELSE 0
	END) 
    AS "amount_debited"
FROM Transactions
GROUP BY account_id;


/* all loans where the total EMI paid so far is more than 10% of the principal amount */
SELECT l.loan_id, l.customer_id, SUM(e.amount) AS amount_paid
FROM Loans l
INNER JOIN EMI_Payments e
ON l.loan_id = e.loan_id
GROUP BY l.loan_id, l.customer_id, l.principal_amount
HAVING SUM(e.amount) > 0.1 * l.principal_amount; 


/* customers who have a loan but no credit card */
SELECT customer_id, loan_id
FROM Loans
WHERE customer_id NOT IN ( SELECT a.customer_id
						   FROM Accounts a
                           INNER JOIN Cards c
                           ON a.account_id = c.account_id
                           WHERE c.card_type LIKE '%Credit%'
);


/* the most recent transaction for each account — show account ID, transaction type, amount and time */
SELECT account_id, amount, description AS transaction_type, txn_time
FROM Transactions
WHERE txn_time IN (SELECT MAX(txn_time)
					FROM Transactions
                    GROUP BY account_id);









