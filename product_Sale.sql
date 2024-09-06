SELECT * 
FROM product_sales;


SELECT ROUND(AVG(revenue),2) as revenue FROM product_sales;

CREATE TABLE product_sales_clean as(
SELECT week, 
(CASE WHEN sales_method LIKE '_mail' THEN 'Email' 
	WHEN sales_method LIKE '% + call' THEN 'Email + Call'
    ELSE 'Call' END) AS sales_method,
customer_id,
 nb_sold,
 (CASE WHEN revenue ='NA' THEN 87.21
 ELSE revenue END) AS revenue,
 years_as_customer, nb_site_visits,state
FROM product_sales);

SELECT DISTINCT sales_method
FROM clean_product_sales;

SELECT sales_method,
AVG(revenue) as AVG_revenue,
COUNT(customer_id) as COUNT,
stddev(revenue) AS revenue_spread -- std will need a visualisation
FROM clean_product_sales
GROUP BY sales_method;

SELECT DISTINCT sales_method FROM clean_product_sales;

