/* 
Question: Which category makes the most money? 
*/

SELECT
    category AS product_category,
    sum(sales) AS total_sales
from sales_data
Group by category
ORDER BY total_sales DESC;

/*
[
  {
    "product_category": "Technology",
    "total_sales": "825529.02"
  },
  {
    "product_category": "Furniture",
    "total_sales": "728658.75"
  },
  {
    "product_category": "Office Supplies",
    "total_sales": "705422.28"
  }
]

Key Findings
✅ Technology is #1 with $825,529 (36.5% of total)

📊 All categories are close - only $120,107 difference between 1st and 3rd

💰 Total Revenue: $2,259,610 from all 3 categories
*/