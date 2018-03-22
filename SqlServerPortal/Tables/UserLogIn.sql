CREATE TABLE [dbo].[UserLogIn]
(
	[userid] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [username] VARCHAR(25) NOT NULL, 
    [password] VARCHAR(25) NOT NULL, 
    [hashCode] VARCHAR(MAX) NOT NULL, 
    [saltCode] VARCHAR(MAX) NOT NULL,
	[UserGroupId] int not null, 
    [isLocked] BIT NOT NULL, 
    [lastLog] DATETIME NULL,
	CONSTRAINT UName UNIQUE (username)
)

GO

CREATE INDEX [IX_UserLogIn_username] ON [dbo].[UserLogIn] (username)
