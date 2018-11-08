CREATE TABLE [dbo].[Departments]
(
	[ID]	INT IDENTITY (1, 1) NOT NULL,
	[Name]      NVARCHAR (MAX) NOT NULL, 
    [Expenses] FLOAT NULL, 
    [NumEmployees] INT NULL DEFAULT 0, 
    CONSTRAINT [PK_Departments] PRIMARY KEY ([ID]),

)
