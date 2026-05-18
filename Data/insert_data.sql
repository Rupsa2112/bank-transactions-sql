USE Bank;

INSERT INTO Customer VALUES(86424, "Rita Yates", "ritayates@example.net", " 6013022002", "1985-09-18", "2023-04-12 04:00:41");
INSERT INTO Customer VALUES(264994, "Cassidy Collins", "cassidy86@example.com", "228-919-943402", "2005-04-16", "2024-10-06 01:01:02");
INSERT INTO Customer VALUES(869320, "Daniel Wolfe", "dwolfe45@example.com", "383-631-2066x129", "1985-09-12", "2025-03-25 02:07:12");   
INSERT INTO Customer VALUES(593386, "James Nelson", "nelsonjames@example.com", "(907)840-0467","2000-11-04", "2018-10-02 06:58:39"); 
INSERT INTO Customer VALUES(918656, "Mrs. Michelle Hamilton", "hamilton78@example.net", "1-252-521-4747", "1958-02-03", "2013-01-19 08:46:20");  
INSERT INTO Customer VALUES(827624, "Anthony Holmes", "anthony64@example.org", "001-958-598-320567", "1952-04-15", "1989-03-23 03:29:57");  
INSERT INTO Customer VALUES(770953, "Stephen Andrews", "stephenandrews@example.net", "1-788-608-1719", "2003-10-07", "2022-03-08 21:34:53");
INSERT INTO Customer VALUES(596838, "William Key", "keywilliam51@example.com", "3747798364", "1958-05-05", "2015-03-11 02:19:19");
INSERT INTO Customer VALUES(176740, "James Johnson", "jamesjohnson@example.com", "2879145779", "1989-06-13", "2023-11-15 21:10:45");
INSERT INTO Customer VALUES(520143, "Jamie Peterson", "jamie55@example.com", "669-970-3492", "1972-04-18", "2023-09-25 06:29:30"); 
INSERT INTO Customer VALUES(313991, "John Baldwin", "baldwinjohn@example.com", "4037077535", "1975-02-18", "1998-04-22 23:31:46"); 
INSERT INTO Customer VALUES(504080, "Jessica Schultz", "jessica70@example.com", "(871)273-757970", "1977-01-14", "2014-09-11 21:54:27"); 
INSERT INTO Customer VALUES(658893, "Brianna Murillo", "brianna@example.org", "(962)523-3775", "1999-12-27", "2025-10-21 11:16:31");
INSERT INTO Customer VALUES(349285, "Tyler Weeks", "weekstyler@example.com", "(749)388-4473", "2007-01-25", "2025-05-04 18:38:57");
INSERT INTO Customer VALUES(789565, "Katrina Garza", "katrina66@example.com", "+1-201-595-5248", "1970-12-04", "2011-09-30 15:30:17");

SELECT * FROM Customer;  


INSERT INTO Branch VALUES(1, "Central Branch", "New York", "BANK0867159");
INSERT INTO Branch VALUES(2, "Lake View Branch", "London",  "BANK0871156");
INSERT INTO Branch VALUES(3, "Park Street Branch", "Tokyo", "BANK0243900");
INSERT INTO Branch VALUES(4, "City Center Branch",  "Paris", "BANK0926007");
INSERT INTO Branch VALUES(5, "Hill Road Branch", "Sydney", "BANK0896129");
INSERT INTO Branch VALUES(6, "Main Market Branch", "Dubai", "BANK0681634");
INSERT INTO Branch VALUES(7, "Riverside Branch", "Singapore", "BANK0602179");
INSERT INTO Branch VALUES(8, "Green Park Branch", "Toronto", "BANK0942621");
INSERT INTO Branch VALUES(9, "Sunrise Branch", "Berlin", "BANK0330150");
INSERT INTO Branch VALUES(10, "Metro Branch", "Rome", "BANK0963966");
INSERT INTO Branch VALUES(11, "Airport Branch", "Bangkok", "BANK0493966");
INSERT INTO Branch VALUES(12, "Industrial Area Branch", "Seoul", "BANK0287523");
INSERT INTO Branch VALUES(13, "College Road Branch", "Amsterdam", "BANK0755771");
INSERT INTO Branch VALUES(14, "New Town Branch", "Barcelona", "BANK0741487");
INSERT INTO Branch VALUES(15, "South City Branch", "Mexico", "BANK0249432");

