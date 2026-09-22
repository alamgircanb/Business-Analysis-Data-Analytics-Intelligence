--Question 1: Answere
--drop table
Use SaskPoly
DROP TABLE Timesheet;
DROP TABLE Employee;
DROP TABLE Job;

--Question 2:
--Order of dropping: 1. Timesheet (child), 2. Employee (parent), 3. Job (grandparent).
--Importance of order: Yes, the order is important. We must drop the "child" tables (those containing foreign keys) before the "parent" tables to avoid violating referential integrity constraints.

--Question 3: creating three table named job, employee, and timesheet
Use Employees
-- to create Job table
CREATE TABLE Job (
    JobCode INT PRIMARY KEY,
    [Description] VARCHAR(25),
    RayRate NUMERIC(4,2));
-- to create Employee table
CREATE TABLE Employee (
    EmpID Numeric(5) PRIMARY KEY,
    SIN INT NOT NULL UNIQUE,
    LastName VARCHAR(25) NOT NULL,
    FirstName VARCHAR(25),
    Street VARCHAR(30),
    City VARCHAR(25),
    Province CHAR(2),
    PostalCode VARCHAR(7),
    JobCode INT,
    IncomeTax CHAR(1),
    BirthDate DATE,
    HireDate DATE,
    JobCodeDate DATE,
    FOREIGN KEY (JobCode) REFERENCES Job(JobCode));
--to create Timesheet table
CREATE TABLE Timesheet (
    EmpID Numeric,
    PayWeekEndDate DATE,
    RegHours INT,
    OTimeHours NUMERIC(5,2),
    PRIMARY KEY (EmpID, PayWeekEndDate));
    USE Employees
--to insert data into Job Table
INSERT INTO Job (JobCode, [Description], RayRate)
VALUES
(1000, 'Manager', 32.4),
(2000, 'Cashier', 11.63),
(3000, 'Stockperson', 8.89),
(4000, 'Baker', 18.91),
(5000, 'Butcher', 19.26),
(6000, 'Cleaner', 6.75),
(7000, 'Pharmacist', 28.17),
(8000, 'Assistant Baker', 12.58);

--to insert data into EMPLOYEE table
INSERT INTO Employee (EmpID, SIN, LastName, FirstName, Street, City, Province, PostalCode, JobCode, IncomeTax, BirthDate, HireDate, JobCodeDate)
VALUES
(97319, 516303417, 'Novak', 'Gerry', '6803 Park Ave.', 'Moose Jaw', 'SK', 'S6H 1X7', 3000, 'N', '1986-08-24', '2003-07-07', '2003-07-07'),
(33982, 867481381, 'Boychuk', 'Robin', '117 East Broadway', 'Moose Jaw', 'SK', 'S6H 3P5', 5000, 'Y', '1971-03-04', '1998-10-11', '1998-10-11'),
(51537, 112893584, 'Smith', 'Kim', '9745 University Drive', 'Regina', 'SK', 'S4P 7A3', 2000, 'Y', '1982-11-29', '2001-12-02', '2001-12-02'),
(41822, 717505366, 'Miller', 'Chris', '72 Railway Ave.', 'Pense', 'SK', 'S0T 1K4', 2000, 'Y', '1968-11-15', '1985-02-19', '1985-02-19'),
(3571, 374853129, 'Hashimoto', 'Jo', '386 High Street', 'Tuxford', 'SK', 'S0L 8V6', 1000, 'Y', '1956-06-23', '1980-03-20', '1999-08-30'),
(85833, 466128562, 'Singh', 'Lindsey', '1216 Willow Cres.', 'Pasqua', 'SK', 'S0H 5T8', 7000, 'Y', '1975-03-15', '2002-07-27', '2002-07-27'),
(81216, 615917448, 'Hansen', 'Jaimie', '95 Lakeshore Blvd.', 'Caronport', 'SK', 'S0T 3S7', 8000, 'Y', '1983-03-04', '2002-05-21', '2002-05-21'),
(32177, 306114858, 'DaSilva', 'Robbie', '4319 Main St.', 'Moose Jaw', 'SK', 'S6H 2M2', 4000, 'Y', '1951-02-18', '1983-07-07', '1992-09-15'),
(52421, 936654021, 'O''Day', 'Ashley', '27 High St.', 'Tuxford', 'SK', 'S0L 8V6', 6000, 'Y', '1963-07-31', '1997-11-08', '1997-11-08'),
(72690, 655971502, 'Wong', 'Jodie', '59 Oslo Square', 'Moose Jaw', 'SK', 'S6H 2H9', 6000, 'N', '1987-01-01', '2003-08-26', '2003-08-26'),
(72201, 635111876, 'Ramirez', 'Kelly', '1015 Brunswick Lane', 'Moose Jaw', 'SK', 'S6H 4T5', 3000, 'N', '1986-09-29', '2003-08-26', '2003-08-26');

