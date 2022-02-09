
TRUNCATE TABLE [Merge].[productType]

SELECT * FROM [Merge].[productType]

INSERT [Merge].[productType]
SELECT	4,	'Spare Parts',	1
UNION
SELECT	2,	'Accessory',	1

SELECT * FROM [Merge].[productType]

MERGE [Merge].[productType] AS Target
USING 
    (
        SELECT	1   [Id],	'Raw'       [Name],	1   [Active]
        UNION
        SELECT	2   [Id],	'Accessory' [Name], 0   [Active]
        UNION
        SELECT	3   [Id],	'Service'   [Name],	1   [Active]
     ) AS Source
ON
    Source.[Id]     = Target.[Id]
    AND
    Source.[Name]   = Target.[Name]
    
-- For Inserts
WHEN NOT MATCHED BY Target THEN
    INSERT ([Id],       [Name],         [Active]) 
    VALUES (Source.[Id] ,Source.[Name], Source.[Active])
    
-- For Updates
WHEN MATCHED THEN UPDATE SET
    Target.[Name]	    = Source.[Name],
    Target.[Active]		= Source.[Active]
    
-- For Deletes
WHEN NOT MATCHED BY Source THEN
    DELETE;

SELECT * FROM [Merge].[productType]