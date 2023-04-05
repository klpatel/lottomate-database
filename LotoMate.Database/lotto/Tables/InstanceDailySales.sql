CREATE TABLE [lotto].[InstanceDailySales] (
    [Id]                 BIGINT             IDENTITY (1, 1) NOT NULL,
    [TransactionDate]    DATETIME           NULL,
    [InstanceGameBookId] BIGINT             NULL,
    [Price]              DECIMAL(10,2) NULL, 
    [OpenNo]             INT                NULL,
    [CloseNo]            INT                NULL,
    [TotalSale]          INT                NULL,
    [TotalSalePrice]     INT                NULL,
    [OpenUserID]         INT                NULL,
    [ClosedUserID]       INT                NULL,
    [StoreId]            INT                NULL,
    [CreatedBy]          VARCHAR (50)       NULL,
    [CreatedOn]          DATETIMEOFFSET (7) NULL,
    [ModifiedBy]         VARCHAR (50)       NULL,
    [ModifiedOn]         DATETIMEOFFSET (7) NULL
    
    CONSTRAINT [PK_InstanceDailySales] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InstanceDailySales_AspNetUsers] FOREIGN KEY ([OpenUserID]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_InstanceDailySales_AspNetUsers1] FOREIGN KEY ([ClosedUserID]) REFERENCES [dbo].[AspNetUsers] ([Id]),
    CONSTRAINT [FK_InstanceDailySales_InstanceGameBook] FOREIGN KEY ([InstanceGameBookId]) REFERENCES [lotto].[InstanceGameBook] ([Id]),
    CONSTRAINT [FK_InstanceDailySales_Store] FOREIGN KEY ([StoreId]) REFERENCES [client].[Store] ([Id])
);



