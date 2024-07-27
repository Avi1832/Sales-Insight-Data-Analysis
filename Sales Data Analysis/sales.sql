

Total Revenue*/ 
select sum(sales_amount) as Total_Revenue from transactions;
/*Total quantity Sold*/
Select sum(sales_qty) as Total_salesqty from transactions;

/*revenue by zone*/
SELECT markets.zone, sum(transactions.sales_amount) AS Total_Revenue
FROM markets
JOIN transactions  ON  transactions.market_code = markets.markets_code
GROUP BY markets.zone;

/*Revenue by MArket_name*/
SELECT markets.markets_name, sum(transactions.sales_amount) AS Total_Revenue
FROM markets
JOIN transactions  ON  transactions.market_code = markets.markets_code
group by  markets_name
order by Total_Revenue desc;

/*Show total revenue in year 2020*/
SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON 
transactions.order_date=date.date where date.year=2020 and transactions.currency="INR\r" or transactions.currency="USD\r";

/* Show total revenue in year 2020, January Month*/

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020 
and date.month_name="January" and (transactions.currency="INR\r" or transactions.currency="USD\r")

/*Show total revenue in year 2020 in Chennai*/

SELECT SUM(transactions.sales_amount) FROM transactions INNER JOIN date ON transactions.order_date=date.date where date.year=2020
and transactions.market_code="Mark001";

/* Show transactions where currency is US dollars*/
SELECT * from transactions where currency="USD";


