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
                    
                    
/* Find top 5 customers by total transaction value — show customer name and total amount */
SELECT c.customer_id, c.name, SUM(t.amount) AS transaction_value
FROM Transactions t
INNER JOIN Accounts a ON t.account_id = a.account_id
INNER JOIN Customer c ON c.customer_id = a.customer_id
GROUP BY c.customer_id, c.name 
ORDER BY SUM(t.amount) DESC 
LIMIT 5;                    


/* Find dormant accounts — no transaction in last 90 days — show account ID, customer name and last transaction date */
SELECT a.account_id, c.name, DATE(MAX(t.txn_time)) AS last_transaction_date
FROM Transactions t
INNER JOIN Accounts a ON t.account_id = a.account_id
INNER JOIN Customer c ON c.customer_id = a.customer_id
GROUP BY a.account_id, c.name
HAVING DATEDIFF(CURDATE(), MAX(t.txn_time)) > 90
ORDER BY MAX(t.txn_time) DESC;


/*Show all customers whose name starts with 'A' or 'R' — display name in UPPERCASE and their email domain only (part after @) */
SELECT UPPER(name) AS name, SUBSTRING_INDEX(email, '@', -1) AS email_domain
FROM Customer
WHERE name LIKE "A%" OR name LIKE "R%";


/* Show all cards but mask the card number — display only last 4 digits, rest as ****-****-****-XXXX format */
SELECT account_id, RIGHT(card_number, 4) AS Card_number, 
CONCAT('****-****-****-', RIGHT(card_number, 4)) AS masked_card_number
FROM Cards
ORDER BY account_id;


/* Show total transaction amount per month — display month name, year and total amount, ordered by year and month */
SELECT MonthNAME(txn_time) AS month_name, 
		Year(txn_time) AS year, 
        SUM(amount) AS total_amount
FROM Transactions
GROUP BY MonthNAME(txn_time), Year(txn_time)
ORDER BY MIN(txn_time);


/* Find customers whose account is older than 1 year — show customer name, account type and account age in years */
SELECT a.customer_id, c.name, a.account_type, 
		DATE(a.opened_at) AS date_opened, 
		TIMESTAMPDIFF(YEAR, DATE(a.opened_at), 
        CURDATE()) AS account_age
FROM Accounts a
INNER JOIN Customer c
ON a.customer_id = C.customer_id
WHERE DATEDIFF(CURDATE(), DATE(a.opened_at)) > 365;


/* Find all transactions where description contains the word 'Payment' — show account ID, 
amount, description in lowercase, and day of week the transaction happened*/
SELECT account_id, amount, 
		LOWER(description) AS description, 
        DAYNAME(txn_time) AS day
FROM Transactions
WHERE description LIKE "%Payment%";  


   









