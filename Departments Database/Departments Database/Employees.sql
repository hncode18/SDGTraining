CREATE TABLE [dbo].[Employees]
(
	[ID] INT IDENTITY (1, 1) NOT NULL , 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [Wage] FLOAT NULL DEFAULT 11.25, 
    [Position] NVARCHAR(MAX) NULL, 
	[DepartmentID] INT NOT NULL,
    [Age] INT NULL, 
    CONSTRAINT [PK_Employees] PRIMARY KEY ([ID]),
	CONSTRAINT [FK_dbo.Employees_dbo.Departments_ID] FOREIGN KEY ([DepartmentID])
		REFERENCES [dbo].[Departments] ([ID]) ON DELETE CASCADE
)
