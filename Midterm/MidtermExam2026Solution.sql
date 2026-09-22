USE Midterm2025
-- Question 1: Create the Logins table with a foreign key to Employees
CREATE TABLE [dbo].[Logins](
    [ID] [int] PRIMARY KEY NOT NULL,
    [UserName] [varchar](100) NOT NULL,
    [PasswordHash] [binary](128) NULL,
    [LastLogin] [datetime] NULL,
    [EmployeeID] [int] NOT NULL,
    CONSTRAINT FK_Logins_Employees FOREIGN KEY ([EmployeeID]) 
    REFERENCES [dbo].[Employees] ([EmployeeID]));
-- Question 2: Remove John Smith (EmployeeID 1)
-- Note: Assuming EmployeeID 1 is the primary key for the first employee
DELETE FROM [dbo].[Employees]
WHERE [EmployeeID] = 1;

-- Question 3: Add yourself to the Employee table and parent tables
-- We must first add a record to the Address table (parent table) because AddressID is a foreign key in Employees
INSERT INTO [dbo].[Address] ([ID], [Address1], [City], [Province], [PostalCode])
VALUES (100, '25-2915 Parliament Avenue', 'Regina', 'SK', 'S4S2L3');

INSERT INTO [dbo].[Employees] ([EmployeeID], [FirstName], [LastName], [Email], [Phone], [AddressID], [HireDate])
VALUES (999, 'Md Alamgir', 'Hossain', 'hossain8078@saskpolytech.ca', '6395253496', 100, GETDATE());

/* Answer: I needed to add a record to the Address table because the AddressID in the 
Employees table is a foreign key. Due to referential integrity, a valid address 
must exist in the parent table (Address) before it can be referenced in the child table (Employees).
*/
-- Question 4: Update Christin Gonzalez's last name to Ferguson
UPDATE [dbo].[Customers]
SET [LastName] = 'Ferguson'
WHERE [FirstName] = 'Christin' AND [LastName] = 'Gonzalez';
--(There is no custermer named 'Christin', 
--We have two first name similar to this, Christine (ID-39) and Christina (ID-33)
--if we consider last name Gonzalez (ID-33) (Christina Gonzalez) 
--address will be 789 Cedar Rd mismatch with quesion address 999 Maple Rd.
-- if we consider address (999 Maple Rd) is correct (ID-39) First Name (Christine) and last name (Torres)
--Therefore, we found a clear mismatch and confusion on this question.
-- If I run query with first Name Christin and last Name Gonzalez, no row affected.
-- Finally, I assumed Christin is Christina. I ran query Gonzalez Replaced by Ferguson (ID-33)

USE Midterm2025
SELECT * FROM [dbo].[Customers]
SELECT * FROM [dbo].[Address]
--(I used this query to see my change)


--Section 2: Entity Relationship Diagrams
--5) Login Cardinality: 1 Employee has 1 and only 1 Login. In the ERD, this is a 1:1 relationship.
--(Note: there is no login table in ERD)
--6) Equipment and Rentals Cardinality: One piece of equipment can be rented many times (1:N), but each rental record refers to one piece of equipment.
--7) Customers and Address Cardinality: One address can be associated with multiple customers (1:N).
-- (Note- In ERD, sign to connect Address table and Customers table show same, that is confusing.
--8) Equipment_To_Categories Keys: The keys in this table are an example of b. Composite Keys because both EquipmentID and CategoryID together form the primary key.

-- Question 9: Find all equipment with 'Saw' in the name
SELECT [EquipmentName],[RentalRate],[Available]
FROM [dbo].[Equipment]
WHERE [EquipmentName] LIKE '%Saw%' AND [Available]>0
Order by RentalRate DESC;
SELECT * FROM [dbo].[Equipment]
--(Note: I considered both Saw and Available more than zero)

-- Question 10a: Query for the largest payment recorded using a nested subquery
SELECT [PaymentDate],[Amount] 
FROM [dbo].[RentalPayments]
WHERE [Amount] = (SELECT MAX([Amount]) FROM [dbo].[RentalPayments]);

-- Question 10b: Count of payments greater than the average historical payment
SELECT COUNT(*) AS [HigherThanAverageCount]
FROM [dbo].[RentalPayments]
WHERE [Amount] > (SELECT AVG([Amount]) FROM [dbo].[RentalPayments]);

-- Question 11: Full name and address for customers in Alberta (AB)
SELECT 
    [cas].[FirstName] + ' ' + [cas].[LastName] AS [Full Name],
    [add].[Address1],
    [add].[Address2],
    [add].[City],
    [add].[PostalCode] AS [Postal Code],
    [add].[Province]
FROM [dbo].[Customers] AS [cas]
INNER JOIN [dbo].[Address] AS [add] ON [cas].[AddressID] = [add].[ID]
WHERE [add].[Province] = 'AB';

-- Question 12: Difference in days multiplied by RentalRate
SELECT 
    [ren].[RentalID],
    DATEDIFF(day, [ren].[RentalDate], [ren].[ReturnDate]) AS [RentalDays],
    (DATEDIFF(day, [ren].[RentalDate], [ren].[ReturnDate]) * [eq].[RentalRate]) AS [TotalEstimate]
FROM [dbo].[Rentals] AS [ren]
INNER JOIN [dbo].[Equipment] AS [eq] ON [ren].[EquipmentID] = [eq].[EquipmentID];