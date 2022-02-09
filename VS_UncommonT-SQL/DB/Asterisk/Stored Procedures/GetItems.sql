CREATE PROCEDURE [Asterisk].[GetItems]
AS
	SELECT *
	FROM
		[Asterisk].[Item]		[i]
		JOIN
		[Asterisk].[ItemType]	[it]
		ON [i].[TypeId]	=	[it].Id
GO