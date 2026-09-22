Use Employees;
CREATE TABLE Job (
    JobCode INT PRIMARY KEY,
    [Description] VARCHAR(25),
    RayRate Numeric(4,2)
);

CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
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
    FOREIGN KEY (JobCode) REFERENCES Job(JobCode) 
);

CREATE TABLE Timesheet (
    EmpID INT,
    PayWeekEndDate DATE,
    RegHours INT,
    OTimeHours NUMERIC(5,2),
    PRIMARY KEY (EmpID, PayWeekEndDate),
    FOREIGN KEY (EmpID) REFERENCES Employee(EmpID)
);
--The tables must be created in this order due to referential integrity or dependency.
--Job Table must be created first because Employee contains a Foreign Key (JobCode) that references it. 
--Employee must be created before Timesheet because the Timesheet table uses EmpID as a Foreign Key to link to the Employee table.
--We must create Job table first to use it JobCode fields as a Foreign Key for Employee Table and then We will create Employee Table 
--because Timesheet table will reference EmpID Field from Employee.

-- 2. INSERT JOBS (Run this first!)
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

--INSERT EMPLOYEES
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

--INSERT DATA VALUES INTO TIMESHEETS
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