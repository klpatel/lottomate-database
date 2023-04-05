CREATE TABLE [lotto].[GameSalesCategory] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [StoreId]       INT           NULL,
    [CategoryName]  VARCHAR (250) NULL,
    [DebitOrCredit] BIT           NULL,
    [IsActive]      BIT           NULL,
    [CreateDate]    DATETIME      NULL,
    CONSTRAINT [PK_Operation] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_GameSalesCategory_Store] FOREIGN KEY ([StoreId]) REFERENCES [client].[Store] ([Id])
);

