IF NOT EXISTS (SELECT 1 FROM dbo.[User])
BEGIN
	INSERT INTO dbo.[User] (FirstName, LastName)
		VALUES ('John', 'Doe'),
			   ('Jane', 'Smith'),
			   ('Tim', 'Storm'),
			   ('Mary', 'Jones');
END

DELETE FROM dbo.Phone;
INSERT INTO dbo.Phone (Id, PhoneNumber)
	VALUES (1, '555-555-1212');

UPDATE dbo.[User]
	SET CellPhoneId = 1
	WHERE FirstName = 'Jane' AND LastName = 'Smith';


INSERT INTO dbo.Phone (Id, PhoneNumber)
	VALUES (2, '555-555-5889');

UPDATE dbo.[User]
	SET CellPhoneId = 2
	WHERE FirstName = 'Tim' AND LastName = 'Storm';