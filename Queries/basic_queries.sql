USE Bank;

/* all customers along with their account number, account type, and current balance */
SELECT c.name, a.account_id, a.account_type, a.balance
FROM Customer c
LEFT JOIN Accounts a
ON c.customer_id = a.customer_id
ORDER BY a.account_id;

/* accounts where the current balance is above ₹1,00,000 — along with the customer's name and phone number */
SELECT c.name, c.phone, a.balance
FROM Customer c
LEFT JOIN Accounts a
ON c.customer_id = a.customer_id
WHERE a.balance > 100000;

/* show latest transactions  */
SELECT *
FROM Transactions
ORDER BY txn_time DESC;

/* active loans along with the customer's name, loan type, principal amount and interest rate */
SELECT c.name, l.loan_type, l.principal_amount, l.interest_rate
FROM Customer c
LEFT JOIN Loans l
ON c.customer_id = l.customer_id
WHERE l.status = 'Active';

/* all defaulted EMI payments — show loan ID, due date, paid date, amount, and how many days defaulted */
SELECT e.loan_id, e.due_date, e.paid_date, e.amount, 
DATEDIFF(e.paid_date, e.due_date) AS days_defaulted
FROM EMI_Payments e
WHERE e.status = 'Defaulted'
ORDER BY e.paid_date DESC; 

/* all cards that are expiring within the next 6 months — show account ID, card type, card number and expiry date */   
SELECT c.account_id, c.card_type, c.card_number, c.expiry
FROM Cards c
WHERE DATEDIFF(c.expiry, CURDATE()) BETWEEN 0 AND 180;

/*  no.of employees in each branch of bank */
SELECT Count(e.emp_id) AS employee_count, b.branch_id, b.name AS branch_name
FROM Employee e
LEFT JOIN Branch b
ON e.branch_id = b.branch_id
GROUP BY b.branch_id, b.name;

/* all transactions where the amount is above the overall average transaction amount */
SELECT txn_id, account_id, amount
FROM Transactions
WHERE amount > (SELECT AVG(amount) FROM Transactions);

/* all customers having savings account and are active */
SELECT account_id, customer_id, account_type, status, balance
FROM Accounts
WHERE account_type = "Savings" AND status = "Active";

/* the most recent transaction for each account — show account ID, transaction type, amount and time */
SELECT account_id, amount, description AS transaction_type, txn_time
FROM Transactions
WHERE txn_time IN (SELECT MAX(txn_time)
					FROM Transactions
                    GROUP BY account_id);

/* all accounts whose balance dropped below ₹180000 after any transaction — show account ID, transaction amount and balance after */
SELECT account_id, txn_id, amount, balance_after
FROM Transactions
WHERE balance_after < 180000;

/* customers who have a loan but no credit card */
SELECT customer_id, loan_id
FROM Loans
WHERE customer_id NOT IN ( SELECT a.customer_id
						   FROM Accounts a
                           INNER JOIN Cards c
                           ON a.account_id = c.account_id
                           WHERE c.card_type LIKE '%Credit%'
);

/* all loans where the total EMI paid so far is more than 10% of the principal amount */
SELECT l.loan_id, l.customer_id, SUM(e.amount) AS amount_paid
FROM Loans l
INNER JOIN EMI_Payments e
ON l.loan_id = e.loan_id
GROUP BY l.loan_id, l.customer_id, l.principal_amount
HAVING SUM(e.amount) > 0.1 * l.principal_amount;





