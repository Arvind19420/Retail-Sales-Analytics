# Retail Sales Analytics Dashboard
### Python · PostgreSQL · Power BI

An end-to-end analytics project built on a real-world retail dataset of 500,000+ transactions.
Raw data → Cleaned → Analyzed → Visualized.

---

## Dataset
[Online Retail II](https://www.kaggle.com/datasets/mashlyn/online-retail-ii-uci) — 541,910 transactions across 8 columns.  
Source: Kaggle

---

## Tools
- **Python (Pandas)** — data cleaning and feature engineering
- **PostgreSQL** — business analysis and aggregations
- **Power BI** — interactive dashboard (4 pages)

---

## Project Workflow

### 1. Data Cleaning (Pandas)
- Loaded 541,910 rows of raw transaction data
- Found 135,000+ missing Customer IDs
- Removed negative quantities (returns/cancellations)
- Converted date fields to datetime format

### 2. Feature Engineering
Columns that didn't exist in the raw data, created manually:
- `Revenue = Quantity × Price`
- `Cost = Revenue × 70%`
- `Profit = Revenue − Cost`
- `Month` extracted from Invoice Date

### 3. SQL Analysis (PostgreSQL)
- Revenue by Country
- Monthly Revenue Trends
- Top Products by Revenue and Profit
- Customer Performance Analysis

### 4. Power BI Dashboard
4 pages built from the cleaned CSV:
- **Executive Summary** — KPIs, revenue by country, monthly trend
- **Product Analysis** — top 10 products by revenue, profit and quantity
- **Customer Analysis** — top 10 customers by revenue and profit
- **Geographic Analysis** — country level revenue and profit breakdown

---

## Key Insights
- 🇬🇧 UK accounted for **85%+ of total revenue** at 8.99M
- 📈 Revenue peaked in **November at 1.5M** — clear Q4 seasonality
- 🛒 **DOTCOM POSTAGE** was the #1 product by both revenue and profit
- 👤 **1.74M in revenue** came from unidentified customers — data quality flag

---

## Dashboard Preview
![Executive Summary](screenshots/executive_summary.png)
![Product Analysis](screenshots/product_analysis.png)
![Customer Analysis](screenshots/customer_analysis.png)
![Geographic Analysis](screenshots/geographic_analysis.png)

## Code Snippets
![Feature Engineering](screenshots/feature_engineering.png)
![SQL Monthly Trend](screenshots/sql_monthly_trend.png)

---

## Repository Structure
```
Retail-Sales-Analytics/
├── data_understanding.ipynb
├── queries.sql
├── cleaned_retail_data.csv
├── Retail_Sales_Dashboard.pbix
├── screenshots/
│   ├── executive_summary.png
│   ├── product_analysis.png
│   ├── customer_analysis.png
│   └── geographic_analysis.png
│   ├── feature_engineering.png
│   └── sql_monthly_trend.png
└── README.md
```