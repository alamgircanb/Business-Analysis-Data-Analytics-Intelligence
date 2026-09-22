USE Employees
--Step 1: Insert the new Job record into the Job table first. 
--This ensures JobCode 88 exists before we try to assign it to employees.

INSERT INTO Job (JobCode, [Description], RayRate)
VALUES (88, 'Instructor', 25.50);

--Step 2: Update the Employee table to change the code.
--Change the JobCode from 20 to 88 for all affected employees.
-- it will find out every JobCode has value 20 in it then will replace the value with 88
UPDATE Employee
SET JobCode = 88
WHERE JobCode = 20; 

--Step 3: Remove the old Job record.
--Now that no employees are linked to JobCode 20, as we replace this code by 88, and this code can be safely deleted.

DELETE FROM Job
WHERE JobCode = 20; 