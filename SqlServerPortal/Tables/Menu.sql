CREATE TABLE [dbo].[Menu]
(
	[MenuId] INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
    [MenuParentId] INT NULL, 
    [MenuName] VARCHAR(50) NOT NULL, 
    [MenuLink] VARCHAR(MAX) NULL, 
    [MenuAgg] VARCHAR(10) NULL, 
    [MenuParam] VARCHAR(10) NULL, 
    [isActive] BIT NOT NULL, 
    CONSTRAINT [FK_Menu_Menu] FOREIGN KEY (MenuParentId) REFERENCES Menu(MenuId)
)

GO

CREATE INDEX [IX_Menu_MenuName] ON [dbo].[Menu] (MenuName)
