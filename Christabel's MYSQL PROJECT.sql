SELECT *
FROM sales;

SELECT 
   Product_Category,
   Date,
   SUM(Order_Quantity) AS "Total_Sales",
   SUM(Revenue) AS "Total_Revenue",
   SUM(Cost) AS "TotaL_Cost",
   SUM(Profit) AS "Total_Profit"
FROM sales   
GROUP BY product_category, Date;

select 
Date,
SUM(Revenue) AS "Total_Sales",
SUM(Order_Quantity) AS "QUANTITY" 
from sales
Group by Date;
 
 
select Product, MAX(Profit), Date 
from sales
order by Profit DESC
limit 1;

SELECT  Customer_Gender, Age_Group, SUM(Revenue) as "TOTAL_SALES"
from sales
group by Customer_Gender, Age_Group
order by TOTAL_SALES desc;

select Country, State, SUM(Profit) AS "TOTAL_PROFIT", SUM(Revenue) AS "TOTAL_REVENUE"
from sales
group by  Country, State;


select Unit_cost, Profit, Order_Quantity
from sales
order by Order_Quantity, Profit desc;

select Age_Group, SUM(Revenue) as "TOTAL_REVENUE"
from sales
group by  Age_Group;


select product_category, SUM(Profit), SUM(Revenue), Month AS "Periods"
from sales
group by product_category, Month;

select Revenue, Profit, State, Country, Order_Quantity
from sales
order by State, Country desc;


select AVG(Unit_Price), AVG(Unit_cost), AVG(Profit), Product
from sales
group by Product;

