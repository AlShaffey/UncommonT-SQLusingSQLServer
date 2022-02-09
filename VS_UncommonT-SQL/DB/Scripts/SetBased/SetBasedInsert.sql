
TRUNCATE TABLE [SetBased].[CustomerType]

SELECT	*
FROM	[SetBased].[CustomerType]	

INSERT [SetBased].[CustomerType] (Id, Name)
SELECT 1, 'Credit'
UNION
SELECT 2, 'Debit'

SELECT	*
FROM	[SetBased].[CustomerType]	