SELECT * FROM Branch; 


INSERT INTO Employee VALUES(1, 12, "Mary Burton", "Accountant", 72842);
INSERT INTO Employee VALUES(2, 1, "Patricia Hughes", "HR Executive", 114678);
INSERT INTO Employee VALUES(3, 9, "Derek Diaz", "Accountant", 41577);
INSERT INTO Employee VALUES(4, 2, "Katherine Romero", "Loan Officer", 45438);
INSERT INTO Employee VALUES(5, 6, "Rebecca Williams", "Branch Head", 44224);
INSERT INTO Employee VALUES(6, 10, "Sarah Duke", "Manager", 97143);
INSERT INTO Employee VALUES(7, 4, "Gavin Jones", "Auditor", 72414);
INSERT INTO Employee VALUES(8, 3, "Rebecca Allen", "Branch Head", 57514);
INSERT INTO Employee VALUES(9, 14, "Jennifer Murphy", "Clerk", 108256);
INSERT INTO Employee VALUES(10, 8, "Anthony Clark", "Auditor", 60039);
INSERT INTO Employee VALUES(11, 7, "Adam Holder", "Security Officer", 81123);
INSERT INTO Employee VALUES(12, 13, "David Cook", "Branch Head", 111914);
INSERT INTO Employee VALUES(13, 5, "Steven Gonzalez", "Auditor", 35968);
INSERT INTO Employee VALUES(14, 11, "Morgan Poole", "Security Officer", 70286);
INSERT INTO Employee VALUES(15, 15, "Richard Edwards", "Branch Head", 79403);

SELECT * FROM Employee;


INSERT INTO Accounts VALUES (1001, 86424, 'Savings', 25000.50, 'Active', '2023-05-10');
INSERT INTO Accounts VALUES (1002, 264994, 'Current', 120000.00, 'Active', '2024-10-15');
INSERT INTO Accounts VALUES (1003, 869320, 'Fixed Deposit', 500000.00, 'Active', '2025-04-01');
INSERT INTO Accounts VALUES(1004, 593386, 'Savings', 18500.75, 'Inactive', '2019-01-12');
INSERT INTO Accounts VALUES(1005, 918656, 'Salary', 72000.00, 'Active', '2014-02-20');
INSERT INTO Accounts VALUES(1006, 827624, 'Current', 9100.00, 'Closed', '1990-06-18');
INSERT INTO Accounts VALUES(1007, 770953, 'Savings', 33000.00, 'Active', '2022-04-15');
INSERT INTO Accounts VALUES(1008, 596838, 'Business', 780000.50, 'Active', '2016-07-21');
INSERT INTO Accounts VALUES(1009, 176740, 'Savings', 15600.00, 'Frozen', '2023-12-01');
INSERT INTO Accounts VALUES(1010, 520143, 'Salary', 64000.00, 'Active', '2023-10-05');
INSERT INTO Accounts VALUES(1011, 313991, 'Current', 84500.00, 'Inactive', '1999-03-11');
INSERT INTO Accounts VALUES(1012, 504080, 'Fixed Deposit', 250000.00, 'Active', '2015-01-19');
INSERT INTO Accounts VALUES(1013, 658893, 'Savings', 12000.00, 'Active', '2025-10-25');
INSERT INTO Accounts VALUES(1014, 349285, 'Student', 4500.00, 'Active', '2025-05-10');
INSERT INTO Accounts VALUES(1015, 789565, 'Business', 990000.00, 'Active', '2012-01-14');
INSERT INTO Accounts VALUES
(1016, 86424, 'Current', 78000, 'Active', '2024-01-15'),
(1017, 869320, 'Savings', 65000, 'Active', '2025-05-20'),
(1018, 918656, 'Fixed Deposit', 300000, 'Active', '2016-08-11'),
(1019, 770953, 'Student', 12000, 'Active', '2023-01-10'),
(1020, 176740, 'Current', 92000, 'Active', '2024-03-15'),
(1021, 313991, 'Fixed Deposit', 210000, 'Active', '2005-09-18'),
(1022, 789565, 'Savings', 54000, 'Active', '2014-06-30');

