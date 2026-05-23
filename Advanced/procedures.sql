/* Pass any customer_id and get their complete profile */
DELIMITER $$
CREATE PROCEDURE get_customer_info(IN cust_id INT)
BEGIN
		SELECT c.customer_id,
			   c.name AS customer_name,
               c.email,
               a.account_id,
               a.account_type,
               a.balance,
               a.status AS "account_status",
               SUM(l.principal_amount) AS "total_loan_amount",
               COUNT(DISTINCT t.txn_id) AS "total_transactions"
         FROM Customer c
         INNER JOIN Accounts a ON c.customer_id = a.customer_id
         LEFT JOIN Loans l ON l.customer_id = c.customer_id
         INNER JOIN Transactions t ON t.account_id = a.account_id
         WHERE c.customer_id = cust_id
         GROUP BY c.customer_id, c.name, c.email, a.account_id, a.account_type, a.balance, 
				  a.status;
END $$
DELIMITER ;

CALL get_customer_info(869320);     




/* Transfer money between two accounts atomically with ACID compliance */ 
DELIMITER $$
CREATE PROCEDURE transfer_money(from_acc_id INT, to_acc_id INT, transfer_amt DECIMAL(10,3))
BEGIN
		DECLARE curr_balance DECIMAL(10,3);
        DECLARE new_txn_id INT;
                
        START TRANSACTION;
        
				SELECT balance INTO curr_balance
				FROM Accounts
				WHERE account_id = from_acc_id;
                       
				IF curr_balance < transfer_amt THEN
                
					ROLLBACK;
                    SELECT "Insufficient balance" AS message;
                    
                ELSE 
                
					UPDATE Accounts SET balance = balance - transfer_amt
                    WHERE account_id = from_acc_id;
                    
                    UPDATE Accounts SET balance = balance + transfer_amt
                    WHERE account_id = to_acc_id;
                    
                    SELECT MAX(txn_id) + 1 INTO new_txn_id 
                    FROM Transactions;
                    
                    INSERT INTO Transactions(txn_id, account_id, amount, balance_after, txn_time, description, txn_type)
                    VALUES(new_txn_id,
						   from_acc_id, 
						   transfer_amt, 
                           (SELECT balance FROM Accounts WHERE account_id = from_acc_id),
                           CURDATE(),
                           "Transfer Out",
                           "debit");
                     
                    INSERT INTO Transactions(txn_id, account_id, amount, balance_after, txn_time, description, txn_type)
                    VALUES(new_txn_id + 1,
                           to_acc_id, 
						   transfer_amt, 
                           (SELECT balance FROM Accounts WHERE account_id = to_acc_id),
                           CURDATE(),
                           "Transfer In",
                           "credit");       
                    
                    COMMIT;
                    
                    SELECT "Transfer Successful" AS message;
                    
                    SELECT account_id, balance AS "sender's_balance"
                    FROM Accounts 
                    WHERE account_id = from_acc_id;
                    
                    SELECT account_id, balance AS "receiver's_balance"
                    FROM Accounts 
                    WHERE account_id = to_acc_id;
                    
                END IF;
END $$
DELIMITER ;

CALL transfer_money(1015, 1006, 500);               
                


                   
                    
                    
                
                
			
   