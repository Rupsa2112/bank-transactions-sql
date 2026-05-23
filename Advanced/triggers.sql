/* Before Insert on Transactions */
DELIMITER $$ 
CREATE TRIGGER before_insert_transactions
BEFORE INSERT ON Transactions
FOR EACH ROW
BEGIN
		DECLARE curr_balance DECIMAL(10,3);
               
		IF NEW.txn_type = "debit" THEN
        
				SELECT balance INTO curr_balance
				FROM Accounts
				WHERE account_id = NEW.account_id;
            
				IF curr_balance < NEW.amount THEN
						SIGNAL SQLSTATE '45000'
						SET MESSAGE_TEXT = "Insufficient balance - Transaction blocked";
				END IF;
             
        END IF;
END $$
DELIMITER ;        


/* After Insert on Transactions */
DELIMITER $$ 
CREATE TRIGGER after_insert_transactions
AFTER INSERT ON Transactions
FOR EACH ROW
BEGIN
		DECLARE avg_amount DECIMAL(10,3);
        DECLARE max_alert_id INT;
        
        SELECT AVG(amount) INTO avg_amount
        FROM Transactions
        WHERE account_id = NEW.account_id;
                
        IF  NEW.amount > 3 * avg_amount THEN
        
                SELECT MAX(alert_id) INTO max_alert_id
                FROM Fraud_Alerts;
                
				INSERT INTO Fraud_Alerts(alert_id, account_id, txn_id, reason, flagged_at, resolved)
                VALUES (max_alert_id + 1,
                        NEW.account_id,
                        NEW.txn_id,
                        "Amount exceeds 3x Average",
                        CURDATE(),
                        FALSE);
                
        END IF;        
END $$
DELIMITER ;   

       

/* Before update on Accounts */
DELIMITER $$
CREATE TRIGGER before_update_accounts
BEFORE UPDATE ON Accounts
FOR EACH ROW
BEGIN
    IF NEW.balance <= 0 THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Balance cannot be zero or negative';
    END IF;
END $$
DELIMITER ;

