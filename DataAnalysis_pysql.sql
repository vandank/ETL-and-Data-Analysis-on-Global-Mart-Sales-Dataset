#Q1.Find Top 10 highest revenue generating products 

#In order to do this, we first groupby all products based on theri product_id and check their total sum and then order by thee total sum in desc
select product_id,sum(sale_price) as sales from df_orders
group by product_id
order by sales desc
LIMIT 10;

#Q2.Find Top5 highest selling products in each region
select distinct(region) from df_orders;
select region,product_id, sum(sale_price) as sales from df_orders
group by region, product_id
order by region,sales desc;

with cte as (
select region,product_id,sum(sale_price) as sales
from df_orders
group by region,product_id)
select * from (
select * 
,row_number() over(partition by region order by sales desc) as rn
from cte) A
where rn<=5;



#Q3.Find month over month growth comparison for 2022 and 2023 sales eg: jan 2022 vs jan 2023
select year(order_date) as order_year, month(order_date) as order_month, sum(sale_price) as sales from df_orders
group by year(order_date), month(order_date)
order by year(order_year), month(order_date);

#Now we want to represent this data in the form of a table where it shows comparison. In order to do that, we will use cte
with cte as(
select year(order_date) as order_year, month(order_date) as order_month, sum(sale_price) as sales from df_orders
group by year(order_date), month(order_date))
select order_month
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte
group by order_month
order by order_month;


#Q4. Far each category which month had the highest sales
select category, date_format(order_date, '%Y%m') as order_yearmonth, sum(sale_price) as sales from df_orders 
group by category,date_format(order_date, '%Y%m')
order by category,date_format(order_date, '%Y%m');

#Again, we want to find for each cateogry which month had the highest sales. For this too, we'll use cte
with cte as (
select category, date_format(order_date, '%Y%m') as order_yearmonth, sum(sale_price) as sales from df_orders 
group by category,date_format(order_date, '%Y%m')
)
select * from
(select *, 
row_number() over (partition by category order by sales desc) as rn
from cte) A 
where rn=1;


#Q5. Which subcategory has the highest growth by profit in 2023 compared to 2022
with cte as(
select sub_category, year(order_date) as order_year, sum(sale_price) as sales from df_orders
group by sub_category, year(order_date))
, cte2 as(
select sub_category
, sum(case when order_year=2022 then sales else 0 end) as sales_2022
, sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte
group by sub_category
)
select *,
(sales_2023-sales_2022)*100/sales_2022 as growth_percent
from cte2
order by growth_percent desc;
