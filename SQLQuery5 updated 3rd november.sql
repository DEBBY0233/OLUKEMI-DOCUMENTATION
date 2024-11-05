CREATE DATABASE AY
select * from [dbo].[sales data csv]
SALES DATA SQL QUERIES 
SELECT *
FROM [dbo].[sales data csv]

---Q1 Retrieve the total number of customers from each region.---

SELECT * 
FROM [dbo].[sales data csv]

---Q1  Retrieve the total sales for each product category.---
SELECT Product,SUM(Quantity) as Total_Sales
FROM [dbo].[sales data csv]
GROUP BY Product


---Q2 Find the number of sales transactions in each region.--
SELECT Region,SUM(Quantity) as Total_Sales
FROM [dbo].[sales data csv]
GROUP BY Region

--- Q3 Find the highest-selling product by total sales value.
SELECT  Product, SUM(Quantity) as Total_Sales
FROM [dbo].[sales data csv]
GROUP BY Product
Order By Total_Sales Desc

--- Q4 Calculate total revenue per product--
SELECT Product,SUM(Quantity*UnitPrice) as Total_Revenue
FROM [dbo].[sales data csv]
GROUP BY Product

ALTER TABLE [dbo].[sales data csv]
ADD OrderMonth nvarchar(50)
UPDATE [dbo].[sales data csv]
SET OrderMonth = DATENAME(MONTH, OrderDate)



ALTER TABLE [dbo].[sales data csv]
ADD OrderYear int

UPDATE [dbo].[sales data csv]
SET OrderYear = Year(OrderDate)
--- Revenue Column---
ALTER TABLE [dbo].[sales data csv]
ADD Revenue int
UPDATE [dbo].[sales data csv]
SET Revenue = (Quantity*UnitPrice)



SELECT *
FROM [dbo].[sales data csv]

--Q5 Calculate monthly sales totals for the current year(2024)--

SELECT  OrderMonth, 
  SUM(Quantity) as Total_Sales
FROM [dbo].[sales data csv]
WHERE OrderYear = 2024
GROUP BY OrderMonth

--- Q6 find the top 5 customers by total purchase amount
SELECT  Top 5 Customer_Id,SUM(Quantity) AS Total_Purchase
FROM [dbo].[sales data csv]
GROUP BY Customer_Id
ORDER BY Total_Purchase DESC

---Q7 calculate the percentage of total sales contributed by each region.
SELECT Region, SUM(Revenue)/SUM(Quantity)*0.1 AS Percebtage_of_Total_Sales
FROM [dbo].[sales data csv]
GROUP BY Region
ORDER BY Percentage_of_Total_Sales


--Q8 Identify products with no sales in the last quarter
SELECT Product,SUM(Quantity) AS Sales
FROM [dbo].[sales data csv]
WHERE MONTH(OrderDate) BETWEEN 10 AND 12  -- Months 10, 11, and 12 (October to December)
GROUP BY Product
HAVING SUM(Quantity)= 0