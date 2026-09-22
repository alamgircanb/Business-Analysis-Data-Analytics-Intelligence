USE Employees
-- Attempting to delete employee 32177 
DELETE FROM Employee 
WHERE EmpID = 32177;

/*The execution failed and returned a Foreign Key constraint error (likely a "Reference Constraint" violation).

The record was not deleted. The Timesheet table contains records associated with EmpID 32177.
In the database schema, the EmpID in the Timesheet table is a Foreign Key that references the Employee table.
SQL Server enforces referential integrity. This prevents you from deleting a parent record (Employee) if child records (Timesheets) 
still exist, as those timesheets would become "orphaned" with no valid employee to point to.*/