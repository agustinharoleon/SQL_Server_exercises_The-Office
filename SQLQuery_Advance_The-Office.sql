/* Alex The Analyst Tutorial: https://www.youtube.com/watch?v=K1WeoKxLZ5o&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=14
Topic: CTEs
*/

SELECT FirstName, LastName, Gender, Salary, Count(Gender) OVER (PARTITION BY Gender) as TotalGender,
AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'


WITH CTE_Employee as 
(
SELECT FirstName, LastName, Gender, Salary
, Count(Gender) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT *
FROM CTE_Employee





WITH CTE_Employee as 
(
SELECT FirstName, LastName, Gender, Salary
, Count(Gender) OVER (PARTITION BY Gender) as TotalGender
, AVG(Salary) OVER (PARTITION BY Gender) as AvgSalary
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee








/* Alex The Analyst Tutorial: https://www.youtube.com/watch?v=RF0LE3hYFrI&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=16
Topic: CTEs
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

SELECT*
FROM #temp_Employee


INSERT INTO #temp_Employee VALUES (
'1001', 'HR', '4500'
)

INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial Alex]..EmployeeSalary

DROP TABLE IF EXISTS #Temp_Employee2

DROP TABLE IF EXISTS #Temp_Employee02

CREATE TABLE #Temp_Employee02 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int)




INSERT INTO #Temp_Employee02
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(Salary)
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] emp
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle 

SELECT*
FROM #Temp_Employee02



/* Alex The Analyst Tutorial: https://www.youtube.com/watch?v=GQj6_6V_jVA&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=16

Topic: String Funtions - TRIM; LTRIM; RTRIM; Replace, Substring, Upper, Lower

*/

Drop Table EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50)
,FirstName varchar(50)
,LastName varchar(50)
)

Insert into EmployeeErrors Values 
('1001  ', 'Jimbo', 'Halbert')
,('  1002', 'Pamela', 'Beasely')
,('1005', 'TOby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using Trim, LTRIM, RTRIM

Select EmployeeID, TRIM(employeeID) AS IDTRIM
FROM EmployeeErrors 

Select EmployeeID, RTRIM(employeeID) as IDRTRIM
FROM EmployeeErrors 

Select EmployeeID, LTRIM(employeeID) as IDLTRIM
FROM EmployeeErrors 


-- Using Replace

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors


-- Using Substring

SELECT err.FirstName, dem.FirstName
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON err.FirstName = dem.FirstName




Select Substring(err.FirstName,1,3), Substring(dem.FirstName,1,3), Substring(err.LastName,1,3), Substring(dem.LastName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	on Substring(err.FirstName,1,3) = Substring(dem.FirstName,1,3)
	and Substring(err.LastName,1,3) = Substring(dem.LastName,1,3)



-- Using UPPER and lower

Select firstname, LOWER(firstname)
from EmployeeErrors

Select Firstname, UPPER(FirstName)
from EmployeeErrors


/* Alex The Analyst Tutorial: https://www.youtube.com/watch?v=NrBJmtD0kEw&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=17

Topic: Stored Procedures

*/

CREATE PROCEDURE TEST
AS
SELECT*
FROM EmployeeDemographics

EXEC TEST



CREATE PROCEDURE Temp_Employee
AS
DROP TABLE IF EXISTS #Temp_Employee
Create table #temp_employee (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #Temp_Employee
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM [SQL Tutorial Alex]..EmployeeDemographics emp
JOIN [SQL Tutorial Alex]..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
group by JobTitle

Select * 
From #Temp_Employee
GO;

EXEC Temp_Employee




CREATE PROCEDURE Temp_Employee2 
@JobTitle nvarchar(100)
AS
DROP TABLE IF EXISTS #temp_employee3
Create table #temp_employee3 (
JobTitle varchar(100),
EmployeesPerJob int ,
AvgAge int,
AvgSalary int
)


Insert into #temp_employee3
SELECT JobTitle, Count(JobTitle), Avg(Age), AVG(salary)
FROM SQLTutorial..EmployeeDemographics emp
JOIN SQLTutorial..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
where JobTitle = @JobTitle --- make sure to change this in this script from original above
group by JobTitle

Select * 
From #temp_employee3
GO;


exec Temp_Employee2 @jobtitle = 'Salesman'
exec Temp_Employee2 @jobtitle = 'Accountant'





/* Alex The Analyst Tutorial: https://www.youtube.com/watch?v=m1KcNV-Zhmc&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=18

Topic: Subqueries (in the Select, From, and Where Statement)

*/

Select EmployeeID, JobTitle, Salary
From EmployeeSalary

-- Subquery in Select

Select EmployeeID, Salary, (Select AVG(Salary) From EmployeeSalary) as AllAvgSalary
From EmployeeSalary

-- How to do it with Partition By

Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
From EmployeeSalary

-- Why Group By doesn't work

Select EmployeeID, Salary, AVG(Salary) as AllAvgSalary
From EmployeeSalary
Group By EmployeeID, Salary
order by EmployeeID


-- Subquery in From

Select a.EmployeeID, AllAvgSalary
From 
	(Select EmployeeID, Salary, AVG(Salary) over () as AllAvgSalary
	 From EmployeeSalary) a
Order by a.EmployeeID


-- Subquery in Where


Select EmployeeID, JobTitle, Salary
From EmployeeSalary
where EmployeeID in (
	Select EmployeeID 
	From EmployeeDemographics
	where Age > 30)