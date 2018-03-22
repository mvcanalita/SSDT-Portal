CREATE TABLE [dbo].[UserInfo]
(
	[UserInfoId] INT NOT NULL IDENTITY(1,1), 
    [UserLogInId] INT NOT NULL, 
	[UserDepartmentId] int not null,
    [UserFirstName] VARCHAR(25) NOT NULL, 
    [UserLastName] VARCHAR(25) NOT NULL, 
    [UserMiddleName] VARCHAR(25) NOT NULL, 
    [UserAddress] VARCHAR(100) NOT NULL, 
    [Gender] BIT NOT NULL, 
    [Birthdate] DATE NOT NULL,
	[PhotoLocation] varchar(MAX), 
    [isActive] BIT NOT NULL,
	CONSTRAINT [PK_UserInfo] PRIMARY KEY CLUSTERED (
		[UserInfoId] ASC,
		[UserLogInId] ASC,
		[UserFirstName] ASC,
		[UserLastName] ASC,
		[USerMiddleName] ASC
	) WITH (PAD_INDEX=off, STATISTICS_NORECOMPUTE=off, IGNORE_DUP_KEY=off, ALLOW_ROW_LOCKS=on, ALLOW_PAGE_LOCKS=on) ON [PRIMARY]
) on [PRIMARY]