SELECT * FROM Accounts ORDER BY customer_id;



INSERT INTO Loans VALUES(2001, 86424, 'Education Loan', 1424765.49, 11.73, 36, 'Closed');
INSERT INTO Loans VALUES(2002, 264994, 'Car Loan', 229696.20, 12.97, 240, 'Defaulted');
INSERT INTO Loans VALUES(2003, 869320, 'Gold Loan', 1710555.91, 10.25, 240, 'Defaulted');
INSERT INTO Loans VALUES(2004, 593386, 'Home Loan', 93569.40, 8.87, 180, 'Active');
INSERT INTO Loans VALUES(2005, 918656, 'Gold Loan', 2469904.84, 9.15, 36, 'Defaulted');
INSERT INTO Loans VALUES(2006, 827624, 'Personal Loan', 917532.52, 7.76, 60, 'Closed');
INSERT INTO Loans VALUES(2007, 770953, 'Gold Loan', 2028781.29, 7.48, 84, 'Defaulted');
INSERT INTO Loans VALUES(2008, 596838, 'Car Loan', 4523851.80, 10.09, 240, 'Active');
INSERT INTO Loans VALUES(2009, 176740, 'Gold Loan', 2349495.15, 11.70, 60, 'Active');
INSERT INTO Loans VALUES(2010, 520143, 'Personal Loan', 485139.96, 12.16, 84, 'Closed');
INSERT INTO Loans VALUES(2011, 313991, 'Personal Loan', 1717811.03, 7.79, 12, 'Closed');
INSERT INTO Loans VALUES(2012, 504080, 'Education Loan', 3400405.41, 14.03, 120, 'Defaulted');
INSERT INTO Loans VALUES(2013, 658893, 'Gold Loan', 748930.95, 9.06, 84, 'Closed');
INSERT INTO Loans VALUES(2014, 349285, 'Home Loan', 2836656.30, 14.24, 180, 'Defaulted');
INSERT INTO Loans VALUES(2015, 789565, 'Personal Loan', 2399000.54, 9.87, 120, 'Active');
INSERT INTO Loans VALUES
(2016, 86424, 'Car Loan', 500000.00, 9.5, 36, 'Active'),
(2017, 86424, 'Personal Loan', 300000.00, 11.0, 24, 'Active'),
(2018, 86424, 'Home Loan', 1500000.00, 8.5, 120, 'Active'),
(2019, 176740, 'Car Loan', 450000.00, 10.2, 36, 'Active'),
(2020, 176740, 'Education Loan', 600000.00, 7.5, 48, 'Active'),
(2021, 176740, 'Personal Loan', 250000.00, 12.0, 24, 'Active'),
(2022, 593386, 'Car Loan', 700000.00, 9.8, 48, 'Active'),
(2023, 593386, 'Gold Loan', 400000.00, 10.5, 36, 'Active'),
(2024, 593386, 'Education Loan', 350000.00, 8.0, 60, 'Active'),
(2025, 789565, 'Car Loan', 550000.00, 9.2, 36, 'Active'),
(2026, 789565, 'Home Loan', 2000000.00, 8.3, 180, 'Active'),
(2027, 789565, 'Gold Loan', 800000.00, 10.8, 60, 'Active'),
(2028, 349285, 'Car Loan', 600000.00, 9.5, 48, 'Active'),
(2029, 349285, 'Personal Loan', 200000.00, 11.5, 24, 'Active');

SELECT * FROM Loans;


