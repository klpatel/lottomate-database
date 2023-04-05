CREATE TABLE [lotto].[InstanceGameMaster] (
    [Id]         BIGINT             IDENTITY (1, 1) NOT NULL,
    [StoreId]    INT                NULL,
    [GameNumber] VARCHAR (50)       NULL,
    [Name]       VARCHAR (250)      NULL,
    [Price]      DECIMAL (18, 2)    NULL,
    [IsActive]   BIT                NULL,
    [BookTotal]  INT                NULL,
    [CreatedBy]  VARCHAR (50)       NULL,
    [CreatedOn]  DATETIMEOFFSET (7) NULL,
    [ModifiedBy] VARCHAR (50)       NULL,
    [ModifiedOn] DATETIMEOFFSET (7) NULL,
    CONSTRAINT [PK_InstanceGameMaster] PRIMARY KEY CLUSTERED ([Id] ASC),
    CONSTRAINT [FK_InstanceGameMaster_Store] FOREIGN KEY ([StoreId]) REFERENCES [client].[Store] ([Id])
);



