
TRUNCATE TABLE [SetBased].[CustomerType]

SELECT	*
FROM	[SetBased].[CustomerType]	

INSERT INTO [SetBased].[CustomerType] (Id, Name)
Values(1, 'Credit')

INSERT INTO [SetBased].[CustomerType] (Id, Name)
Values(2, 'Debit')

SELECT	*
FROM	[SetBased].[CustomerType]	