CREATE TABLE [Asterisk].[Item]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NCHAR(10) NOT NULL, 
    [TypeId] INT NOT NULL
    FOREIGN KEY ([TypeId]) REFERENCES [Asterisk].[ItemType]([Id])
)
