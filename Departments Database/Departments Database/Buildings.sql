CREATE TABLE [dbo].[Buildings]
(
	[Id] INT IDENTITY (1, 1) NOT NULL , 
    [Name] NVARCHAR(MAX) NOT NULL, 
    [Address] NVARCHAR(MAX) NOT NULL, 
    [PropertyValue] DECIMAL(18, 2) NULL, 
	[DepartmentID] INT NOT NULL,
    CONSTRAINT [PK_Table1] PRIMARY KEY ([Id]),
	CONSTRAINT [FK_dbo.Buildings_dbo.Departments_ID] FOREIGN KEY ([DepartmentID])
		REFERENCES [dbo].[Departments] ([ID]) ON DELETE CASCADE
)
