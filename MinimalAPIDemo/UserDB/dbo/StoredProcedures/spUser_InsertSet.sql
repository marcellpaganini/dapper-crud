CREATE PROCEDURE [dbo].[spUser_InsertSet]
	@people BasicUDT readonly
AS
BEGIN
	SET NOCOUNT ON;

	INSERT INTO dbo.[User] (FirstName, LastName)
		SELECT FirstName, LastName
			FROM @people;
END