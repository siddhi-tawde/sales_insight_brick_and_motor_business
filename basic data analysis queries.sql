Use sales;
select * from customers;
select * from date;
select * from markets;
select * from products;
select * from transactions;

-- Checking Number of transactions --
select count(*) from transactions;

-- Checking Number of Customers --
select count(*) from customers;

-- Checking Sales in Chennai--
select * from transactions 
where market_code = 'Mark001';

-- Checking Number of Sales in Chennai--
select count(*) from transactions 
where market_code = 'Mark001';

-- Checking total revenue in year 2020--
select sum(sales_amount)  from transactions
where order_date >='2020-01-01';

-- Checking total revenue in Chennai in 2020--

select sum(sales_amount) from transactions
where market_code = 'Mark001' and order_date >='2020-01-01';

-- Checking duplicate values--

use sales;

select distinct(currency) from transactions;
select count(*) from  transactions where currency='INR\r';
select count(*) from  transactions where currency='INR';
select count(*) from  transactions where currency='usd';
select count(*) from  transactions where currency='usd\r';
select * from  transactions where currency='usd';
select * from  transactions where currency='usd\r';



use sales;
select sum(sales_amount) from transactions;