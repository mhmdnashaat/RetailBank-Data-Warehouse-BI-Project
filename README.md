# 🏦 RetailBank — Data Warehouse & BI Dashboard

> An end-to-end Banking Data Warehouse and Business Intelligence project built with **SQL Server** and **Power BI**.

---

## 📌 Project Overview

RetailBank is an end-to-end Data Analytics project that transforms raw banking data into a structured **Data Warehouse** and an interactive **Power BI Dashboard**.

The project follows the complete analytics workflow:

**Raw Data → Bronze → Silver → Gold → Power BI**

The main goal was to clean, transform, model, and analyze banking data to generate meaningful business insights.

---

## 🏗️ Data Architecture

The project follows a **Medallion Architecture** consisting of three layers:

### 🥉 Bronze Layer

The Bronze layer preserves the original source data with minimal transformation.

- Raw customer data
- Raw merchant data
- Raw transaction data
- Source-level data preservation

### 🥈 Silver Layer

The Silver layer focuses on cleaning and preparing the data for analysis.

- Handling missing values
- Data type validation
- Text cleaning and standardization
- Date validation
- Data preparation for analytics

### 🥇 Gold Layer

The Gold layer contains the final analytical **Data Warehouse** using a **Star Schema**.

### Main Tables

- `DimCustomer`
- `DimMerchant`
- `DimDate`
- `FactTransaction`

### ⭐ Star Schema
                    DimCustomer
DimDate -------- FactTransaction -------- DimMerchant

This structure simplifies the Power BI data model and supports efficient analytical queries.

Tools & Technologies
SQL Server, T-SQL, Power BI, Power Query, DAX, Data Modeling, Star Schema, Medallion Architecture

Power BI Dashboard
The final dashboard contains four analytical pages.

1. Overview
Provides a high-level overview of the banking operation.

Key Analysis: Total Customers, Total Merchants, Total Transactions, Transaction Amount, Net Transaction Amount, Discount Rate, Top Merchants, Top Cities, Transactions by Payment Method, Transactions by Month, Customer Gender Distribution

<img width="952" height="553" alt="Overview" src="https://github.com/user-attachments/assets/6a5d1479-bf38-4452-b68f-8fa8c1e9b4d1" />

2. Transactions
Focuses on transaction performance and behavior.

Key Analysis: Transaction Amount Trend, Total Transactions, Net Amount, Total Discount, Total Tax, Fraud Analysis, Fraud by Category, Transactions by Entry Mode, Transactions by Device Type

<img width="951" height="549" alt="Transactions" src="https://github.com/user-attachments/assets/06b61298-3f84-4e99-89c6-27c58ed6db15" />

3. Customers
Provides customer-level analysis.

Key Analysis: Total Customers, Total Transactions, Average Transactions per Customer, Customer Age Distribution, Customer Gender Distribution, Customers by City, Customers by Loyalty Tier, Top Customers by Transaction Amount
<img width="955" height="555" alt="Customers" src="https://github.com/user-attachments/assets/b8686bbf-8a24-44c9-bd0f-e301833ac01e" />


4. Merchants
Provides merchant performance analysis.

Key Analysis: Total Merchants, Active Merchants, Active Merchant Rate, Average Transactions per Merchant, Top Categories by Transaction Amount, Top Merchants by Tax, Top Merchants by Discount Value, Top Cities by Transaction Amount

<img width="954" height="551" alt="Merchants" src="https://github.com/user-attachments/assets/0599b8af-4f76-458d-9835-2abc3cc6c78e" />


##Key Insights
The dashboard provides visibility into:

Highest-value merchants and cities
Transaction trends over time
Customer demographics and loyalty
Payment method usage
Merchant activity and performance
Discount and tax patterns
Fraud distribution
Transaction behavior across entry modes and devices
Project Structure
RetailBank-Data-Warehouse-BI-Project

Dashboard Screenshots (Overview, Transactions, Customers, Merchants)
RetailBankDWH_SQL (Bronze Layer, Silver Layer, Gold Layer)
RetailBankDWH_power BI (Power BI Dashboard)
README.md
Project Objective
This project demonstrates an end-to-end analytics workflow:

Data Engineering → Data Cleaning → Data Modeling → DAX → Business Intelligence

The project transforms raw banking data into a structured Data Warehouse and an interactive Power BI solution for business analysis.

Author
Mohamed Nashaat Data Analyst | SQL | Power BI | Excel | Python

LinkedIn: https://www.linkedin.com/in/mohamed-nashaat-47b685321/

Feel free to explore the repository and the dashboard.


