
TRUNCATE TABLE [Lookup].[IdentityUserType]

SELECT	*
FROM	[Lookup].[IdentityUserType]	

SET IDENTITY_INSERT [DB].[Lookup].[IdentityUserType] ON 
INSERT INTO [Lookup].[IdentityUserType] (Id, Name)
Values(1, 'Admin')
SET IDENTITY_INSERT [DB].[Lookup].[IdentityUserType] OFF

SELECT	*
FROM	[Lookup].[IdentityUserType]	