INSERT INTO Transactions VALUES(3001, 1001, 3179.77, 493116.24, '2025-05-30 10:29:57', 'Interest Credit');
INSERT INTO Transactions VALUES(3002, 1002, 25951.89, 552018.80, '2026-02-23 23:00:20', 'Cash Deposit');
INSERT INTO Transactions VALUES(3003, 1003, 26980.90, 128712.95, '2025-04-01 12:17:25', 'Shopping Purchase');
INSERT INTO Transactions VALUES(3004, 1004, 4201.52, 368446.81, '2025-12-12 22:26:15', 'Bill Payment');
INSERT INTO Transactions VALUES(3005, 1005, 16766.44, 374839.84, '2026-02-04 06:08:44', 'Shopping Purchase');
INSERT INTO Transactions VALUES(3006, 1006, 32833.49, 583151.50, '2024-10-18 08:11:04', 'UPI Payment');
INSERT INTO Transactions VALUES(3007, 1007, 6975.94, 756736.41, '2025-06-09 14:09:56', 'Cash Deposit');
INSERT INTO Transactions VALUES(3008, 1008, 47577.89, 432658.77, '2024-09-19 22:03:47', 'Interest Credit');
INSERT INTO Transactions VALUES(3009, 1009, 37276.89, 697125.57, '2025-06-14 22:59:55', 'Loan EMI');
INSERT INTO Transactions VALUES(3010, 1010, 37335.21, 646334.91, '2025-01-04 13:47:44', 'UPI Payment');
INSERT INTO Transactions VALUES(3011, 1011, 12209.70, 737678.33, '2026-04-27 08:56:27', 'Bill Payment');
INSERT INTO Transactions VALUES(3012, 1012, 39040.46, 519267.67, '2025-03-04 15:56:11', 'ATM Withdrawal');
INSERT INTO Transactions VALUES(3013, 1013, 1411.92, 240761.32, '2024-12-17 01:37:47', 'Loan EMI');
INSERT INTO Transactions VALUES(3014, 1014, 44040.65, 234498.24, '2026-02-13 23:27:31', 'Bill Payment');
INSERT INTO Transactions VALUES(3015, 1015, 29438.95, 150799.71, '2024-08-31 11:03:53', 'Online Transfer');
INSERT INTO Transactions VALUES(3016, 1001, 45000.00, 538116.24, '2025-01-15 09:10:00', 'Salary Credit');
INSERT INTO Transactions VALUES(3017, 1001, 12000.00, 526116.24, '2025-02-03 14:22:00', 'Rent Payment');
INSERT INTO Transactions VALUES(3018, 1001, 3500.00,  522616.24, '2025-02-18 11:05:00', 'Grocery');
INSERT INTO Transactions VALUES(3019, 1001, 180000.00,702616.24, '2025-03-01 10:00:00', 'Large Transfer');  
INSERT INTO Transactions VALUES(3020, 1001, 8200.00,  694416.24, '2025-04-10 16:45:00', 'UPI Payment');
INSERT INTO Transactions VALUES(3021, 1001, 15000.00, 679416.24, '2025-05-05 08:30:00', 'Bill Payment');
INSERT INTO Transactions VALUES(3022, 1002, 60000.00, 612018.80, '2025-01-01 09:00:00', 'Salary Credit');
INSERT INTO Transactions VALUES(3023, 1002, 20000.00, 592018.80, '2025-01-20 13:15:00', 'ATM Withdrawal');
INSERT INTO Transactions VALUES
(3024, 1002, 5500.00,  586518.80, '2025-02-14 10:30:00', 'Online Transfer'),
(3025, 1002, 9800.00,  576718.80, '2025-03-11 17:00:00', 'Shopping Purchase'),
(3026, 1002, 200000.00,776718.80, '2025-04-02 08:00:00', 'Large Deposit'),  
(3027, 1002, 13500.00, 763218.80, '2025-05-19 12:45:00', 'Loan EMI'),
(3028, 1003, 35000.00, 163712.95, '2025-01-08 08:55:00', 'Salary Credit'),
(3029, 1003, 7000.00,  156712.95, '2025-02-01 11:20:00', 'Bill Payment'),
(3030, 1003, 4200.00,  152512.95, '2025-02-25 15:10:00', 'Grocery'),
(3031, 1003, 11000.00, 141512.95, '2025-03-15 09:45:00', 'Rent Payment'),
(3032, 1003, 6500.00,  135012.95, '2025-04-20 14:00:00', 'UPI Payment'),
(3033, 1004, 50000.00, 418446.81, '2025-01-05 09:30:00', 'Salary Credit'),
(3034, 1004, 18000.00, 400446.81, '2025-01-28 16:00:00', 'ATM Withdrawal'),
(3035, 1004, 6000.00,  394446.81, '2025-02-10 10:15:00', 'Shopping Purchase'),
(3036, 1004, 150000.00,544446.81, '2025-03-03 08:30:00', 'Large Transfer'),  
(3037, 1004, 9500.00,  534946.81, '2025-04-07 13:45:00', 'Bill Payment'),
(3038, 1004, 4800.00,  530146.81, '2025-05-01 11:00:00', 'Online Transfer'),
(3039, 1004, 7200.00,  522946.81, '2025-06-15 14:30:00', 'UPI Payment'),
(3040, 1005, 45000.00, 419839.84, '2025-01-10 09:00:00', 'Salary Credit'),
(3041, 1005, 10000.00, 409839.84, '2025-02-05 12:30:00', 'Rent Payment'),
(3042, 1005, 3800.00,  406039.84, '2025-02-20 15:45:00', 'Grocery'),
(3043, 1005, 8500.00,  397539.84, '2025-03-18 10:00:00', 'Bill Payment'),
(3044, 1005, 5200.00,  392339.84, '2025-04-25 16:15:00', 'UPI Payment'),
(3045, 1006, 70000.00, 653151.50, '2025-01-03 08:45:00', 'Salary Credit'),
(3046, 1006, 25000.00, 628151.50, '2025-01-22 14:00:00', 'ATM Withdrawal'),
(3047, 1006, 12000.00, 616151.50, '2025-02-08 11:30:00', 'Loan EMI'),
(3048, 1006, 220000.00,836151.50, '2025-03-01 09:00:00', 'Large Deposit'),   
(3049, 1006, 15000.00, 821151.50, '2025-04-14 13:00:00', 'Online Transfer'),
(3050, 1006, 9000.00,  812151.50, '2025-05-09 10:30:00', 'Shopping Purchase');
INSERT INTO Transactions VALUES
(3051, 1007, 55000.00, 811736.41, '2025-01-07 09:15:00', 'Salary Credit'),
(3052, 1007, 16000.00, 795736.41, '2025-02-03 15:30:00', 'Rent Payment'),
(3053, 1007, 4500.00,  791236.41, '2025-02-22 10:45:00', 'Grocery'),
(3054, 1007, 8800.00,  782436.41, '2025-03-10 14:00:00', 'Bill Payment'),
(3055, 1007, 6300.00,  776136.41, '2025-04-18 11:15:00', 'UPI Payment'),
(3056, 1008, 40000.00, 472658.77, '2024-06-01 09:00:00', 'Salary Credit'),
(3057, 1008, 12000.00, 460658.77, '2024-06-20 14:30:00', 'ATM Withdrawal'),
(3058, 1008, 5000.00,  455658.77, '2024-07-05 11:00:00', 'Bill Payment'),
(3059, 1008, 8500.00,  447158.77, '2024-07-28 16:45:00', 'UPI Payment'),
(3060, 1009, 65000.00, 762125.57, '2025-01-06 08:30:00', 'Salary Credit'),
(3061, 1009, 22000.00, 740125.57, '2025-01-25 13:00:00', 'Rent Payment'),
(3062, 1009, 7500.00,  732625.57, '2025-02-12 10:15:00', 'Shopping Purchase'),
(3063, 1009, 175000.00,907625.57, '2025-03-05 09:00:00', 'Large Transfer'),  
(3064, 1009, 11000.00, 896625.57, '2025-04-22 14:45:00', 'Loan EMI'),
(3065, 1009, 6800.00,  889825.57, '2025-05-15 11:30:00', 'Online Transfer'),
(3066, 1010, 50000.00, 696334.91, '2025-01-09 09:45:00', 'Salary Credit'),
(3067, 1010, 14000.00, 682334.91, '2025-02-01 15:00:00', 'ATM Withdrawal'),
(3068, 1010, 4200.00,  678134.91, '2025-02-19 10:30:00', 'Grocery'),
(3069, 1010, 9800.00,  668334.91, '2025-03-14 13:15:00', 'Bill Payment'),
(3070, 1010, 5500.00,  662834.91, '2025-04-28 16:00:00', 'UPI Payment'),
(3071, 1010, 7300.00,  655534.91, '2025-05-20 11:45:00', 'Online Transfer'),
 (3072, 1011, 48000.00, 785678.33, '2025-01-12 08:00:00', 'Salary Credit'),
