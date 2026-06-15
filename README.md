# sql_business_exploration
Business case study

# Eniac Brazil Market Entry Strategy: Evaluating Magist as a Logistics & Marketplace Partner

## 🎯 Project Overview

This project analyzes whether Eniac, a European premium technology retailer specializing in Apple products and accessories, should expand into Brazil through a partnership with Magist, a Brazilian e-commerce and logistics platform.

The analysis combines SQL, business analytics, and data visualization to evaluate Magist's suitability for Eniac's premium business model. By examining product mix, pricing, logistics performance, customer satisfaction, and Brazilian market conditions, the project delivers a data-driven recommendation on Eniac's proposed 3-year partnership agreement.

### Business Question

**Should Eniac enter Brazil through a partnership with Magist?**

### Recommendation

**No.**

While Brazil represents a large and growing e-commerce opportunity, the analysis indicates that Magist's mass-market ecosystem is not aligned with Eniac's premium technology positioning and customer-centric strategy.

---

## 📊 Dataset & Sources

### Primary Dataset

**Magist E-commerce Database**

A relational MySQL database containing Brazilian e-commerce transactions between September 2016 and August 2018.

### Main Tables

* Orders
* Order Items
* Products
* Customers
* Sellers
* Payments
* Reviews
* Geolocation Data

### Additional Sources

* Brazilian smartphone market share data (StatCounter)
* Public research on Brazilian Apple product pricing
* Eniac business case description

### Project Scope

The project focuses on:

* Technology product sales
* Premium product pricing
* Delivery performance
* Customer satisfaction
* Strategic fit between Eniac and Magist

---

## 🚀 Key Findings & Results

### 1. Magist is not a technology-focused marketplace

Technology-related categories generated approximately **€1.68M** in revenue, representing only a small share of Magist's overall marketplace activity.

**Insight:** Magist primarily operates as a mass-market retailer focused on household, lifestyle, and consumer goods.

---

### 2. Premium products are rare

Only **2.85% of products sold** on Magist exceeded **€500**.

Comparison:

* Eniac average product value: **€540**
* Magist premium product share: **2.85%**

**Insight:** Most of Eniac's product portfolio would occupy a niche segment within Magist's marketplace.

---

### 3. Technology products experience slower deliveries

Average delivery times:

* All orders: **12.5 days**
* Technology orders above €600: **16 days**

**Insight:** Higher-value technology products face longer delivery times, creating additional risk for Eniac customers.

---

### 4. Delivery performance directly impacts customer satisfaction

Average review scores:

| Delivery Status | Review Score |
| --------------- | ------------ |
| On-Time         | 4.21         |
| Late            | 2.55         |

**Insight:** Late deliveries result in a dramatic decline in customer satisfaction.

---

### 5. Brazil remains attractive, but Magist is not the right partner

Technology sales showed positive growth throughout the analyzed period.

**Insight:** The Brazilian market presents opportunity, but Magist's operating model is not aligned with Eniac's premium brand positioning.

---

## 🛠️ Technologies Used

### Data Analysis

* SQL (MySQL)

### Data Visualization

* Tableau

### Presentation & Reporting

* Google slides
* GitHub

### Analytical Techniques

* Exploratory Data Analysis (EDA)
* Business KPI Analysis
* Customer Review Analysis
* Delivery Performance Analysis
* Revenue & Product Mix Analysis

---

## 📁 Project Structure

```text
├── data/
│   ├── magist_dump.sql
│
├── sql/
│   ├── exploratory_analysis.sql
│   ├── pricing_analysis.sql
│   ├── logistics_analysis.sql
│   ├── customer_review_analysis.sql
│
├── tableau/
│   ├── dashboards.twbx
│   ├── exported_charts/
│
├── presentation/
│   ├── Eniac_Brazil_Market_Entry.pdf
│
├── images/
│   ├── tech_revenue_share.png
│   ├── premium_product_distribution.png
│   ├── delivery_vs_review_score.png
│
└── README.md
```

---

## 📈 Visualisations

### Technology vs Non-Technology Revenue

![Technology Revenue Share](images/tech_revenue_share.png)

Technology products account for only a small portion of Magist's overall marketplace revenue, indicating a weak strategic fit for Eniac.

---

### Premium Product Distribution

![Premium Product Distribution](images/premium_product_distribution.png)

Only 2.85% of products sold exceed €500, highlighting the mismatch between Magist's customer base and Eniac's premium pricing strategy.

---

### Delivery Performance and Customer Satisfaction

![Delivery vs Review Score](images/delivery_vs_review_score.png)

Customer satisfaction declines significantly when deliveries are delayed, emphasizing the importance of logistics performance for Eniac's premium brand.

---

## 🔗 How to Use This Project

### 1. Import the Database

Load the Magist SQL dump into MySQL:

```sql
CREATE DATABASE magist;
USE magist;
SOURCE magist_dump.sql;
```

### 2. Execute SQL Scripts

Run the SQL scripts in the `/sql` folder to reproduce the analysis and KPIs.

### 3. Open Tableau Dashboard

Open the Tableau workbook and connect it to the imported database.

### 4. Review the Final Presentation

The presentation folder contains the final business recommendation and supporting visualizations.

---

## 🚀 Future Work

### Alternative Market Entry Analysis

Evaluate direct market-entry strategies that do not rely on Magist.

### Regional Expansion Strategy

Investigate focusing on São Paulo (SP), Rio de Janeiro (RJ), and Minas Gerais (MG), where premium technology demand appears strongest.

### Supply Chain Optimization

Assess local warehousing and supplier partnerships to reduce logistics costs and mitigate import tariffs.

### Competitive Benchmarking

Compare Magist's logistics performance against other Brazilian fulfillment and marketplace providers.

---

## 👥 Contributors

This project was completed as part of a collaborative data analytics case study.

Team Members:

* Tejas
* Christopher
* Falk
* Sandra
