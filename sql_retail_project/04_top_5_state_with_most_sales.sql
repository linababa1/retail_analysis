SELECT
    country,
    city,
    state,
    sum(sales) AS total_sales
FROM sales_data
GROUP BY 
    country, city, state
ORDER BY total_sales DESC
LIMIT 5;

/*
[
  {
    "country": "United States",
    "city": "New York City",
    "state": "New York",
    "total_sales": "252462.50"
  },
  {
    "country": "United States",
    "city": "Los Angeles",
    "state": "California",
    "total_sales": "173420.17"
  },
  {
    "country": "United States",
    "city": "Seattle",
    "state": "Washington",
    "total_sales": "116106.32"
  },
  {
    "country": "United States",
    "city": "San Francisco",
    "state": "California",
    "total_sales": "109041.11"
  },
  {
    "country": "United States",
    "city": "Philadelphia",
    "state": "Pennsylvania",
    "total_sales": "108725.05"
  }
]

Key Findings
🗽 New York City dominates with $252,463 - that's 34% of all top 5 sales

🌴 California has 2 cities (LA + SF) = $282,461 combined

💰 Total from top 5 cities: $759,755

📊 Big gap: NYC makes $79,043 more than #2 (LA)

New York City is your #1 market with over $252,000 in sales.
California is your strongest state with 2 cities in the top 5.
The top 5 cities together generate over $759,000 in sales.

*/