(3073, 1011, 19000.00, 766678.33, '2025-01-30 14:30:00', 'Rent Payment'),
(3074, 1011, 6200.00,  760478.33, '2025-02-16 11:00:00', 'Shopping Purchase'),
(3075, 1011, 190000.00,950478.33, '2025-03-08 09:15:00', 'Large Deposit'), 
(3076, 1011, 13000.00, 937478.33, '2025-04-05 15:30:00', 'Loan EMI'),
(3077, 1011, 8700.00,  928778.33, '2025-05-12 10:00:00', 'Bill Payment'),
(3078, 1011, 4900.00,  923878.33, '2025-06-01 13:45:00', 'UPI Payment'),
(3079, 1012, 42000.00, 561267.67, '2024-05-10 09:30:00', 'Salary Credit'),
(3080, 1012, 11000.00, 550267.67, '2024-05-28 14:00:00', 'ATM Withdrawal'),
(3081, 1012, 6500.00,  543767.67, '2024-06-15 11:30:00', 'Bill Payment'),
(3082, 1012, 9200.00,  534567.67, '2024-07-03 16:00:00', 'UPI Payment'),
(3083, 1013, 38000.00, 278761.32, '2025-01-14 08:45:00', 'Salary Credit'),
(3084, 1013, 9500.00,  269261.32, '2025-02-07 13:30:00', 'Rent Payment'),
(3085, 1013, 3800.00,  265461.32, '2025-02-24 10:15:00', 'Grocery'),
(3086, 1013, 7200.00,  258261.32, '2025-03-19 15:00:00', 'Bill Payment'),
(3087, 1013, 5100.00,  253161.32, '2025-04-30 11:45:00', 'Online Transfer'),
 (3088, 1014, 52000.00, 286498.24, '2025-01-11 09:00:00', 'Salary Credit'),
