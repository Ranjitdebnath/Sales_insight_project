select * from customers;
select * from date;
select * from markets;
select * from products;
select * from transactions;

-- 1) Find total number of transactions

select count(*) as total_transactions from transactions ;

-- 2) Find Distinct currency

select distinct currency from  transactions;

-- 3) Find all the transaction details of chennai.

SELECT transactions.*,markets.markets_name FROM transactions JOIN markets 
ON transactions.market_code = markets.markets_code WHERE markets_name = 'Chennai';

-- 4) Find the total sales_amount generated from chennai

select sum(transactions.sales_amount) as total_amount from transactions where market_code='Mark001';

-- 5) Find the distinct product sold in chennai

Select distinct product_code from transactions where market_code='Mark001';

-- 6) Find all transactions done with USD currency

select * from transactions where currency='USD';

-- 7) Find out all the transaction of the year 2020

select transactions.*,date.year from transactions inner join date
on transactions.order_date=date.date
where date.year='2020';

-- 8)Find the total sales amount generated in the year 2020

select sum(transactions.sales_amount) as total_sales_amount,date.year from transactions inner join date
on transactions.order_date=date.date
where date.year='2020';

-- 9) Find out all the transaction of the january month of the year 2020

select transactions.*,date.year,date.month_name from transactions inner join date
on transactions.order_date=date.date
where date.year='2020' and date.month_name='January';

-- 10)Find the total sales amount generated in january month of the year 2020

select sum(transactions.sales_amount) as total_sales_amount,date.year,date.month_name from transactions inner join date
on transactions.order_date=date.date
where date.year='2020' and date.month_name='january';

