### City wise total Sales ###

ALTER TABLE sales
CHANGE `Net Amt` Net_Amt DECIMAL(10,2);

SELECT City, SUM(Net_Amt) as Total_sales FROM sales
GROUP BY City
ORDER BY City;

/*--------------------------------------------------------------*/

### Store wise Sales ###

ALTER TABLE sales
CHANGE `Store Name` Store_Name VARCHAR(255);

SELECT Store_Name, SUM(Net_Amt) as Total_Sales FROM sales
GROUP BY Store_Name
ORDER BY Store_Name;

/*---------------------------------------------------------------*/

### Sales Growth ##

SELECT MONTH(Date), Region, SUM(Net_Amt) as Total_sales FROM sales
GROUP BY MONTH(Date), Region
ORDER BY MONTH(Date), Region;

/*--------------------------------------------------------------------*/

### Daily Sales Trend ###

SELECT `Date`, SUM(Net_Amt) as Daily_sales FROM sales
GROUP BY `Date`
ORDER BY `Date`;

/*------------------------------------------------------------------------*/

### Brand wise Sales ###

SELECT `Brand Name`, SUM(Net_amt) as Total_Sales FROM sales
GROUP BY `Brand Name`
ORDER BY `Brand Name`; 

/*--------------------------------------------------------------------*/

### AM wise sales ###

SELECT AC as AM, SUM(Net_Amt) as Total_sales FROM sales
GROUP BY AC
ORDER BY AC;

/*--------------------------------------------------------------------*/

### Model wise sales ###

SELECT State, `Sales Type`, COUNT(Net_Amt) as Delivery FROM sales
GROUP BY State, `Sales Type`
ORDER BY State, `Sales Type`;

/*----------------------------------------------------------------------*/

### Product wise Sales ###

SELECT `Meal Type` as Product, SUM(Net_Amt) as Total_sales FROM sales
GROUP BY `Meal Type`
ORDER BY Product;



