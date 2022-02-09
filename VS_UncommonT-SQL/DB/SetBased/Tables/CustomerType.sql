CREATE TABLE [SetBased].[CustomerType] (
    [Id]   INT        NOT NULL,
    [Name] NCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);



GO
CREATE TRIGGER [SetBased].[CustomerTypeAfterInsert]
	ON [SetBased].[CustomerType]
	FOR INSERT
	AS
	BEGIN
		DECLARE
			@count INT = 0
			,
			@textualCount NVARCHAR(10) = ''

		SELECT @count = COUNT(*)
		FROM inserted

		SELECT @textualCount = STR(@count,2) 

		PRINT 'Total inserted: ' + @textualCount
	END