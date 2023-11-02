/* Alex The Analyst Tutorial: https://www.youtube.com/watch?v=9URM1_2S0ho&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=7
Inner Joins, Full/Left/Right Outer Joins
*/

Table 1 Insert:
Insert into EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

Table 3 Query:
Create Table WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Table 3 Insert:
Insert into WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')


SELECT *
FROM [dbo].[WareHouseEmployeeDemographics]

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeSalary


SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
Inner Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
Full Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
Left Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID



SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
Right Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
Right Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
INNER JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;


SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Right Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Left Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Left Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT *
FROM EmployeeDemographics
Full Outer Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID;

SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
FROM EmployeeDemographics
Inner Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE FirstName <> 'Michael' 
ORDER BY Salary DESC

SELECT JobTitle, Salary
FROM EmployeeDemographics
Inner Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'

SELECT JobTitle, AVG(Salary)
FROM [dbo].[EmployeeDemographics]
Inner Join [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE JobTitle = 'Salesman'
GROUP BY Jobtitle






/* Aley the Analyst Video https://www.youtube.com/watch?v=lYKkro6rKm0&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=8
Topic: Union, Union All
*/

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics

SELECT *
FROM [dbo].[WareHouseEmployeeDemographics]

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
Full Outer Join [SQL Tutorial Alex].dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID =
		WareHouseEmployeeDemographics.EmployeeID

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
UNION 
SELECT *
FROM [dbo].[WareHouseEmployeeDemographics]

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM [dbo].[WareHouseEmployeeDemographics]

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
UNION 
SELECT *
FROM [dbo].[WareHouseEmployeeDemographics]

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeSalary
ORDER BY EmployeeID


SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics

SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial Alex].dbo.EmployeeSalary
ORDER BY EmployeeID

SELECT EmployeeID, FirstName, Age
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM [SQL Tutorial Alex].dbo.EmployeeSalary
ORDER BY EmployeeID

/* Alex the Analyst Video: https://www.youtube.com/watch?v=Twusw__OzA8&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=9
Topic: Case Statement
*/

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics

SELECT FirstName, LastName, Age
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics

SELECT FirstName, LastName, Age
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE Age is NOT NULL

SELECT FirstName, LastName, Age
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age

SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'
END
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'
END
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley'
	ELSE 'Baby'
END
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age


SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'
END
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE Age is NOT NULL
ORDER BY Age


SELECT*
FROM [dbo].[EmployeeDemographics]
JOIN [dbo].[EmployeeSalary]
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT FirstName, LastName, JobTitle, Salary
FROM [dbo].[EmployeeDemographics]
JOIN [dbo].[EmployeeSalary]
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID


SELECT FirstName, LastName, JobTitle, Salary,
CASE
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * .10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * .05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * .000001)
	ELSE Salary + (Salary * .03)
END AS SalaryAfterRaise
FROM [dbo].[EmployeeDemographics]
JOIN [dbo].[EmployeeSalary]
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID



/* Alex the Analyst Video: https://www.youtube.com/watch?v=tYBOMw7Ob8E&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=10
Topic: Having Clause
*/

SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle


SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE COUNT(JobTitle)>1
GROUP BY JobTitle


SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(JobTitle)>1
GROUP BY JobTitle


SELECT JobTitle, COUNT(JobTitle)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle)>1


SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
ORDER BY AVG(Salary)
--HAVING COUNT(JobTitle)>1


SELECT JobTitle, AVG(Salary)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
JOIN [SQL Tutorial Alex].dbo.EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary)



/* Alex the Analyst Video: https://www.youtube.com/watch?v=bhnrIforc7s&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=11
Topic: Updating/Deleting Data
*/
SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics


SELECT EmployeeID, Count(EmployeeID)
FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
GROUP BY EmployeeID
HAVING COUNT(EmployeeID)>1

WITH CTE AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY FirstName ORDER BY (SELECT 0)) AS rn
    FROM [dbo].[EmployeeDemographics]
)
DELETE FROM CTE WHERE rn > 1;



UPDATE [SQL Tutorial Alex].dbo.EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'

UPDATE [SQL Tutorial Alex].dbo.EmployeeDemographics
SET Age= 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'


UPDATE [SQL Tutorial Alex].dbo.EmployeeDemographics
SET Age= 31, Gender = 'Female'
WHERE FirstName = 'Holly' AND LastName = 'Flax'


DELETE FROM [SQL Tutorial Alex].dbo.EmployeeDemographics
WHERE EmployeeID = 1005


/* Alex the Analyst Video: https://www.youtube.com/watch?v=Dk7he_yEs4U&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=12
Topic: Aliasing
*/

SELECT *
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics]


SELECT FirstName AS Fname
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics]

SELECT FirstName + ' ' + LastName AS Fullname
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics]

SELECT AVG(Age) AS AvgAge
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics]

SELECT Demo.EmployeeID
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] AS Demo

SELECT Demo.EmployeeID, Sal.Salary
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] AS Demo
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID



	SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] a
LEFT JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN [SQL Tutorial Alex].[dbo].[WareHouseEmployeeDemographics] C
	ON a.EmployeeID = c.EmployeeID



	SELECT a.EmployeeID, a.FirstName, a.FirstName, b.JobTitle, c.Age
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] a
LEFT JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] b
	ON a.EmployeeID = b.EmployeeID
LEFT JOIN [SQL Tutorial Alex].[dbo].[WareHouseEmployeeDemographics] C
	ON a.EmployeeID = c.EmployeeID





	/* Alex the Analyst Video: https://www.youtube.com/watch?v=D6XNlTfglW4&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=13
Topic: Partition By
*/

SELECT*
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics]

SELECT*
FROM [SQL Tutorial Alex].[dbo].[EmployeeSalary]





SELECT*
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID


SELECT FirstName, LastName, Salary, Count(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID


SELECT FirstName, LastName, Salary, Count(Gender) OVER (PARTITION BY Gender) as TotalGender
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID


SELECT FirstName, LastName, Salary, Count(Gender), Gender
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary


SELECT Gender, Count(Gender)
FROM [SQL Tutorial Alex].[dbo].[EmployeeDemographics] dem
JOIN [SQL Tutorial Alex].[dbo].[EmployeeSalary] sal
	ON dem.EmployeeID = sal.EmployeeID
GROUP BY Gender