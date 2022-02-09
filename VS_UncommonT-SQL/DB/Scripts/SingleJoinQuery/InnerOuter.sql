
DECLARE @left TABLE
 (
	 [Id] INT,
	 [Name] NCHAR(30)
 ) 
 DECLARE @right TABLE
 (
	 [Id] INT,
	 [Name] NCHAR(30)
 )

Insert @left
SELECT	1	[Id],	'Left 1'	[Name]
UNION
SELECT	2	[Id],	'Left 2'	[Name]
UNION
SELECT	3	[Id],	'Left 3'	[Name]

Insert @right
SELECT	10	[Id],	'Right 10'	[Name]
UNION
SELECT	2	[Id],	'Right 2'	[Name]
UNION
SELECT	30	[Id],	'Right 3'	[Name]

SELECT	*
FROM
	@left	l
	FULL JOIN
	@right	r
	ON	l.[Id]	=	r.[Id]
WHERE
	---- LEFT JOIN
	--l.[Id]	=	r.[Id]	OR	r.[Id] IS NULL
	-- RIGHT JOIN
	--l.[Id]	=	r.[Id]	OR	l.[Id] IS NULL
	---- JOIN
	l.[Id]	IS NOT NULL	AND	r.[Id]	IS NOT NULL	