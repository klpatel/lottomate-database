CREATE TABLE [lotto].[DailySummary] (
    [Id]              BIGINT             IDENTITY (1, 1) NOT NULL,
    [StoreId]         INT                NULL,
    [TransactionDate] DATETIME           NULL,
    [Sale]            DECIMAL (18, 2)    NULL,
    [Paid]            DECIMAL (18, 2)    NULL,
    [Cancel]          DECIMAL (18, 2)    NULL,
    [Total]           DECIMAL (18, 2)    NULL,
    [InHand]          DECIMAL (18, 2)    NULL,
    [Difference]      DECIMAL (18, 2)    NULL,
    [CreatedBy]       VARCHAR (50)       NULL,
    [CreatedOn]       DATETIMEOFFSET (7) NULL,
    [ModifiedBy]      VARCHAR (50)       NULL,
    [ModifiedOn]      DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_DailySales] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_DailySummary_Store] FOREIGN KEY ([StoreId]) REFERENCES [client].[Store] ([Id])
);



