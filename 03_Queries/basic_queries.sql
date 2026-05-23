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

/* all accounts whose balance dropped below ₹180000 after any transaction — show account ID, transaction amount and balance after */
SELECT account_id, txn_id, amount, balance_after
FROM Transactions
WHERE balance_after < 180000;


/*Find average transaction amount per account type — show account type and average amount */
SELECT a.account_type, AVG(t.amount) AS average_transaction_amount
FROM Accounts a
INNER JOIN Transactions t
ON a.account_id = t.account_id
GROUP BY a.account_type;


/* Find customers with more than 2 active loans — show customer id and loan count */
SELECT customer_id, Count(loan_id)
FROM Loans
WHERE status = "Active"
GROUP BY customer_id
HAVING Count(loan_id) > 2;