(3089, 1014, 17000.00, 269498.24, '2025-01-29 14:15:00', 'ATM Withdrawal'),
(3090, 1014, 5800.00,  263698.24, '2025-02-13 11:30:00', 'Shopping Purchase'),
(3091, 1014, 160000.00,423698.24, '2025-03-06 08:45:00', 'Large Transfer'), 
(3092, 1014, 12500.00, 411198.24, '2025-04-16 15:00:00', 'Loan EMI'),
(3093, 1014, 7800.00,  403398.24, '2025-05-22 10:30:00', 'Bill Payment'),
 (3094, 1015, 43000.00, 193799.71, '2025-01-16 08:30:00', 'Salary Credit'),
(3095, 1015, 10500.00, 183299.71, '2025-02-04 13:45:00', 'Rent Payment'),
(3096, 1015, 4000.00,  179299.71, '2025-02-21 10:00:00', 'Grocery'),
(3097, 1015, 8300.00,  170999.71, '2025-03-17 15:30:00', 'Bill Payment'),
(3098, 1015, 5700.00,  165299.71, '2025-04-29 11:15:00', 'UPI Payment'),
(3099, 1015, 6900.00,  158399.71, '2025-05-25 14:00:00', 'Online Transfer');

SELECT * FROM Transactions;


