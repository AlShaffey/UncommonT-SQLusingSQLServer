
TRUNCATE TABLE [Merge].[productType]

SELECT * FROM [Merge].[productType]

INSERT [Merge].[productType]
SELECT	4,	'Spare Parts',	1
UNION
SELECT	2,	'Accessory',	1

SELECT * FROM [Merge].[productType]

DECLARE @productType TABLE
 (
	 [Id] INT, -- IDENTITY(1,1),
	 [Name] NCHAR(30),
	 [Active] BIT
 ) 

Insert @productType
SELECT	1,	'Raw',			1
UNION
SELECT	2,	'Accessory',	0
UNION
SELECT	3,	'Service',		1

INSERT [Merge].[productType]
SELECT [s].*
FROM
	[Merge].[productType]	[d]
	RIGHT JOIN
	@productType			[s]
	ON	[d].Id	=	[s].Id
WHERE
	[d].Id	IS NULL
	
UPDATE [d]
SET
	[d].[Name]		=	[s].[Name],
	[d].[Active]	=	[s].[Active]
FROM
	[Merge].[productType]	[d]
	JOIN
	@productType			[s]
	ON	[d].[Id]	=	[s].[Id]

	
DELETE [d]
FROM
	[Merge].[productType]	[d]
	LEFT JOIN
	@productType			[s]
	ON	[d].Id	=	[s].Id
WHERE
	[s].[Id]	IS NULL

SELECT * FROM [Merge].[productType]