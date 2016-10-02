
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/01/2016 18:37:00
-- Generated from EDMX file: C:\Escape\Escape\EscapeDataModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [EscapeDatabaseEFModelFirst];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_EntityTypeEntity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Entities] DROP CONSTRAINT [FK_EntityTypeEntity];
GO
IF OBJECT_ID(N'[dbo].[FK_InstantiatedEntityEntity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[InstantiatedEntities] DROP CONSTRAINT [FK_InstantiatedEntityEntity];
GO
IF OBJECT_ID(N'[dbo].[FK_LevelScene]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Levels] DROP CONSTRAINT [FK_LevelScene];
GO
IF OBJECT_ID(N'[dbo].[FK_SceneSavegame]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[SaveGames] DROP CONSTRAINT [FK_SceneSavegame];
GO
IF OBJECT_ID(N'[dbo].[FK_CellCoordsEntity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CellCoords] DROP CONSTRAINT [FK_CellCoordsEntity];
GO
IF OBJECT_ID(N'[dbo].[FK_ScreenCoordsEntity]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ScreenCoords] DROP CONSTRAINT [FK_ScreenCoordsEntity];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Entities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Entities];
GO
IF OBJECT_ID(N'[dbo].[EntityTypes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[EntityTypes];
GO
IF OBJECT_ID(N'[dbo].[InstantiatedEntities]', 'U') IS NOT NULL
    DROP TABLE [dbo].[InstantiatedEntities];
GO
IF OBJECT_ID(N'[dbo].[Scenes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Scenes];
GO
IF OBJECT_ID(N'[dbo].[Levels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Levels];
GO
IF OBJECT_ID(N'[dbo].[SaveGames]', 'U') IS NOT NULL
    DROP TABLE [dbo].[SaveGames];
GO
IF OBJECT_ID(N'[dbo].[CellCoords]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CellCoords];
GO
IF OBJECT_ID(N'[dbo].[ScreenCoords]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ScreenCoords];
GO
IF OBJECT_ID(N'[dbo].[ComponentDependencies]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ComponentDependencies];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Entities'
CREATE TABLE [dbo].[Entities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [EntityType_Id] int  NOT NULL
);
GO

-- Creating table 'EntityTypes'
CREATE TABLE [dbo].[EntityTypes] (
    [name] nvarchar(max)  NOT NULL,
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'InstantiatedEntities'
CREATE TABLE [dbo].[InstantiatedEntities] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'Scenes'
CREATE TABLE [dbo].[Scenes] (
    [Id] int IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'Levels'
CREATE TABLE [dbo].[Levels] (
    [name] nvarchar(max)  NOT NULL,
    [Id] int IDENTITY(1,1) NOT NULL,
    [Scene_Id] int  NOT NULL
);
GO

-- Creating table 'SaveGames'
CREATE TABLE [dbo].[SaveGames] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [Scene_Id] int  NOT NULL
);
GO

-- Creating table 'CellCoords'
CREATE TABLE [dbo].[CellCoords] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [x] int  NOT NULL,
    [y] int  NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'ScreenCoords'
CREATE TABLE [dbo].[ScreenCoords] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [x] int  NOT NULL,
    [y] int  NOT NULL,
    [Entity_Id] int  NOT NULL
);
GO

-- Creating table 'ComponentDependencies'
CREATE TABLE [dbo].[ComponentDependencies] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [componentName] nvarchar(max)  NOT NULL,
    [dependsOn] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Entities'
ALTER TABLE [dbo].[Entities]
ADD CONSTRAINT [PK_Entities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'EntityTypes'
ALTER TABLE [dbo].[EntityTypes]
ADD CONSTRAINT [PK_EntityTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'InstantiatedEntities'
ALTER TABLE [dbo].[InstantiatedEntities]
ADD CONSTRAINT [PK_InstantiatedEntities]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Scenes'
ALTER TABLE [dbo].[Scenes]
ADD CONSTRAINT [PK_Scenes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Levels'
ALTER TABLE [dbo].[Levels]
ADD CONSTRAINT [PK_Levels]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'SaveGames'
ALTER TABLE [dbo].[SaveGames]
ADD CONSTRAINT [PK_SaveGames]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'CellCoords'
ALTER TABLE [dbo].[CellCoords]
ADD CONSTRAINT [PK_CellCoords]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ScreenCoords'
ALTER TABLE [dbo].[ScreenCoords]
ADD CONSTRAINT [PK_ScreenCoords]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'ComponentDependencies'
ALTER TABLE [dbo].[ComponentDependencies]
ADD CONSTRAINT [PK_ComponentDependencies]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [EntityType_Id] in table 'Entities'
ALTER TABLE [dbo].[Entities]
ADD CONSTRAINT [FK_EntityTypeEntity]
    FOREIGN KEY ([EntityType_Id])
    REFERENCES [dbo].[EntityTypes]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_EntityTypeEntity'
CREATE INDEX [IX_FK_EntityTypeEntity]
ON [dbo].[Entities]
    ([EntityType_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'InstantiatedEntities'
ALTER TABLE [dbo].[InstantiatedEntities]
ADD CONSTRAINT [FK_InstantiatedEntityEntity]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_InstantiatedEntityEntity'
CREATE INDEX [IX_FK_InstantiatedEntityEntity]
ON [dbo].[InstantiatedEntities]
    ([Entity_Id]);
GO

-- Creating foreign key on [Scene_Id] in table 'Levels'
ALTER TABLE [dbo].[Levels]
ADD CONSTRAINT [FK_LevelScene]
    FOREIGN KEY ([Scene_Id])
    REFERENCES [dbo].[Scenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_LevelScene'
CREATE INDEX [IX_FK_LevelScene]
ON [dbo].[Levels]
    ([Scene_Id]);
GO

-- Creating foreign key on [Scene_Id] in table 'SaveGames'
ALTER TABLE [dbo].[SaveGames]
ADD CONSTRAINT [FK_SceneSavegame]
    FOREIGN KEY ([Scene_Id])
    REFERENCES [dbo].[Scenes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_SceneSavegame'
CREATE INDEX [IX_FK_SceneSavegame]
ON [dbo].[SaveGames]
    ([Scene_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'CellCoords'
ALTER TABLE [dbo].[CellCoords]
ADD CONSTRAINT [FK_CellCoordsEntity]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CellCoordsEntity'
CREATE INDEX [IX_FK_CellCoordsEntity]
ON [dbo].[CellCoords]
    ([Entity_Id]);
GO

-- Creating foreign key on [Entity_Id] in table 'ScreenCoords'
ALTER TABLE [dbo].[ScreenCoords]
ADD CONSTRAINT [FK_ScreenCoordsEntity]
    FOREIGN KEY ([Entity_Id])
    REFERENCES [dbo].[Entities]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ScreenCoordsEntity'
CREATE INDEX [IX_FK_ScreenCoordsEntity]
ON [dbo].[ScreenCoords]
    ([Entity_Id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------