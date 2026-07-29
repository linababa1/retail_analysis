/* Sales Performance Analysis
Question: What is the top 10 total sales amount for each product category in the sales_data table? */

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

/*
[
  {
    "product_id": "TEC-CO-10004722",
    "product_category": "Technology",
    "sub_category": "Copiers",
    "total_sales": "61599.83"
  },
  {
    "product_id": "OFF-BI-10003527",
    "product_category": "Office Supplies",
    "sub_category": "Binders",
    "total_sales": "27453.38"
  },
  {
    "product_id": "TEC-MA-10002412",
    "product_category": "Technology",
    "sub_category": "Machines",
    "total_sales": "22638.48"
  },
  {
    "product_id": "FUR-CH-10002024",
    "product_category": "Furniture",
    "sub_category": "Chairs",
    "total_sales": "21870.57"
  },
  {
    "product_id": "OFF-BI-10001359",
    "product_category": "Office Supplies",
    "sub_category": "Binders",
    "total_sales": "19823.48"
  },
  {
    "product_id": "OFF-BI-10000545",
    "product_category": "Office Supplies",
    "sub_category": "Binders",
    "total_sales": "19024.50"
  },
  {
    "product_id": "TEC-CO-10001449",
    "product_category": "Technology",
    "sub_category": "Copiers",
    "total_sales": "18839.68"
  },
  {
    "product_id": "TEC-MA-10001127",
    "product_category": "Technology",
    "sub_category": "Machines",
    "total_sales": "18374.90"
  },
  {
    "product_id": "OFF-BI-10004995",
    "product_category": "Office Supplies",
    "sub_category": "Binders",
    "total_sales": "17965.07"
  },
  {
    "product_id": "OFF-SU-10000151",
    "product_category": "Office Supplies",
    "sub_category": "Supplies",
    "total_sales": "17030.31"
  }
]

Technology - The Dominant Category
Total Revenue: $121,452.89 (45.9% of total)

Top Product: Copiers at $61,599.83 (50.7% of Tech revenue)

Key Insight: Technology products are your biggest revenue drivers

Office Supplies - The Volume Leader
Total Revenue: $101,296.74 (38.3% of total)

Top Product: Binders at $27,453.38 (27.1% of Office Supplies revenue)

Key Insight: Binders are your strongest Office Supplies category

Furniture - The Low Performer
Total Revenue: $21,870.57 (8.3% of total)

Only Product: Chairs

Key Insight: Furniture needs more product diversity
*/