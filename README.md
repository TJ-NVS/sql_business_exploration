# sql_business_exploration
Business case study

# Eniac Expansion to Brazil – Data Analytics Case Study

## Project Overview

This project was completed as part of the Data Analytics curriculum at the Data Analytics Bootcamp in 2025/2026. The objective was to evaluate whether Eniac, a European premium technology retailer specializing in Apple products and accessories, should enter the Brazilian market through a partnership with Magist, a Brazilian e-commerce and logistics platform.

The analysis focuses on assessing the strategic fit between Eniac's premium customer-centric business model and Magist's marketplace ecosystem. The final recommendation was developed using data-driven insights derived from the Magist database and external market research.

## Business Problem

Eniac aims to expand into Brazil but lacks local logistics, warehousing, customer service, and supplier relationships. Magist offers these capabilities through an established network, enabling rapid market entry.

The key questions addressed in this project were:

* Is Magist a suitable platform for premium technology products?
* Can Magist provide the level of delivery performance expected by Eniac customers?
* Does the partnership align with Eniac's premium brand and customer experience strategy?
* Should Eniac sign a 3-year partnership agreement with Magist?

## Dataset

The project uses the Magist e-commerce database, containing transactional data from a Brazilian marketplace, including:

* Orders
* Customers
* Products
* Sellers
* Payments
* Reviews
* Delivery information

The data was provided as a relational MySQL database and analyzed using SQL and Tableau.

## Tools Used

* MySQL
* SQL
* Tableau
* GitHub
* Google Slides

## Key Findings

* Technology products represented a relatively small portion of Magist's overall marketplace activity.
* Only 2.85% of products sold exceeded €500, while Eniac's average product value is approximately €540.
* Average delivery time was approximately 12.5 days.
* Customer satisfaction dropped significantly when deliveries were late (average review score decreased from 4.21 to 2.55).
* Magist's business model appeared more aligned with mass-market retail than with Eniac's premium positioning.

## Final Recommendation

Brazil remains an attractive and growing e-commerce market. However, the analysis indicates that Magist is not an ideal strategic partner for Eniac due to:

* Limited focus on premium technology products
* Low share of high-value sales
* Delivery performance risks
* Potential conflict with Eniac's customer-centric philosophy

Therefore, the recommendation was not to pursue the proposed 3-year partnership with Magist.

## Project Team

This project was completed collaboratively by:

* Tejas
* Christopher M
* Falk
* Sandra W

Special thanks to all team members for their contributions to data cleaning, SQL analysis, Tableau dashboards, business research, and presentation development.

## Repository Structure

├── data/
│   ├── magist_dump.sql
│   └── supporting_files/
│
├── sql/
│   ├── exploratory_analysis.sql
│   ├── delivery_analysis.sql
│   ├── customer_review_analysis.sql
│   └── business_questions.sql
│
├── tableau/
│   ├── dashboards.twb
│   └── exported_visualizations/
│
├── presentation/
│   └── Eniac_Brazil_Expansion_Presentation.pdf
│
├── images/
│   └── charts_and_figures/
│
└── README.md


## How to Run the Project

### 1. Import the Database

Create a MySQL database and import the provided SQL dump:

```sql
CREATE DATABASE magist;
USE magist;
SOURCE magist_dump.sql;
```

### 2. Execute SQL Analyses

Run the SQL scripts located in the `/sql` folder to reproduce the analysis.

### 3. Open Tableau Dashboard

Open the Tableau workbook located in the `/tableau` folder and connect it to the imported MySQL database.

### 4. Review the Presentation

The final business recommendation and supporting visualizations are available in the `/presentation` folder.

## License

This repository is intended for educational and portfolio purposes only.
