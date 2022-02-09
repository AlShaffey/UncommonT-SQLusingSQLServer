CREATE PROCEDURE [Test].[AddCustomer]
	@name nchar(40)
AS
	INSERT INTO [Test].[Customer] (Name)
	VALUES(@name)