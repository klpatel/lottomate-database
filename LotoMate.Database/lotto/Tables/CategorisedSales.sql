CREATE TABLE [lotto].[CategorisedSales] (
    [Id]                  BIGINT             NOT NULL IDENTITY,
    [StoreId]             INT                NULL,
    [GameSalesCategoryId] INT                NULL,
    [Total]               DECIMAL (18)       NULL,
    [TransactionDate]     DATETIME           NULL,
    [CreatedBy]           VARCHAR (50)       NULL,
    [CreatedOn]           DATETIMEOFFSET (7) NULL,
    [ModifiedBy]          VARCHAR (50)       NULL,
    [ModifiedOn]          DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_OperationData] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_CategorisedSales_GameSalesCategory] FOREIGN KEY ([StoreId]) REFERENCES [client].[Store] ([Id]),
    CONSTRAINT [FK_CategorisedSales_GameSalesCategory1] FOREIGN KEY ([GameSalesCategoryId]) REFERENCES [lotto].[GameSalesCategory] ([Id])
);



