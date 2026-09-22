USE Employees
DELETE FROM Employee 
WHERE EmpID = 1350;--This Id does not exist.

/* When trying to delete a non-existent employee ID like 1350, 
   the SQL statement DOES execute properly. 
*/