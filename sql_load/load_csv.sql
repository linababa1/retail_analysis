SET datestyle = 'MDY';
copy sales_data FROM 'C:\Analytics Engineer\SQL PROJECTS\retail_analysis\csv_file\superstore_sale.csv' WITH (FORMAT csv, HEADER true, DELIMITER ';');

