/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

MERGE INTO Employees AS Target
USING (VALUES
		(1, 'Hoang Nguyen', 11.25, 'Programmer', 1),
		(2, 'John Henry', 11.25, 'Steel Driver', 2),
		(3, 'Harold', 60, 'Manager', 1),
		(4, 'Thomas Paine', 200, 'Lawyer', 2)
)
AS Source (ID, Name, Wage, Position, DepartmentID)
ON Target.ID = Source.ID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, Wage, Position, DepartmentID)
VALUES (Name, Wage, Position, DepartmentID);

MERGE INTO Buildings AS Target
USING (VALUES
		(1, '200 Milne', '1800 SW Campus Way, Corvallis, OR 97331', 200000, 1),
		(2, '300 Milne', '1800 SW Campus Way, Corvallis, OR 97331', 200000, 2)
)
AS Source (Id, Name, Address, PropertyValue, DepartmentID)
ON Target.Id = Source.Id
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, Address, PropertyValue, DepartmentID)
VALUES (Name, Address, PropertyValue, DepartmentID);

MERGE INTO Departments AS Target
USING (VALUES
		(1, 'SDG', 25000, 20),
		(2, 'OSL', 25000, 15)
)
AS Source (ID, Name, MonthlyExpenses, NumEmployees)
ON Target.ID = Source.ID
WHEN NOT MATCHED BY TARGET THEN
INSERT (Name, MonthlyExpenses, NumEmployees)
VALUES (Name, MonthlyExpenses, NumEmployees);