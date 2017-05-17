CREATE TABLE [dbo].[Table]
(
	[userId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [userName] VARCHAR(50) NOT NULL, 
    [userPassword] VARCHAR(20) NOT NULL, 
    [userEmail] VARCHAR(25) NOT NULL, 
    [userPhoneN] VARCHAR(20) NOT NULL, 
    [userPhoto] VARCHAR(50) NULL
)
