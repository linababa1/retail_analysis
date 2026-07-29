/*
Question: Who Are My Top 5 Customers by segment and country?
*/

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

/*
[
  {
    "customer_name": "Sean Miller",
    "segment": "Home Office",
    "country": "United States",
    "sales_made": "15",
    "total_sales": "25043.07"
  },
  {
    "customer_name": "Tamara Chand",
    "segment": "Corporate",
    "country": "United States",
    "sales_made": "12",
    "total_sales": "19052.22"
  },
  {
    "customer_name": "Raymond Buch",
    "segment": "Consumer",
    "country": "United States",
    "sales_made": "18",
    "total_sales": "15117.35"
  },
  {
    "customer_name": "Tom Ashbrook",
    "segment": "Home Office",
    "country": "United States",
    "sales_made": "10",
    "total_sales": "14595.62"
  },
  {
    "customer_name": "Adrian Barton",
    "segment": "Consumer",
    "country": "United States",
    "sales_made": "20",
    "total_sales": "14473.57"
  }
]

Key Findings
💰 Sean Miller is your #1 customer at $25,043

📦 Adrian Barton buys the most (20 orders) but spends less than Sean

🏠 Home Office customers (Sean + Tom) = 40% of top 5

🏢 Corporate has only 1 customer but ranks #2

*/