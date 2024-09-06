# Data Validation
The dataset contains 15000 rows and 8 columns before cleaning and validataion. I have validated all the columns against the criteria in the dataset table:

* week: 6 weeks without missing values, same as the description. No cleaning is needed.

* sales_method: Before cleaning: 5 categories with spelling errors, were corrected to give the 3 unique categories as the description specified. After cleaning: 3 unique categories without missing values, column is inline with description.

* customer_id: character values without missing values,the unique identifier, same as the description. No cleaning is needed.

* nb_sold: numeric values, same as the description. No cleaning is needed.

* revenue: Before cleaning: numeric values, with 1074 null values and 13926 non-null values. null values was replaced with the median of revenue(89.5) because the percentage of missing values was high and the revenue column has a normal distribution. After cleaning: numeric values, without missing values, column is inline with the description.

*  years_as_customer: Before cleaning: numeric values, 2 rows filtered out because they did not meet description criteria. i.e 2 rows with values>= 40 years (2024-1984=40). After cleaning:numeric without missing values, column is in line with description.

* nb_site_visits: numeric values, same as the description. No cleaning is needed.

* state: 50 unique values without missing values, sames as description. No cleaning is needed.

After the data validation, the dataset contains 14998 rows and 8 columns without missing values.

## How many customers were there for each approach?

**Approximately half of the customers were approached only by Email with a total count of 7465 customers. The Call only approach made up about 33 percent of the total customer count with a value of 4961 customers and The Email + Call approach has the least customer count of 2572 customers which about 17 percent of the total population.** 
![Customer by sales Approach](Customer%20by%20sales%20Approach.jpg)

## What does the spread of the revenue look like overall? And for each method?

The Majority of the revenue of the customer is between 106.07 dollars and 53.04 dollars with most it's values being lower than the median revenue of 89.5 dollars
![Total Spread of Revenue](Total%20Spread%20of%20Revenue.jpg)

The Email + Call method offers a higher range of revenue outcomes but with more variability, while the Email and Call methods provide more consistent, though generally lower revenues with a few high-revenue results.

![Spread of Revenue by Sales method](Spread%20of%20Revenue%20by%20Sales%20method.jpg)

## Was there any difference in revenue over time for each of the methods?

Each line represents a sales method, allowing us to compare their performance in terms of revenue generation over time.

The **Email** method started with the highest revenue but declined steadily over time, while the **Email + Call** method showed significant growth, peaking around week 5 before a slight drop. The **Call** method maintained steady growth throughout the 6-week period. This suggests that combining emails with calls may be more effective in sustaining higher revenue levels over time compared to relying solely on emails.
![Weekly revenue Trend by sales method](Weekly%20revenue%20Trend%20by%20sales%20method.jpg)

Looking at the Average revenue per visit and the Average number of products sold per week. The **Email + Call** method has the highest average revenue per visit, while the **Email** method achieves the highest average sales per week.
![Avg Revenue per visit and avg sales per week by sales method](Avg%20Revenue%20per%20visit%20and%20avg%20sales%20per%20week%20by%20sales%20method.jpg)

And as customers remain with the company longer, the number of products sold to them tends to decrease significantly across all sales methods.This suggests that focusing on new customers might be more effective for driving sales, regardless of the sales method used.
![Sales performance by years as customer and sales method](Sales%20performance%20by%20years%20as%20customer%20and%20sales%20method.jpg)

## In summary: 
Based on my analysis on the data provided for the past 6 weeks, the use of **Email + Call** sales method is the best method, As shown in the "Weekly Revenue Trend by sales method" relying only on Email may not sustain high revenue levels and the Call method is not efficient as it consumes the most time.

Tne Expected Total Revenue if all customers use Email+Call is 1,710,901.49 dollars compared to the current total revenue 1,404,113.32 dollars.

# Business Metrics
Since our goal is to optimise our time and resources,leading to better allocation of resources and improved overall profitability. I would recommend **Revenue Efficiency** as our metric.
![Revenue efficiency by sales method](Revenue%20efficiency%20by%20sales%20method.jpg) 

# Recommendation
**For the following weeks, I would recommend we can focus on the following steps:**

* To quickly implement the campaign, we should strategically promote the sales methods with the highest revenue efficiency in the market:
  * Emphasize on methods like Email+Call that deliver high revenue with minimal time investment and appeals to both cost-conscious and time-conscious customers.
  * Target segment most likely to respond to the efficient methods(customer with less than 10 years)
* Use key metrics to monitor the if the Email+Call method records an increase in total revenue as predicted.
* Optimize the call duration to reduce the time spent per customer.
* Enhance customer retention over the years.
* Data Collection for in-depth analysis
  *  Improve data quality: What other customer demographics and feedback can improve the insights generated? eg. Age,Income level.
  *  Balance the data across the various sales methods and increase the data size.