# 🏦 RetailBank — Data Warehouse & BI Dashboard

> An end-to-end Banking Data Warehouse and Business Intelligence project built with SQL Server and Power BI.

---

## 📌 Project Overview

RetailBank is an end-to-end Data Analytics project that transforms raw banking data into a structured Data Warehouse and an interactive Power BI dashboard.

The project follows the complete analytics workflow:

**Raw Data → Bronze → Silver → Gold → Power BI**

The main goal was to clean, transform, model, and analyze banking data to generate meaningful business insights.

---

## 🏗️ Data Architecture

The project follows a **Medallion Architecture**:

### 🥉 Bronze Layer
- Raw customer data
- Raw merchant data
- Raw transaction data
- Source-level data preservation

### 🥈 Silver Layer
- Handling missing values
- Data type validation
- Text cleaning and standardization
- Date validation
- Data preparation for analytics

### 🥇 Gold Layer

The Gold layer contains the final analytical Data Warehouse using a **Star Schema**.

Main tables:

- `DimCustomer`
- `DimMerchant`
- `DimDate`
- `FactTransaction`

---

## ⭐ Star Schema

The Gold layer follows a Star Schema design.

```text
                 DimCustomer
                      |
                      |
DimDate -------- FactTransaction -------- DimMerchant
****


##🗄️ SQL Server Data Warehouse

The Data Warehouse was developed using SQL Server and T-SQL.

Dimension Tables

DimCustomer

Customer information
Demographics
Location
Loyalty tier
Date of birth

DimMerchant

Merchant information
Merchant category
Merchant location
Activity status

DimDate

Date
Year
Quarter
Month
Month Name
Day
Day Name
Weekend indicator
Fact Table

FactTransaction contains:

Transaction ID
Customer ID
Merchant ID
Transaction Amount
Discount Amount
Tax Amount
Net Amount
Transaction Date
Payment Method
Channel
Entry Mode
Device Type
Transaction Status
Fraud Indicator

##🛠️ Tools & Technologies
SQL Server
T-SQL
Power BI
Power Query
DAX
Data Modeling
Star Schema
Medallion Architecture
📊 Power BI Dashboard

The final dashboard contains four analytical pages.

1️⃣ Overview

Provides a high-level overview of the banking operation.

Key Analysis
Total Customers
Total Merchants
Total Transactions
Transaction Amount
Net Transaction Amount
Discount Rate
Top Merchants
Top Cities
Transactions by Payment Method
Transactions by Month
Customer Gender Distribution
🖼️ Dashboard Preview

Overview Dashboard

<img width="952" height="553" alt="Overview" src="https://github.com/user-attachments/assets/703a73fa-3ed4-4b42-9e47-bd83df919ad6" />


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
🖼️ Dashboard Preview

Transactions Dashboard

<img width="951" height="549" alt="Transactions" src="https://github.com/user-attachments/assets/bbcc1feb-76b1-4bd6-b4e8-339f77e46d2a" />


3️⃣ Customers

Provides customer-level analysis.

Key Analysis
Total Customers
Total Transactions
Average Transactions per Customer
Customer Age Distribution
Customer Gender Distribution
Customers by City
Customers by Loyalty Tier
Top Customers by Transaction Amount
🖼️ Dashboard Preview

Customers Dashboard

<img width="955" height="555" alt="Customers" src="https://github.com/user-attachments/assets/e6af4677-2eea-490f-827e-4b7319b4bb20" />


4️⃣ Merchants

Provides merchant performance analysis.

Key Analysis
Total Merchants
Active Merchants
Active Merchant Rate
Average Transactions per Merchant
Top Categories by Transaction Amount
Top Merchants by Tax
Top Merchants by Discount Value
Top Cities by Transaction Amount
🖼️ Dashboard Preview

Merchants Dashboard

<img width="954" height="551" alt="Merchants" src="https://github.com/user-attachments/assets/adc878b3-f60c-48a5-a491-72ce3557dc0b" />


##📈 Key Insights

The dashboard provides visibility into:

Highest-value merchants and cities
Transaction trends over time
Customer demographics and loyalty
Payment method usage
Merchant activity and performance
Discount and tax patterns
Fraud distribution
Transaction behavior across entry modes and devices

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

---
##🎯 Project Objective

This project demonstrates an end-to-end analytics workflow:

Data Engineering → Data Cleaning → Data Modeling → DAX → Business Intelligence

The project transforms raw banking data into a structured Data Warehouse and an interactive Power BI solution for business analysis.

##👨‍💻 Author

Mohamed Nashaat

Data Analyst | SQL | Power BI | Excel | Python

##🔗 LinkedIn:
https://www.linkedin.com/in/mohamed-nashaat-47b685321/

⭐ Feel free to explore the repository and the dashboard.
