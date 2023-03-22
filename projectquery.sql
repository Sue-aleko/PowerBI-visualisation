--to retrieve all data from table
SELECT* 
from`niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis` LIMIT 1000;

-- total number of customers in this date
SELECT COUNT (*)total_customers,
from`niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`;

--to change column name Attrition_flag to Total customers using AS
SELECT attrition_flag AS Total_Customers
FROM`niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`;

-- count of existing customers and attrited customers using where funstion
SELECT COUNT(attrition_flag) AS Attrited_Customer
from`niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE attrition_flag = 'Attrited Customer';

SELECT COUNT(attrition_flag) AS Existing_Customer
from`niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE attrition_flag = 'Existing Customer';

--Existing vs Attrited customer table
SELECT * 
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Existing Customer";   
--Attrited
SELECT * 
FROM`niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag = "Attrited Customer";   

--Total Existing vs Attrited by genre
SELECT SUM(1) As Existing_Customers, Gender
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Existing Customer"
GROUP BY Gender;  

SELECT SUM(1) As Attrited_Customers, Gender
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Gender; 

--Existing vs Attrited by Age range
SELECT SUM(1) Existing_Customers, Age_Range
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Existing Customer"
GROUP BY Age_Range; 

SELECT SUM(1) Attrited_Customers, Age_Range
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Age_Range; 
--dependant count vs marital status
SELECT SUM(1) Attrited_Customers, Dependent_count
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Dependent_count; 
--Marital_Status
SELECT SUM(1) Attrited_Customers,Marital_Status
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Marital_Status;
--income and education level
SELECT SUM(1) Attrited_Customers,Income_Category
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Income_Category;
--Education level
SELECT SUM(1) Attrited_Customers,Education_Level,
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Education_Level;
--Attrition by card category (blue card)
SELECT SUM(1) Attrited_Customers,Card_Category
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Card_Category;
--Attrition by months on book ( explore more)
SELECT SUM(1) Attrited_Customers,Months_on_book
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Months_on_book;
--Attrition by Total_Relationship_Count
SELECT SUM(1) Attrited_Customers,Total_Relationship_Count
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Total_Relationship_Count;
--Attrition by Months_Inactive_12_mon
SELECT SUM(1) Attrited_Customers,Months_Inactive_12_mon
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Months_Inactive_12_mon;
--Attrition by Contacts_Count_12_mon
SELECT SUM(1) Attrited_Customers,Contacts_Count_12_mon
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Contacts_Count_12_mon;
--Attrition by Credit_Limit ( no significance)
SELECT SUM(1) Attrited_Customers,Credit_Limit
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Credit_Limit;
--Attrited by Total_Revolving_Bal ( to be explore)
SELECT SUM(1) Attrited_Customers,Total_Revolving_Bal
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Total_Revolving_Bal;
--Attrited by Avg_Open_To_Buy ( no significance)
SELECT SUM(1) Attrited_Customers,Avg_Open_To_Buy
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Avg_Open_To_Buy;
--Attrited by Total_Amt_Chng_Q4_Q1
SELECT SUM(1) Attrited_Customers,Total_Amt_Chng_Q4_Q1
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Total_Amt_Chng_Q4_Q1;
--Attrited by Total_Trans_Amt
SELECT SUM(1) Attrited_Customers,Total_Trans_Amt
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Total_Trans_Amt;
--Attrited by Total_Trans_Ct
SELECT SUM(1) Attrited_Customers,Total_Trans_Ct
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Total_Trans_Ct;
--Attrited by Total_Ct_Chng_Q4_Q1
SELECT SUM(1) Attrited_Customers,Total_Ct_Chng_Q4_Q1
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Total_Ct_Chng_Q4_Q1;
--Attrited by Avg_Utilization_Ratio
SELECT SUM(1) Attrited_Customers,Avg_Utilization_Ratio
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Avg_Utilization_Ratio;
-- case when function
SELECT Card_Category,-- ,
  SUM(CASE WHEN Attrition_flag = "Attrited Customer" THEN 1 ELSE 0 END) AS attrited_total,
  SUM(CASE WHEN Attrition_flag = "Existing Customer" THEN 1 ELSE 0 END) AS Existing_total
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
GROUP BY Card_Category;-- Card_Category;


(SELECT "Income_Category" As Category, Income_Category As SubCategory,
  SUM(CASE WHEN Attrition_flag = "Attrited Customer" THEN 1 ELSE 0 END) AS attrited_total,
  SUM(CASE WHEN Attrition_flag = "Existing Customer" THEN 1 ELSE 0 END) AS existing_total
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
GROUP BY Income_Category)
UNION ALL
(SELECT "Card_Category" As Category, Card_Category As SubCategory,
  SUM(CASE WHEN Attrition_flag = "Attrited Customer" THEN 1 ELSE 0 END) AS attrited_total,
  SUM(CASE WHEN Attrition_flag = "Existing Customer" THEN 1 ELSE 0 END) AS existing_total
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
GROUP BY Card_Category);


--to call out only sum Attrited customers  group by columns starting with the column with highest number of attrited customers
--column as segments, Total Attrited

 ------------ |         |
--- Retrieve Attrited customers
 select* FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
 where Attrition_Flag='Attrited Customer';
--- to count attrited customers by gender
SELECT SUM(1) As Attrited_Customers, Gender
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Gender; 
--- to count attrited by age range
SELECT SUM(1) Attrited_Customers, Age_Range
FROM `niyo-sql-project-1.niyo_bootcamp.Attrition_Analysis`
WHERE Attrition_flag ="Attrited Customer"
GROUP BY Age_Range; 













