CREATE TABLE login
(
	[email] NVARCHAR(MAX) NOT NULL PRIMARY KEY, 
    [password] NCHAR(25) NOT NULL, 
    [typ] VARCHAR(50) NOT NULL, 
    [Question ] NVARCHAR(MAX) NOT NULL, 
    [Answer] NVARCHAR(50) NOT NULL

);

