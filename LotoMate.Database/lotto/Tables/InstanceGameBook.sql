CREATE TABLE [lotto].[InstanceGameBook] (
    [Id]             BIGINT             NOT NULL IDENTITY,
    [InstanceGameId] BIGINT             NOT NULL,
    [StoreId]        INT                NULL,
    [DisplayNumber]  VARCHAR (50)       NULL,
    [BookNumber]     VARCHAR (50)       NULL,
    [ActivateDate]   DATETIME           NULL,
    [SettleDate]     DATETIME           NULL,
    [IsActive]       BIT                NULL,
    [ActivateUserId] INT                NULL,
    [SettleUserId]   INT                NULL,
    [CreatedBy]      VARCHAR (50)       NULL,
    [CreatedOn]      DATETIMEOFFSET (7) NULL,
    [ModifiedBy]     VARCHAR (50)       NULL,
    [ModifiedOn]     DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_InstanceGameTransaction] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InstanceGameBook_Store] FOREIGN KEY ([StoreId]) REFERENCES [client].[Store] ([Id]),
    CONSTRAINT [FK_InstanceGameId_InstanceGameMasterId] FOREIGN KEY ([InstanceGameId]) REFERENCES [lotto].[InstanceGameMaster] ([Id])
);



