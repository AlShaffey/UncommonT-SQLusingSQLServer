# UncommonT-SQLusingSQLServer
Some tips and tricks about T-SQL using Microsoft SQL Server.

005-Database project, https://visualstudio.microsoft.com/vs/features/ssdt/
	Develop, build, test and publish
	Don't use EF migration on production, https://docs.microsoft.com/en-us/ef/core/managing-schemas/migrations/?tabs=dotnet-core-cli
		That's all there is to it - your application is ready to run on your new database, and you didn't need to write a single line of SQL. Note that this way of applying migrations is ideal for local development, but is less suitable for production environments - see the Applying Migrations page for more info.
010-Schema, https://www.sqlshack.com/a-walkthrough-of-sql-schema/
020-Lookup
025-Set-based approach
028-Table variable
029-JOIN short cuts
030-Merge
040-Asterisk
050-Unique flag
060-Single join query

