USE Employees
--Question 01: What are the full names of employees 3571 and 52421?
SELECT EmpId, FirstName +' '+ LastName AS Full_Name FROM Employee
    WHERE EmpID IN (3571 , 52421);

-- Question 02: 2.	List the employee ID of each employee who worked more than 25 regular hours during the pay period that ended on 30 May 2003.
-- Using Timesheet directly for the same period
SELECT DISTINCT EmpID
FROM Timesheet
WHERE PayWeekEndDate = '2003-05-30'
  AND RegHours > 25;
-- we can use subquery
SElECT DISTINCT EmpId FROM Earnings
WHERE PayWeekEndDate = '2003-05-30'
	AND EmpId IN (SELECT EmpID 
				FROM Timesheet
				WHERE RegHours>25
AND Timesheet.PayWeekEndDate=Earnings.PayWeekEndDate)

-- 3. Address pattern matching (8 in 3rd, 6 in 5th)
SELECT * FROM Employee
SELECT FirstName + ' ' + LastName AS FullName
FROM Employee
WHERE Street LIKE '_8_6%';

-- 4. Job Descriptions containing 'E' and ending in 'R' (Case Insensitive)
SELECT JobCode, [Description]
FROM Job
WHERE UPPER([Description]) LIKE '%E%R'
ORDER BY JobCode DESC;

SELECT * FROM Deductions
--5. Average Income Tax deducted for pay period ending 23 May 2003 
SELECT AVG(IncomeTax) AS AverageIncomeTax
FROM Deductions
WHERE PayWeekEndDate = '2003-05-23';


--6. Total count of employees 
SELECT COUNT(*) AS EmployeeCount
FROM Employee;

--7. Total EI and CPP remitted for pay period ending 30 May 2003
SELECT SUM(EI) AS TotalEI, SUM(CPP) AS TotalCPP
FROM Deductions
WHERE PayWeekEndDate = '2003-05-30';

--8. Employee IDs where Income Tax is unknown (NULL)
SELECT EmpID
FROM Deductions
WHERE IncomeTax IS NULL;

--9. Total combined Regular and Overtime hours for 23 May 2003
SELECT SUM(RegHours + OTimeHours) AS TotalHoursCombined
FROM Timesheet
WHERE PayWeekEndDate = '2003-05-23';

--10. List unique cities 
SELECT DISTINCT City
FROM Employee;

-- 11. Surname and Address (Handling Unknowns) 
SELECT LastName, ISNULL(Street, 'Not Available') AS [Address]
FROM Employee
ORDER BY LastName ASC;

--12. Hired in 2002 using BETWEEN (Formatted Date) 
SELECT FirstName + ' ' + LastName AS FullName,
       DATENAME(mm, HireDate) + ' ' + CAST(DAY(HireDate) AS VARCHAR) + ' ' + DATENAME(yy, HireDate) AS HireDate
FROM Employee
WHERE HireDate BETWEEN '2002-01-01' AND '2002-12-31';
--12.with concate
SELECT FirstName + ' ' + LastName AS FullName,
       CONCAT(DATENAME(mm, HireDate), ' ', DAY(HireDate), ' ', DATENAME(yy, HireDate)) AS HireDate
FROM Employee
WHERE HireDate BETWEEN '2002-01-01' AND '2002-12-31';

--13. Hired in 2002 WITHOUT BETWEEN
SELECT FirstName + ' ' + LastName AS FullName,
       DATENAME(mm, HireDate) + ' ' + CAST(DAY(HireDate) AS VARCHAR) + ' ' + DATENAME(yy, HireDate) AS HireDate
FROM Employee
WHERE YEAR(HireDate) = 2002;
--13. with CONCAT
SELECT CONCAT(FirstName, ' ', LastName) AS FullName,
       CONCAT(DATENAME(mm, HireDate), ' ', DAY(HireDate), ' ', DATENAME(yy, HireDate)) AS HireDate
FROM Employee
WHERE YEAR(HireDate) = 2002;

--14. 8% Pay Increase Projection 
SELECT *, RayRate * 1.08 AS Payrate_Increase
FROM Job;

--15. Highest Overtime Hours for 30 May 2003
SELECT MAX(OTimeHours) AS MaxOvertime
FROM Timesheet
WHERE PayWeekEndDate = '2003-05-30';