INSERT INTO Cards VALUES(4001, 1001, 'Debit Card', 12345678, '2028-06-30', 50000.00);
INSERT INTO Cards VALUES(4002, 1002, 'Credit Card', 23456789, '2029-11-30', 150000.00);
INSERT INTO Cards VALUES(4003, 1003, 'Platinum Credit Card', 34567890, '2030-04-30', 300000.00);
INSERT INTO Cards VALUES(4004, 1004, 'Debit Card', 45678901, '2027-12-31', 40000.00);
INSERT INTO Cards VALUES(4005, 1005, 'Credit Card', 56789012, '2028-08-31', 120000.00);
INSERT INTO Cards VALUES(4006, 1006, 'Business Credit Card', 67890123, '2026-09-30', 250000.00);
INSERT INTO Cards VALUES(4007, 1007, 'Debit Card', 78901234, '2029-03-31', 60000.00);
INSERT INTO Cards VALUES(4008, 1008, 'Business Credit Card', 89012345, '2031-01-31', 450000.00);
INSERT INTO Cards VALUES(4009, 1009, 'Credit Card', 90123456, '2028-10-31', 100000.00);
INSERT INTO Cards VALUES(4010, 1010, 'Debit Card', 11223344, '2029-05-31', 55000.00);
INSERT INTO Cards VALUES(4011, 1011, 'Platinum Credit Card', 22334455, '2027-07-31', 350000.00);
INSERT INTO Cards VALUES(4012, 1012, 'Credit Card', 33445566, '2030-02-28', 200000.00);
INSERT INTO Cards VALUES(4013, 1013, 'Student Debit Card', 44556677, '2031-11-30', 20000.00);
INSERT INTO Cards VALUES(4014, 1014, 'Student Debit Card', 55667788, '2030-06-30', 15000.00);
INSERT INTO Cards VALUES(4015, 1015, 'Business Credit Card', 66778899, '2028-09-30', 500000.00);

SELECT * FROM Cards;


INSERT INTO EMI_Payments VALUES(5001, 2001, '2025-06-01', '2025-06-03', 39576.82, 'Closed');
INSERT INTO EMI_Payments VALUES(5002, 2002, '2026-03-01', '2026-03-15', 9570.67, 'Defaulted');
INSERT INTO EMI_Payments VALUES(5003, 2003, '2026-04-01', '2026-04-20', 7127.32, 'Defaulted');
INSERT INTO EMI_Payments VALUES(5004, 2004, '2025-07-01', '2025-07-02', 519.83, 'Active');
INSERT INTO EMI_Payments VALUES(5005, 2005, '2025-08-01', '2025-08-18', 68608.47, 'Defaulted');
INSERT INTO EMI_Payments VALUES(5006, 2006, '2025-05-01', '2025-05-04', 15292.21, 'Closed');
INSERT INTO EMI_Payments VALUES(5007, 2007, '2025-09-01', '2025-09-22', 24152.16, 'Defaulted');
INSERT INTO EMI_Payments VALUES(5008, 2008, '2025-10-01', '2025-10-02', 18849.38, 'Active');
INSERT INTO EMI_Payments VALUES(5009, 2009, '2025-11-01', '2025-11-05', 39158.25, 'Active');
INSERT INTO EMI_Payments VALUES(5010, 2010, '2025-12-01', '2025-12-03', 5775.48, 'Closed');
INSERT INTO EMI_Payments VALUES(5011, 2011, '2025-06-01', '2025-06-01', 143150.92, 'Closed');
INSERT INTO EMI_Payments VALUES(5012, 2012, '2026-01-01', '2026-01-25', 28336.71, 'Defaulted');
INSERT INTO EMI_Payments VALUES(5013, 2013, '2026-02-01', '2026-02-03', 8915.84, 'Closed');
INSERT INTO EMI_Payments VALUES(5014, 2014, '2026-03-01', '2026-03-28', 15759.20, 'Defaulted');
INSERT INTO EMI_Payments VALUES(5015, 2015, '2025-09-01', '2025-09-04', 19991.67, 'Active');
INSERT INTO EMI_Payments VALUES
(5016, 2001, '2025-07-01', '2025-07-02', 39576.82, 'Closed'),
(5017, 2001, '2025-08-01', '2025-08-04', 39576.82, 'Closed'),
(5018, 2002, '2026-04-01', '2026-04-19', 9570.67, 'Defaulted'),
(5019, 2002, '2026-05-01', '2026-05-20', 9570.67, 'Defaulted'),
(5020, 2003, '2026-05-01', '2026-05-22', 7127.32, 'Defaulted'),
(5021, 2004, '2025-08-01', '2025-08-03', 519.83, 'Active'),
(5022, 2004, '2025-09-01', '2025-09-04', 519.83, 'Active'),
(5023, 2005, '2025-09-01', '2025-09-25', 68608.47, 'Defaulted'),
(5024, 2006, '2025-06-01', '2025-06-02', 15292.21, 'Closed'),
(5025, 2006, '2025-07-01', '2025-07-03', 15292.21, 'Closed'),
(5026, 2007, '2025-10-01', '2025-10-24', 24152.16, 'Defaulted'),
(5027, 2008, '2025-11-01', '2025-11-03', 18849.38, 'Active'),
(5028, 2008, '2025-12-01', '2025-12-02', 18849.38, 'Active'),
(5029, 2009, '2025-12-01', '2025-12-05', 39158.25, 'Active'),
(5030, 2010, '2026-01-01', '2026-01-03', 5775.48, 'Closed'),
(5031, 2011, '2025-07-01', '2025-07-01', 143150.92, 'Closed'),
(5032, 2012, '2026-02-01', '2026-02-26', 28336.71, 'Defaulted'),
(5033, 2013, '2026-03-01', '2026-03-04', 8915.84, 'Closed'),
(5034, 2014, '2026-04-01', '2026-04-29', 15759.20, 'Defaulted'),
(5035, 2015, '2025-10-01', '2025-10-05', 19991.67, 'Active');