--to insert data values into TIMESHEET
INSERT INTO Timesheet (EmpID, PayWeekEndDate, RegHours, OTimeHours)
VALUES
(72690, '2003-05-23', 36, 0.00),
(52421, '2003-05-23', 22, 0.00),
(85833, '2003-05-23', 37.5, 0.50),
(81216, '2003-05-23', 40, 0.00),
(33982, '2003-05-23', 40, 0.00),
(32177, '2003-05-23', 40, 3.75),
(51537, '2003-05-23', 27, 0.00),
(41822, '2003-05-23', 40, 0.00),
(3571, '2003-05-23', 40, 0.00),
(72201, '2003-05-30', 18, 0.00),
(52421, '2003-05-30', 40, 4.50),
(85833, '2003-05-30', 22, 0.00),
(33982, '2003-05-30', 38.25, 0.00),
(32177, '2003-05-30', 40, 2.25),
(41822, '2003-05-30', 38, 1.25),
(3571, '2003-05-30', 40, 0.00);

--Question 4.1: Creating earnings  table
Use Employees
CREATE TABLE Earnings (
    EmpID Numeric(5),
    PayWeekEndDate Date,
    RegEarnings Numeric(6,2),
    OTimeEarnings Numeric(6,2),
    CONSTRAINT pk_earnings PRIMARY KEY (EmpID, PayWeekEndDate),
    CONSTRAINT fk_earnings_emp FOREIGN KEY (EmpID) REFERENCES Employee(EmpID));
--Question 4.2: creating deductions table
    CREATE TABLE Deductions (
    EmpID Numeric(5),
    PayWeekEndDate Date,
    EI Numeric(5,2),
    CPP Numeric(5,2),
    UnionDues Numeric(5,2),
    PensionPlan Numeric(5,2),
    IncomeTax Numeric(6,2),
    CONSTRAINT pk_deductions PRIMARY KEY (EmpID, PayWeekEndDate), 
    CONSTRAINT fk_deductions_emp FOREIGN KEY (EmpID) REFERENCES Employee(EmpID) );

--05. In a comment, list the order in which you created these 2 tables. Is the order in which these 2 tables were created important?
    --Order of creation: 1. Earnings, 2. Deductions (or vice versa, as they do not depend on each other).
    --Is the order important? No, the order between these two specific tables is not important because neither references the other as a foreign key.
--06. Would you be able to create the Earnings and the Deductions tables before you had created the Job, Employee, and Timesheet tables? Explain.
    --Dependency Check: I cannot create Earnings and Deductions before Job, Employee, and Timesheet. This is because both new tables require the EmpID from the Employee table to establish their foreign key relationships.
   
