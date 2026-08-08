🏦 RetailBank — Data Warehouse & BI Dashboard

An end-to-end Banking Data Warehouse and Business Intelligence project built with SQL Server and Power BI.

📌 Project Overview

RetailBank is an end-to-end Data Analytics project that transforms raw banking data into a structured Data Warehouse and an interactive Power BI dashboard.

The project follows the complete analytics workflow:

Raw Data → Bronze → Silver → Gold → Power BI

The main goal was to clean, transform, model, and analyze banking data to generate meaningful business insights.

🏗️ Data Architecture

The project follows a Medallion Architecture:

🥉 Bronze Layer
Raw customer data
Raw merchant data
Raw transaction data
Source-level data preservation
🥈 Silver Layer
Handling missing values
Data type validation
Text cleaning and standardization
Date validation
Data preparation for analytics
🥇 Gold Layer

The Gold layer contains the final analytical Data Warehouse using a Star Schema.

Main tables:

DimCustomer
DimMerchant
DimDate
FactTransaction

⭐ Star Schema

The Gold layer follows a Star Schema design.
DimCustomer
                      |
                      |
DimDate -------- FactTransaction -------- DimMerchant
This structure allows efficient analytical queries and simplifies the Power BI data model.
🛠️ Tools & Technologies
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


Show Image

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




📈 Key Insights

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

🎯 Project Objective

This project demonstrates an end-to-end analytics workflow:

Data Engineering → Data Cleaning → Data Modeling → DAX → Business Intelligence
👨‍💻 Author

Mohamed Nashaat

Data Analyst | SQL | Power BI | Excel | Python
🔗 LinkedIn
⭐ Feel free to explore the repository and the dashboard.
The project transforms raw banking data into a structured Data Warehouse and an interactive Power BI solution for business analysis.
