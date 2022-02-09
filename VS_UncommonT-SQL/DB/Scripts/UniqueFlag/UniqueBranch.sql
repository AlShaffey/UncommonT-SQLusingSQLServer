
--ALTER DATABASE DB SET ANSI_NULL_DEFAULT ON

--INSERT INTO [UniqueFlag].[Company]
--VALUES ('X')

--SELECT * FROM [UniqueFlag].[Company]

TRUNCATE TABLE [UniqueFlag].[BRANCH]

INSERT INTO [UniqueFlag].[BRANCH]
VALUES ('A', 1, 0)

INSERT INTO [UniqueFlag].[BRANCH]
VALUES ('B', 1, 1)

INSERT INTO [UniqueFlag].[BRANCH]
VALUES ('C', 1, 1)

insert into [uniqueflag].[branch]
values ('d', 1, 2)

INSERT INTO [UniqueFlag].[BRANCH]
VALUES ('E', 1, 3)


SELECT * FROM [UniqueFlag].BRANCH