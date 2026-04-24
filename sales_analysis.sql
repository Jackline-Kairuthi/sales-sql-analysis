create database sales_db;
use sales_db;
select * from sales limit 10;

#Basic Queries
select * from sales;
select Customer_Name, City, Total_Amount from sales;
select * from sales limit 10;
select Order_ID, Customer_Name, City, Total_Amount from sales where Total_Amount>10000 order by Total_Amount desc ;
select Order_ID, Customer_Name, City, Total_Amount from sales where City = "Delhi" order by Total_Amount desc ;

select * from sales limit 10;

#Sorting Queries
select Order_ID, Customer_Name, Total_Amount from sales order by Total_Amount desc limit 5;
select Order_ID, Customer_Name, Total_Amount from sales order by Total_Amount asc limit 5;
select * from sales order by Order_ID asc;
select * from sales order by Total_Amount desc limit 10;
select Order_ID, Customer_Name, Total_Amount, Quantity from sales order by Quantity desc;

#Aggregate Queries
select count(Order_ID) as total from sales;
select sum(Total_Amount) from sales;
select avg(Total_Amount) from sales;
select max(Total_Amount) as highest_order from sales;
select min(Total_Amount) as highest_order from sales;

#GROUP BY Queries
select count(Order_ID), Payment_Mode as total from sales group by Payment_Mode;
select Category, sum(Total_Amount) as Total from sales group by Category;
select count(Order_ID), City as total from sales group by City;
select Category, round(avg(Rating),2) as Average_Rating from sales group by Category;
select Product_Name, sum(Quantity) as Total_quantity from sales group by Product_Name;

#HAVING Queries
select City, count(Order_ID) as Count_of_orders from sales group by City having Count_of_orders<100;
select Category, sum(Total_Amount) as Total_revenue from sales group by Category having Total_revenue > 500000;

#Conditional Queries
Select * from sales where Delivery_Status = "Cancelled";
Select * from sales where Delivery_Status = "Delivered" and Rating = 5;
Select * from sales where Payment_Mode = "Card" and Total_Amount > 8000;
