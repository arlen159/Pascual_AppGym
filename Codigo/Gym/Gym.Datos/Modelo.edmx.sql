
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 11/05/2013 21:53:14
-- Generated from EDMX file: C:\Users\NicolasA\Documents\GitHub\Pascual_AppGym\Codigo\Gym\Gym.Datos\Modelo.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Modelo];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_TipoPlanPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Planes] DROP CONSTRAINT [FK_TipoPlanPlan];
GO
IF OBJECT_ID(N'[dbo].[FK_PlanTip]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Tips] DROP CONSTRAINT [FK_PlanTip];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioPlan]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Planes] DROP CONSTRAINT [FK_UsuarioPlan];
GO
IF OBJECT_ID(N'[dbo].[FK_UsuarioControl]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Controles] DROP CONSTRAINT [FK_UsuarioControl];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Usuarios]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Usuarios];
GO
IF OBJECT_ID(N'[dbo].[Controles]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Controles];
GO
IF OBJECT_ID(N'[dbo].[Tips]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Tips];
GO
IF OBJECT_ID(N'[dbo].[Planes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Planes];
GO
IF OBJECT_ID(N'[dbo].[TipoPlanes]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TipoPlanes];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Usuarios'
CREATE TABLE [dbo].[Usuarios] (
    [Codigo] nvarchar(max)  NOT NULL,
    [Cedula] nvarchar(max)  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Correo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Controles'
CREATE TABLE [dbo].[Controles] (
    [Codigo] int  NOT NULL,
    [Fecha] datetime  NOT NULL,
    [Estatura] float  NOT NULL,
    [Observacion] nvarchar(max)  NOT NULL,
    [UsuarioControl_Control_Codigo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Tips'
CREATE TABLE [dbo].[Tips] (
    [Codigo] int  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [Plan_Codigo] int  NOT NULL
);
GO

-- Creating table 'Planes'
CREATE TABLE [dbo].[Planes] (
    [Codigo] int  NOT NULL,
    [Nombre] nvarchar(max)  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL,
    [TipoPlan_Codigo] int  NOT NULL,
    [UsuarioPlan_Plan_Codigo] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'TipoPlanes'
CREATE TABLE [dbo].[TipoPlanes] (
    [Codigo] int  NOT NULL,
    [Descripcion] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Codigo] in table 'Usuarios'
ALTER TABLE [dbo].[Usuarios]
ADD CONSTRAINT [PK_Usuarios]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Controles'
ALTER TABLE [dbo].[Controles]
ADD CONSTRAINT [PK_Controles]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Tips'
ALTER TABLE [dbo].[Tips]
ADD CONSTRAINT [PK_Tips]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'Planes'
ALTER TABLE [dbo].[Planes]
ADD CONSTRAINT [PK_Planes]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- Creating primary key on [Codigo] in table 'TipoPlanes'
ALTER TABLE [dbo].[TipoPlanes]
ADD CONSTRAINT [PK_TipoPlanes]
    PRIMARY KEY CLUSTERED ([Codigo] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [TipoPlan_Codigo] in table 'Planes'
ALTER TABLE [dbo].[Planes]
ADD CONSTRAINT [FK_TipoPlanPlan]
    FOREIGN KEY ([TipoPlan_Codigo])
    REFERENCES [dbo].[TipoPlanes]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_TipoPlanPlan'
CREATE INDEX [IX_FK_TipoPlanPlan]
ON [dbo].[Planes]
    ([TipoPlan_Codigo]);
GO

-- Creating foreign key on [Plan_Codigo] in table 'Tips'
ALTER TABLE [dbo].[Tips]
ADD CONSTRAINT [FK_PlanTip]
    FOREIGN KEY ([Plan_Codigo])
    REFERENCES [dbo].[Planes]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PlanTip'
CREATE INDEX [IX_FK_PlanTip]
ON [dbo].[Tips]
    ([Plan_Codigo]);
GO

-- Creating foreign key on [UsuarioPlan_Plan_Codigo] in table 'Planes'
ALTER TABLE [dbo].[Planes]
ADD CONSTRAINT [FK_UsuarioPlan]
    FOREIGN KEY ([UsuarioPlan_Plan_Codigo])
    REFERENCES [dbo].[Usuarios]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioPlan'
CREATE INDEX [IX_FK_UsuarioPlan]
ON [dbo].[Planes]
    ([UsuarioPlan_Plan_Codigo]);
GO

-- Creating foreign key on [UsuarioControl_Control_Codigo] in table 'Controles'
ALTER TABLE [dbo].[Controles]
ADD CONSTRAINT [FK_UsuarioControl]
    FOREIGN KEY ([UsuarioControl_Control_Codigo])
    REFERENCES [dbo].[Usuarios]
        ([Codigo])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsuarioControl'
CREATE INDEX [IX_FK_UsuarioControl]
ON [dbo].[Controles]
    ([UsuarioControl_Control_Codigo]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------