
/*
Alex the Analyst Video: https://www.youtube.com/watch?v=RSlqWnP-Dy8&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=3

*/
Table 1 Query:
Create Table EmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

Table 2 Query:
Create Table EmployeeSalary 
(EmployeeID int, 
JobTitle varchar(50), 
Salary int
)


INSERT INTO EmployeeDemographics VALUES
(1001, 'Jim', 'Halpert', 30, 'Male'),
(1002, 'Pam', 'Beasley', 30, 'Female'),
(1003, 'Dwight', 'Schrute', 29, 'Male'),
(1004, 'Angela', 'Martin', 31, 'Female'),
(1005, 'Toby', 'Flenderson', 32, 'Male'),
(1006, 'Michael', 'Scott', 35, 'Male'),
(1007, 'Meredith', 'Palmer', 32, 'Female'),
(1008, 'Stanley', 'Hudson', 38, 'Male'),
(1009, 'Kevin', 'Malone', 30, 'Male')

Insert Into EmployeeSalary VALUES
(1001, 'Salesman', 45000),
(1002, 'Receptionist', 36000),
(1003, 'Salesman', 63000),
(1004, 'Accountant', 47000),
(1005, 'HR', 50000),
(1006, 'Regional Manager', 65000),
(1007, 'Supplier Relations', 41000),
(1008, 'Salesman', 48000),
(1009, 'Accountant', 42000)




/*
Alex the Analyst Video: https://www.youtube.com/watch?v=A9TOuDZTPDU&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=5
Topic: Select Statement
*, Top, Distinct, Count, As, Max,  Min, Avg
*/

SELECT *
FROM EmployeeDemographics;

SELECT Top 5*
FROM EmployeeDemographics;

SELECT DISTINCT (EmployeeID)
FROM EmployeeDemographics;

SELECT DISTINCT (Gender)
FROM EmployeeDemographics;

SELECT COUNT (LastName)
FROM EmployeeDemographics;

SELECT COUNT (LastName) AS LastNameCount
FROM EmployeeDemographics;

SELECT * 
FROM EmployeeSalary;

SELECT MAX(Salary)
FROM EmployeeSalary;

SELECT MIN(Salary)
FROM EmployeeSalary;

SELECT AVG(Salary)
FROM EmployeeSalary;


SELECT *
FROM [SQL Tutorial Alex].dbo.EmployeeSalary


/* 
Alex the Analyst Video: https://www.youtube.com/watch?v=A9TOuDZTPDU&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=5
Topics:
Where Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'

SELECT *
FROM EmployeeDemographics
WHERE Age>30

SELECT *
FROM EmployeeDemographics
WHERE Age>=30

SELECT *
FROM EmployeeDemographics
WHERE Age<32

SELECT *
FROM EmployeeDemographics
WHERE Age<=32 AND Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE Age<=32 OR Gender = 'Male'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ott%'

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName = 'Jim' 

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael') 


/*  Alex the Analyst Video: https://www.youtube.com/watch?v=LXwfzIRD-Ds&list=PLUaB-1hjhk8FE_XZ87vPPSfHqb6OcM0cF&index=6
Topics:
Group By, Order By
*/
SELECT *
FROM EmployeeDemographics

SELECT Gender
FROM EmployeeDemographics

SELECT DISTINCT (Gender)
FROM EmployeeDemographics

SELECT Gender
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender
ORDER BY CountGender

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender
ORDER BY CountGender DESC

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender
ORDER BY Gender DESC

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age>31
GROUP BY Gender
ORDER BY Gender ASC


SELECT *
FROM EmployeeDemographics
ORDER BY Age


SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC