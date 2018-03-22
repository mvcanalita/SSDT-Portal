CREATE TABLE [dbo].[UserMiscInfo]
(
	[UserMiscInfoId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [UserInfoId] INT NOT NULL, 
    [Education] VARCHAR(80) NULL, 
    [School] VARCHAR(50) NULL, 
    [Achievements] VARCHAR(100) NULL, 
    [SchoolYear] VARCHAR(100) NULL, 
    [Skills] VARCHAR(50) NULL, 
    [Hobbies] VARCHAR(50) NULL, 
    [Motto] VARCHAR(50) NULL, 
    [AboutMe] VARCHAR(MAX) NULL
)

GO

CREATE INDEX [IX_UserMiscInfo_UserInfoId] ON [dbo].[UserMiscInfo] (UserInfoId)
