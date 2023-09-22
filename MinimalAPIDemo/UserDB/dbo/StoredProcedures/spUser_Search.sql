CREATE PROCEDURE [dbo].[spUser_Search]
	@searchTerm VARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Id, FirstName, LastName
		FROM dbo.[User]
		WHERE FirstName LIKE '%' + @searchTerm + '%'
			OR LastName LIKE '%' + @searchTerm + '%';
END
