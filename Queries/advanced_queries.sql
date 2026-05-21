/* show running total of transaction amount for each account in chronological order — 
display account ID, transaction time, amount and running total */
SELECT account_id , txn_time AS "transaction_time", amount,
		SUM(amount) OVER (PARTITION BY account_id ORDER BY txn_time ASC) AS "running_total"
FROM Transactions;        


/* Rank customers by their total transaction value — show customer name, total amount and rank. Same total = same rank */
WITH rank_cte AS(
		SELECT c.customer_id AS "customer_id", c.name AS "name", SUM(t.amount) AS "total_amount"
        FROM Customer c 
        INNER JOIN Accounts a ON c.customer_id = a.customer_id
        INNER JOIN Transactions t ON t.account_id = a.account_id
        GROUP BY c.customer_id, c.name
        )
SELECT rank_cte.name, 
	   rank_cte.total_amount,
       DENSE_RANK() OVER(ORDER BY total_amount DESC) AS "rank"
FROM rank_cte;       


/*For each account show each transaction alongside the previous transaction amount — 
display account ID, transaction time, current amount and previous amount.*/		
SELECT account_id , txn_time AS "transaction_time", amount AS "current_amount",
	   LAG(amount) OVER (PARTITION BY account_id ORDER BY txn_time ASC) AS "previous_amount"
FROM Transactions;       


/*Rank transactions within each account by amount (highest first) — show account ID, transaction ID, amount and rank within account */
SELECT account_id, txn_id AS "transaction_id", amount,
	   DENSE_RANK() OVER(PARTITION BY account_id ORDER BY amount DESC) AS "rank_within_account"
FROM Transactions;  


/* Calculate month-over-month transaction growth — show month, year, total amount and growth percentage compared to previous month */
WITH current_month_cte AS(
			SELECT MONTH(txn_time) AS "month_num",
                   MONTHNAME(txn_time) AS "month_name", 
				   YEAR(txn_time) AS "year", 
                   SUM(amount) AS "total_amount"
            FROM Transactions
            GROUP BY YEAR(txn_time), MONTH(txn_time), MONTHNAME(txn_time)    
        ), 
prev_month_cte AS(
            SELECT month_name, year, total_amount,
	               LAG(total_amount) OVER(ORDER BY year, month_num) AS "previous_month_amount"
            FROM current_month_cte
      )   
SELECT month_name, year, total_amount, previous_month_amount,
       ROUND((((total_amount - previous_month_amount) / previous_month_amount) * 100),2) AS "growth %"
FROM prev_month_cte;  


/* Detect suspicious transactions — flag any transaction where amount is 
more than 3 times the average transaction amount of that account */  
WITH avg_cte AS(
		  SELECT txn_id AS "transaction_id", account_id, amount,
          AVG(amount) OVER(PARTITION BY account_id ORDER BY account_id) AS "avg_amount_per_account" 
          FROM Transactions
      )
SELECT transaction_id, account_id
FROM avg_cte
WHERE amount > (3 *  avg_amount_per_account);


/* Find EMI default rate per loan type — show loan type, total EMIs, defaulted EMIs and default rate percentage */
WITH emi_cte AS(
			SELECT l.loan_type AS "loan_type", SUM(e.amount) AS "total_emi", 
					SUM(CASE
							WHEN e.status = "defaulted" THEN e.amount
						    ELSE 0
						END)
					AS "defaulted_emi_amounts"
            FROM Loans l
            INNER JOIN EMI_Payments e
            ON l.loan_id = e.loan_id
            GROUP BY l.loan_type
       )
SELECT loan_type, total_emi, defaulted_emi_amounts,
		ROUND(((defaulted_emi_amounts / total_emi) * 100),2) AS "default_rate"
FROM emi_cte;
       

/*Find customers whose total debited amount exceeds total credited amount — 
show customer name, total credited, total debited and difference */
WITH cust_cte AS(
			SELECT c.name AS "customer_name", a.account_id,
            SUM(CASE
					WHEN t.txn_type = "credit" THEN t.amount
					ELSE 0
                END) 
              AS "total_credited",
            SUM(CASE
					WHEN t.txn_type = "debit" THEN t.amount
					ELSE 0
                END) 
              AS "total_debited"
            FROM Customer c
            INNER JOIN Accounts a ON c.customer_id = a.customer_id
            INNER JOIN Transactions t ON a.account_id = t.account_id
            GROUP BY a.account_id, c.name
            ORDER BY a.account_id
         )
SELECT customer_name, total_credited, total_debited,
		(total_debited - total_credited) AS "difference"
FROM cust_cte
WHERE total_debited > total_credited;        
            
            
               
