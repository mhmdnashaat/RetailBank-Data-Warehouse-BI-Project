# 🏦 RetailBank — Data Warehouse & BI Dashboard

> An end-to-end Banking Data Warehouse and Business Intelligence project built using SQL Server and Power BI.

---

## 📌 Project Overview

RetailBank is an end-to-end Data Analytics project that transforms raw banking data into a structured Data Warehouse and an interactive Power BI dashboard.

The project covers the complete data journey:

**Raw Data → Bronze Layer → Silver Layer → Gold Layer → Power BI**

The main objective was to clean, transform, model, and analyze banking transactions, customers, and merchants to generate meaningful business insights.

---

## 🏗️ Data Architecture

The project follows a **Medallion Architecture**:

### 🥉 Bronze Layer
The Bronze layer stores the raw source data with minimal transformation.

- Raw customer data
- Raw merchant data
- Raw transaction data
- Source-level data preservation

### 🥈 Silver Layer
The Silver layer focuses on data cleaning and transformation.

Key activities included:

- Handling missing values
- Data type validation
- Cleaning text fields
- Standardizing data
- Converting and validating dates
- Preparing clean datasets for analytics

### 🥇 Gold Layer
The Gold layer contains the analytical Data Warehouse model.

The final model includes:

- `DimCustomer`
- `DimMerchant`
- `DimDate`
- `FactTransaction`

The fact table is connected to the dimension tables using foreign keys to create a structured **Star Schema**.

---

## 🗄️ SQL Data Warehouse

The Data Warehouse was developed using **SQL Server**.

### Dimension Tables

**DimCustomer**
- Customer information
- Demographics
- Location
- Loyalty information
- Date of birth

**DimMerchant**
- Merchant information
- Merchant category
- Merchant location
- Merchant activity status

**DimDate**
- Date
- Year
- Quarter
- Month
- Month Name
- Day
- Day Name
- Weekend indicator

### Fact Table

**FactTransaction**

Contains transactional information including:

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

The Gold layer follows a Star Schema design:

```text
                 DimCustomer
                      |
                      |
DimDate -------- FactTransaction -------- DimMerchant

This structure allows efficient analytical queries and simplifies the Power BI data model.

SQL Server
T-SQL
Power BI
Power Query
DAX
Data Modeling
Star Schema
Medallion Architecture
📊 Power BI Dashboard

The final Power BI dashboard contains four analytical pages:

1️⃣ Overview

Provides a high-level view of the banking operation.

Key metrics and visuals include:

Total Customers
Total Merchants
Total Transactions
Total Transaction Amount
Net Transaction Amount
Discount Rate
Top Merchants
Top Cities
Transactions by Payment Method
Transactions by Month
Customer Gender Distribution
2️⃣ Transactions

Focuses on transaction-level analysis.

Key insights include:

Transaction Amount Trend
Total Transactions
Net Amount
Total Discount
Total Tax
Fraud Analysis
Fraud by Category
Transactions by Entry Mode
Transactions by Device Type
3️⃣ Customers

Provides customer-level analysis.

Key visuals include:

Total Customers
Total Transactions
Average Transactions per Customer
Customer Age Distribution
Customer Gender Distribution
Customers by City
Customers by Loyalty Tier
Top Customers by Transaction Amount
4️⃣ Merchants

Provides merchant performance analysis.

Key visuals include:

Total Merchants
Active Merchants
Active Merchant Rate
Average Transactions per Merchant
Top Categories by Transaction Amount
Top Merchants by Tax
Top Merchants by Discount Value
Top Cities by Transaction Amount
📈 Key Insights

The dashboard helps identify:

The highest-value merchants and cities.
Transaction trends over time.
Customer distribution by age, gender, and loyalty tier.
The most frequently used payment methods.
Merchant activity and performance.
Discount and tax patterns across merchants.
Fraud distribution across transactions and categories.
Transaction behavior across different entry modes and devices.

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


🖼️ Dashboard Preview
Overview

View Overview Dashboard

Transactions

View Transactions Dashboard

Customers

View Customers Dashboard

Merchants

View Merchants Dashboard

🎯 Project Objective

The project demonstrates an end-to-end analytics workflow starting from raw banking data and ending with an interactive Business Intelligence solution.

It combines:

Data Engineering + Data Cleaning + Data Modeling + DAX + Business Intelligence

to transform raw transactional data into meaningful and actionable insights.

👨‍💻 Author

Mohamed Nashaat
Data Analyst | SQL | Power BI | Excel | Python
LINKED IN Link := https://www.linkedin.com/in/mohamed-nashaat-47b685321/?locale=en
⭐ If you find this project useful, feel free to explore the repository and dashboard.
