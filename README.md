# 🏦 Bank Transactions System Using SQL 

## 📋 Problem Statement
A mid-sized Indian bank needs to monitor suspicious transactions, 
identify dormant accounts, track loan default risks, and manage 
account operations across its branch network.

This project designs and implements a complete banking database 
system that enables the risk and analytics team to monitor 
transactions, flag fraud, track EMI defaults, and generate 
branch-wise performance reports.

---

## 🗄️ Database Schema
9 tables designed in 3NF:

| Table | Description |
|-------|-------------|
| Customer | Customer personal details |
| Accounts | Bank accounts linked to customers |
| Transactions | All transactions |
| Loans | Loan details per customer |
| EMI_Payments | EMI payment tracking per loan |
| Cards | Cards per account |
| Branches | Bank branch details |
| Employees | Employee details per branch |
| Fraud_Alerts | Flagged suspicious transactions |

---

## 📊 Business Questions Answered

### 🟢 Basic Queries
- List all customers with account details and balance
- Find accounts with balance above ₹1,00,000
- List all active loans with customer details
- Find all defaulted EMI payments and days overdue
- Find cards expiring within next 6 months
- Find customers with loan but no credit card

### 🟡 Intermediate Queries
- Total credits vs debits per account using CASE WHEN
- Customers with more than 2 active loans
- Top 5 customers by total transaction value
- Dormant accounts with no transactions in 90 days
- Monthly transaction totals using date functions
- Mask card numbers showing only last 4 digits

### 🔴 Advanced Queries
- Running balance per account using SUM() OVER()
- Rank customers by transaction value using DENSE_RANK()
- Compare each transaction to previous using LAG()
- Month-over-month transaction growth using CTEs
- Detect suspicious transactions (amount > 3x average)
- EMI default rate per loan type

---

## 🔍 Key Findings
- 📊 3 accounts flagged as potentially fraudulent
- 📊 2 dormant accounts with no activity since mid-2024
- 📊 Gold loans have highest EMI default rate
- 📊 Transaction volume peaked in March 2025
  
 ---

## 🛠️ Tools Used
MySQL | Python | Pandas | Matplotlib | Seaborn | Jupyter Notebook 

---

## ⚙️ Advanced SQL Features
- **Views** — 5 reusable views for operations, fraud and loan teams
- **Stored Procedures** — ACID-compliant money transfer procedure
- **Triggers** — Auto-flag suspicious transactions on insert
- **ACID Transactions** — Atomic money transfer with rollback on failure

---

## 🐍 Python Integration
**Libraries used:** mysql-connector-python · SQLAlchemy · Pandas · Matplotlib · Seaborn

Connected MySQL to Python for fraud-focused visualizations:
- Top 5 customers by transaction value
- Monthly transaction trend
- Loan type distribution
- Flagged vs normal transactions per account
- EMI default rate by loan type
- Credit vs debit per account

---

---

## ▶️ How to Run

### 🗄️ SQL Setup
1. Install MySQL and MySQL Workbench
2. Open MySQL Workbench and create a database called `Bank`
3. Run `01_Schema/create_tables.sql` to create all 9 tables
4. Run `02_Data/insert_data.sql` to populate sample data
5. Run any query file from `03_Queries/` folder
6. Run files from `04_Advanced/` for views, procedures and triggers

### 🐍 Python Setup
1. Install Python and Jupyter Notebook
2. Install required libraries:
```bash
pip install mysql-connector-python sqlalchemy pandas matplotlib seaborn
```
3. Open `05_Python_files/Analysis.ipynb` in Jupyter Notebook
4. Update the connection string with your MySQL credentials:
```python
engine = create_engine('mysql+mysqlconnector://root:yourpassword@localhost/bank')
```
5. Run all cells to generate visualizations

### 🔗 Clone this repository
```bash
git clone https://github.com/Rupsa2112/bank-transactions-sql.git
```

---

## 📁 Project Structure

```
bank-transactions-sql/
│
├── 01_Schema/
│   └── create_tables.sql        → Creates all 9 tables
│
├── 02_Data/
│   └── insert_data.sql          → Sample data for all tables
│
├── 03_Queries/
│   ├── basic_queries.sql        → 13 basic queries
│   ├── intermediate_queries.sql → 10 intermediate queries
│   └── advanced_queries.sql     → 8 window function + CTE queries
│
├── 04_Advanced/
│   ├── views.sql                → 5 reusable views
│   ├── procedures.sql           → ACID money transfer procedure
│   └── triggers.sql             → Auto fraud flagging trigger
│
├── 05_Python_files/
│   ├── Analysis.ipynb           → MySQL + Python visualizations
│   ├── Data_Generation.ipynb    → Faker data generation
│   └── Plots/                   → 6 saved chart images
│
└── README.md
```
