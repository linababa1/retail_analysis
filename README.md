# Introduction
A data analysis project exploring sales patterns, customer behavior, and geographic trends using PostgreSQL.
# Background
 ### The questions i wanted to answer through my sql queries were:
 1. What are the top 10 total sales amounts for each product category in the sales_data table?
 2. Which category makes the most money?
 3. Who Are My Top 5 Customers by segment and country?
 4. What are the top 5 countries and states with the most sales?
# Tools I used
The tools i used for my analysis are:
- SQL: the backbone of my analysis, allowing me to query the database and unearth critical insights.
- PostgreSQL: The chosen database management system, ideal for handling the job posting data.
- Git & Github: Essential for version control and sharing my SQL scripts and analysis, ensuring collaboration and project tracking
# The Analysis
 1. ## What are the top 10 total sales amounts for each product category in the sales_data table?
```sql
SELECT 
    product_id,
    category AS product_category,
    sub_category,
    sum(sales) AS total_sales
FROM sales_data
Where sales IS NOT NULL
GROUP BY product_id, category, sub_category
ORDER BY total_sales DESC
LIMIT 10;
```
## Top 10 Products by Sales

| Rank | Product ID | Category | Sub-Category | Total Sales |
|------|------------|----------|--------------|-------------|
| 1 | TEC-CO-10004722 | Technology | Copiers | $61,599.83 |
| 2 | OFF-BI-10003527 | Office Supplies | Binders | $27,453.38 |
| 3 | TEC-MA-10002412 | Technology | Machines | $22,638.48 |
| 4 | FUR-CH-10002024 | Furniture | Chairs | $21,870.57 |
| 5 | OFF-BI-10001359 | Office Supplies | Binders | $19,823.48 |
| 6 | OFF-BI-10000545 | Office Supplies | Binders | $19,024.50 |
| 7 | TEC-CO-10001449 | Technology | Copiers | $18,839.68 |
| 8 | TEC-MA-10001127 | Technology | Machines | $18,374.90 |
| 9 | OFF-BI-10004995 | Office Supplies | Binders | $17,965.07 |
| 10 | OFF-SU-10000151 | Office Supplies | Supplies | $17,030.31 |

**Technology - The Dominant Category**

**Total Revenue:** $121,452.89

**Top Product:** Copiers at $61,599.83

**Key Insight:** Technology products are your biggest revenue drivers

**Office Supplies - The Volume Leader**

**Total Revenue:** $101,296.74 

**Top Product:** Binders at $27,453.38

**Key Insight:** Binders are your strongest Office Supplies category

**Furniture - The Low Performer**

**Total Revenue:** $21,870.57 

**Only Product:** Chairs

**Key Insight:** Furniture needs more product diversity

2. ## Which category makes the most money?
```sql
SELECT
    category AS product_category,
    sum(sales) AS total_sales
from sales_data
Group by category
ORDER BY total_sales DESC;
```
## Sales by Category

| Rank | Category | Total Sales |
|:----:|----------|-------------|
| 1 | Technology | $825,529.02 |
| 2 | Furniture | $728,658.75 |
| 3 | Office Supplies | $705,422.28 |

### Key Findings
Technology is #1 with $825,529 

All categories are close - only $120,107 difference between 1st and 3rd

Total Revenue: $2,259,610 from all 3 categories

3. ## Who Are My Top 5 Customers by segment and country?
```sql
SELECT 
    customer_name,
    segment,
    country,
    count(customer_id) AS sales_made,
    sum(sales) AS total_sales
FROM sales_data
where sales IS NOT NULL
GROUP BY customer_name, segment, country
ORDER BY total_sales DESC
LIMIT 5;
```
## Top 5 Customers by Sales

| Rank | Customer Name | Segment | Country | Orders | Total Sales |
|:----:|---------------|---------|---------|:------:|-------------|
| 1 | Sean Miller | Home Office | United States | 15 | $25,043.07 |
| 2 | Tamara Chand | Corporate | United States | 12 | $19,052.22 |
| 3 | Raymond Buch | Consumer | United States | 18 | $15,117.35 |
| 4 | Tom Ashbrook | Home Office | United States | 10 | $14,595.62 |
| 5 | Adrian Barton | Consumer | United States | 20 | $14,473.57 |

### Key Findings
Sean Miller is your #1 customer at $25,043

Adrian Barton buys the most (20 orders) but spends less than Sean

Home Office customers (Sean + Tom) = 40% of top 5

Corporate has only 1 customer but ranks number 2

4. ## What are the top 5 countries and states with the most sales?
```sql
SELECT
    country,
    city,
    state,
    sum(sales) AS orders
FROM sales_data
GROUP BY 
    country, city, state
ORDER BY total_sales DESC
LIMIT 5;
```
## Top 5 Cities by Sales

| Rank | City | State | Country | Total Sales |
|:----:|------|-------|---------|-------------|
| 1 | New York City | New York | United States | $252,462.50 |
| 2 | Los Angeles | California | United States | $173,420.17 |
| 3 | Seattle | Washington | United States | $116,106.32 |
| 4 | San Francisco | California | United States | $109,041.11 |
| 5 | Philadelphia | Pennsylvania | United States | $108,725.05 |

### Key Findings
New York City dominates with $252,463

California has 2 cities (LA + SF) = $282,461 combined

Total from top 5 cities: $759,755

Big gap: NYC makes $79,043 more than 2 (LA)

# What I learned
Analyze sales data to find top categories, customers, and locations

Identify revenue drivers (Technology = 36.5% of sales)

Find top customers and understand their segments

Spot geographic trends (NYC = top city, California = top state)

Draw insights from data to make business recommendations
# Conclusion
This project successfully analysed sales data using PostgreSQL to answer key business questions. Through SQL queries, I identified:

- **Technology** as the top-performing category ($825,529)
- **Sean Miller** as the highest-spending customer ($25,043)
- **New York City** as the best market ($252,463)