--Additional: did not mention in requierement but I need to do it to show next question answer.
-- To insert data values into earnings table
Use Employees
-- Insert records into Earnings table
INSERT INTO earnings VALUES (33982,'23-May-03',770.4,0);
INSERT INTO earnings VALUES (33982,'30-May-03',736.7,0);
INSERT INTO earnings VALUES (51537,'23-May-03',314.01,0);
INSERT INTO earnings VALUES (41822,'23-May-03',465.2,0);
INSERT INTO earnings VALUES (41822,'30-May-03',441.94,29.08);
INSERT INTO earnings VALUES (3571,'23-May-03',1296,0);
INSERT INTO earnings VALUES (3571,'30-May-03',1296,0);
INSERT INTO earnings VALUES (85833,'23-May-03',1056.38,28.17);
INSERT INTO earnings VALUES (85833,'30-May-03',619.74,0);
INSERT INTO earnings VALUES (81216,'23-May-03',503.2,0);
INSERT INTO earnings VALUES (32177,'23-May-03',756.4,141.83);
INSERT INTO earnings VALUES (32177,'30-May-03',756.4,85.1);
INSERT INTO earnings VALUES (52421,'23-May-03',148.5,0);
INSERT INTO earnings VALUES (52421,'30-May-03',270,60.75);
INSERT INTO earnings VALUES (72690,'23-May-03',243,0);
INSERT INTO earnings VALUES (72201,'30-May-03',160.02,0);
-- Insert data values into Deductions table
INSERT INTO Deductions VALUES (33982,'23-May-03',11.56,19.26,38.52,7.7,130.97);
INSERT INTO Deductions VALUES (33982,'30-May-03',11.05,18.42,36.84,7.37,125.24);
INSERT INTO Deductions VALUES (51537,'23-May-03',4.71,7.85,15.7,3.14,53.38);
INSERT INTO Deductions VALUES (41822,'23-May-03',6.98,11.63,23.26,4.65,79.08);
INSERT INTO Deductions VALUES (41822,'30-May-03',7.07,11.78,23.55,4.71,80.07);
INSERT INTO Deductions VALUES (3571,'23-May-03',19.44,32.4,64.8,12.96,220.32);
INSERT INTO Deductions VALUES (3571,'30-May-03',19.44,32.4,64.8,12.96,220.32);
INSERT INTO Deductions VALUES (85833,'23-May-03',16.27,27.11,54.23,10.85,184.37);
INSERT INTO Deductions VALUES (85833,'30-May-03',9.3,15.49,30.99,6.2,105.36);
INSERT INTO Deductions VALUES (81216,'23-May-03',7.55,12.58,25.16,5.03,85.54);
INSERT INTO Deductions VALUES (32177,'23-May-03',13.47,22.46,44.91,8.98,152.7);
INSERT INTO Deductions VALUES (32177,'30-May-03',12.62,21.04,42.08,8.42,143.06);
INSERT INTO Deductions VALUES (52421,'23-May-03',2.23,3.71,7.43,1.49,25.25);
INSERT INTO Deductions VALUES (52421,'30-May-03',4.96,8.27,16.54,3.31,56.23);
INSERT INTO Deductions VALUES (72690,'23-May-03',3.65,6.08,12.15,2.43,null);
INSERT INTO Deductions VALUES (72201,'30-May-03',2.4,4,8,1.6,null);

--07. Write the SQL code to display all the records in the Earnings table.
SELECT * FROM earnings;

--08. Write the SQL code to show the structure of the Deductions table.

EXEC sp_help 'Deductions';

--09. Write the SQL code to display today’s date. (Hint there is a function for this). 

SELECT GETDATE() AS [Today's Date];

--10. For this question assume there are employees who live in NF (Newfoundland). Write the SQL code to change the province to NL for these employees only.
USE Employees
UPDATE Employee
SET Province = 'NL'
WHERE Province = 'NF';

--11. Write the SQL code to delete from the Employee table only the records of those employees who do not pay income tax. For this question you can ignore/assume there are no child records in other tables.

DELETE FROM Employee 
WHERE EmpID IN (
    SELECT EmpID 
    FROM Deductions 
    WHERE IncomeTax IS NULL);
--this code will not work
-- To make sure this workExecution order:
--Run these statements in this specific order to satisfy the database constraints:

--1.Delete from Earnings first: Remove the payment records for those specific employees.
    --SQL
    --DELETE FROM Earnings 
    --WHERE EmpID IN (SELECT EmpID FROM Deductions WHERE IncomeTax IS NULL);
--2.Delete from Deductions second: Remove the tax records for those specific employees.
    --SQL
    --DELETE FROM Deductions 
    --WHERE IncomeTax IS NULL;
--3.Delete from Employee last: Now that the child records are gone, you can remove the employees.
    --SQL
    --DELETE FROM Employee 
    --WHERE EmpID IN (SELECT EmpID FROM Deductions WHERE IncomeTax IS NULL);