SELECT * FROM EMI_Payments ORDER BY loan_id;


INSERT INTO Fraud_Alerts VALUES(6001, 1001, 3001, 'Unusual ATM Withdrawal', '2025-05-30 10:45:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6002, 1002, 3002, 'Large Cash Deposit', '2026-02-23 23:15:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6003, 1003, 3003, 'Suspicious Online Purchase', '2025-04-01 12:30:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6004, 1004, 3004, 'Repeated Failed Payments', '2025-12-12 22:40:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6005, 1005, 3005, 'High Value Transaction', '2026-02-04 06:20:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6006, 1006, 3006, 'Multiple UPI Requests', '2024-10-18 08:25:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6007, 1007, 3007, 'Foreign Location Access', '2025-06-09 14:20:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6008, 1008, 3008, 'Abnormal Deposit Pattern', '2024-09-19 22:15:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6009, 1009, 3009, 'Loan EMI Mismatch', '2025-06-14 23:10:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6010, 1010, 3010, 'Frequent Small Transfers', '2025-01-04 14:00:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6011, 1011, 3011, 'Unusual Bill Payment', '2026-04-27 09:05:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6012, 1012, 3012, 'ATM Withdrawal Spike', '2025-03-04 16:10:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6013, 1013, 3013, 'Delayed EMI Payment', '2024-12-17 01:50:00', TRUE);
INSERT INTO Fraud_Alerts VALUES(6014, 1014, 3014, 'Repeated Card Swipes', '2026-02-13 23:40:00', FALSE);
INSERT INTO Fraud_Alerts VALUES(6015, 1015, 3015, 'International Transfer Alert', '2024-08-31 11:20:00', TRUE);

INSERT INTO Fraud_Alerts VALUES
(6001, 1001, 3019, 'Large Transfer', '2025-03-01 10:05:00', FALSE),
(6002, 1002, 3026, 'Large Deposit', '2025-04-02 08:05:00', FALSE),
(6003, 1004, 3036, 'Large Transfer', '2025-03-03 08:35:00', FALSE),
(6004, 1006, 3048, 'Large Deposit', '2025-03-01 09:05:00', FALSE),
(6005, 1009, 3063, 'Large Transfer', '2025-03-05 09:05:00', FALSE),
(6006, 1011, 3075, 'Large Deposit', '2025-03-08 09:20:00', FALSE),
(6007, 1014, 3091, 'Large Transfer', '2025-03-06 08:50:00', FALSE),
(6008, 1002, 3002, 'High Cash Deposit', '2026-02-23 23:05:00', FALSE),
(6009, 1005, 3005, 'Unusual Shopping Activity', '2026-02-04 06:15:00', FALSE),
(6010, 1008, 3008, 'Late Night Interest Credit', '2024-09-19 22:10:00', TRUE),
(6011, 1009, 3009, 'Late Night Loan EMI', '2025-06-14 23:05:00', FALSE),
(6012, 1014, 3014, 'High Bill Payment at Night', '2026-02-13 23:35:00', FALSE);

SELECT * FROM Fraud_Alerts ORDER BY account_id;


