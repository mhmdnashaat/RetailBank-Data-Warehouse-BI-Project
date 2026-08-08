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

### ⭐ Star Schema

```text
                 DimCustomer
                      |
                      |
DimDate -------- FactTransaction -------- DimMerchant

This structure provides a clean and efficient model for analytical reporting and Power BI.
