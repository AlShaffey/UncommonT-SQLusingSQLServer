﻿CREATE TABLE [Lookup].[IdentityUserType] (
    [Id]   INT        IDENTITY (1, 1) NOT NULL,
    [Name] NCHAR (10) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);

