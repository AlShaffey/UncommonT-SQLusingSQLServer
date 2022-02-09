
CREATE TABLE [UniqueFlag].[Branch] (
    [Id]        INT        IDENTITY (1, 1) NOT NULL,
    [Name]      NCHAR (10) NOT NULL,
    [CompanyId] INT        NOT NULL,
    [IsMain]    BIT        NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CompanyId]) REFERENCES [UniqueFlag].[Company] ([Id])
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [UIX-Branch-IsMain]
    ON [UniqueFlag].[Branch]([CompanyId] ASC, [IsMain] ASC)
    --WHERE [IsMain] = 1
GO
