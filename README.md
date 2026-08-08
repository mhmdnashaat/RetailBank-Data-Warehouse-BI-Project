# 🏦 RetailBank — Data Warehouse & BI Dashboard

> An end-to-end Banking Data Warehouse and Business Intelligence project built with SQL Server and Power BI.

---

## 📌 Project Overview

RetailBank is an end-to-end Data Analytics project that transforms raw banking data into a structured Data Warehouse and an interactive Power BI dashboard.

The project covers the complete data journey:

**Raw Data → Bronze → Silver → Gold → Power BI**

The main objective was to clean, transform, model, and analyze banking data to generate meaningful business insights across customers, merchants, and transactions.

---

## 🏗️ Data Architecture

The project follows a **Medallion Architecture**:

### 🥉 Bronze Layer

The Bronze layer preserves the original source data with minimal transformation.

- Raw customer data
- Raw merchant data
- Raw transaction data
- Source-level data preservation

### 🥈 Silver Layer

The Silver layer focuses on data cleaning, validation, and transformation.

Key activities included:

- Handling missing values
- Data type validation
- Data quality checks
- Cleaning and standardizing text fields
- Date validation and transformation
- Preparing clean datasets for analytics

### 🥇 Gold Layer

The Gold layer contains the final analytical Data Warehouse model.

The model consists of:

- `DimCustomer`
- `DimMerchant`
- `DimDate`
- `FactTransaction`

The fact table is connected to the dimension tables using foreign keys, forming a structured **Star Schema**.

---

## 🗄️ SQL Data Warehouse

The Data Warehouse was developed using **SQL Server and T-SQL**.

### 👥 DimCustomer

Contains customer-related information:

- Customer ID
- Demographics
- Location
- Gender
- Job
- Loyalty Tier
- Date of Birth

### 🏪 DimMerchant

Contains merchant-related information:

- Merchant ID
- Merchant Name
- Category
- City
- State
- Merchant Activity Status
- Merchant Date Information

### 📅 DimDate

A dedicated Date Dimension containing:

- Date Key
- Full Date
- Year
- Quarter
- Month
- Month Name
- Day
- Day Name
- Weekend Indicator

### 💳 FactTransaction

Contains transaction-level information including:

- Transaction ID
- Customer ID
- Merchant ID
- Transaction Amount
- Discount Amount
- Tax Amount
- Net Amount
- Transaction Date
- Payment Method
- Channel
- Entry Mode
- Device Type
- Transaction Status
- Fraud Indicator

---

## 🔗 Data Modeling

The Gold layer follows a **Star Schema** design:

```text
                 DimCustomer
                      |
                      |
DimDate -------- FactTransaction -------- DimMerchant


SQL Server
T-SQL
Power BI
Power Query
DAX
Data Modeling
Star Schema
Medallion Architecture
📊 Power BI Dashboard

The final Power BI solution contains four analytical pages.

1️⃣ Overview

Provides a high-level view of the banking operation.

Key KPIs
Total Customers
Total Merchants
Total Transactions
Total Transaction Amount
Net Transaction Amount
Discount Rate
Key Analysis
Top Merchants by Transaction Amount
Top Cities by Transaction Amount
Transactions by Payment Method
Transactions by Month
Customer Gender Distribution
🖼️ Overview Dashboard

(<img width="952" height="553" alt="Overview" src="https://github.com/user-attachments/assets/d1c3ad76-884c-4dc9-b035-88c3b467a9e7" />)

2️⃣ Transactions

Focuses on transaction performance and behavior.

Key Analysis
Transaction Amount Trend
Total Transactions
Net Amount
Total Discount
Total Tax
Fraud Analysis
Fraud by Category
Transactions by Entry Mode
Transactions by Device Type

🖼️ Transactions Dashboard

<img width="951" height="549" alt="Transactions" src="https://github.com/user-attachments/assets/4cfe78af-d404-4aa1-8055-6ad579612dde" />

3️⃣ Customers

Provides customer-level analysis.

Key KPIs
Total Customers
Total Transactions
Average Transactions per Customer
Key Analysis
Customer Age Distribution
Customer Gender Distribution
Customers by City
Customers by Loyalty Tier
Top Customers by Transaction Amount
🖼️ Customers Dashboard

<img width="955" height="555" alt="Customers" src="https://github.com/user-attachments/assets/75f82b82-2e9a-4f2a-8587-0219888100f8" />

4️⃣ Merchants

Provides merchant performance analysis.

Key KPIs
Total Merchants
Active Merchants
Active Merchant Rate
Average Transactions per Merchant
Key Analysis
Top Categories by Transaction Amount
Top Merchants by Tax
Top Merchants by Discount Value
Top Cities by Transaction Amount
🖼️ Merchants Dashboard

<img width="954" height="551" alt="Merchants" src="https://github.com/user-attachments/assets/a6d47b73-24c2-4edb-83e5-550d96b378bb" />

📈 Key Insights

The dashboard provides insights into:

Highest-value merchants and cities
Transaction trends over time
Customer demographics and loyalty distribution
Payment method usage
Merchant activity and performance
Discount and tax patterns
Fraud distribution
Transaction behavior across devices and entry modes

📂 Project Structure

RetailBank-Data-Warehouse-BI-Project
│
├── Dashboard Screenshots
│   ├── Overview
│   ├── Transactions
│   ├── Customers
│   └── Merchants
│
├── RetailBankDWH_SQL
│   ├── Bronze Layer
│   ├── Silver Layer
│   └── Gold Layer
│
├── RetailBankDWH_power BI
│   └── Power BI Dashboard
│
└── README.md


🎯 Project Objective

This project demonstrates a complete analytics workflow, starting from raw banking data and ending with an interactive Business Intelligence solution.

It combines:

Data Engineering + Data Cleaning + Data Modeling + DAX + Business Intelligence

to transform raw transactional data into meaningful business insights.

👨‍💻 Author

Mohamed Nashaat

Data Analyst | SQL | Power BI | Excel | Python

🔗 LinkedIn

⭐ If you find this project useful, feel free to explore the repository.
