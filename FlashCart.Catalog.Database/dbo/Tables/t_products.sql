CREATE TABLE [dbo].[t_products] (
    [f_uid]         UNIQUEIDENTIFIER NOT NULL,
    [f_iid]         INT              IDENTITY (1, 1) NOT NULL,
    [f_sku]         NVARCHAR (50)    NOT NULL,
    [f_name]        NVARCHAR (200)   NOT NULL,
    [f_description] NVARCHAR (1000)  NULL,
    [f_price]       DECIMAL (18, 2)  NOT NULL,
    [f_stock]       INT              NOT NULL,
    [f_is_active]   BIT              NOT NULL,
    [f_is_deleted]  BIT              NOT NULL,
    [f_create_date] DATETIME2 (7)    NOT NULL,
    [f_create_by]   UNIQUEIDENTIFIER NULL,
    [f_update_date] DATETIME2 (7)    NULL,
    [f_update_by]   UNIQUEIDENTIFIER NULL,
    [f_delete_date] DATETIME2 (7)    NULL,
    [f_delete_by]   UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_t_products] PRIMARY KEY CLUSTERED ([f_uid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_t_products_active]
    ON [dbo].[t_products]([f_is_active] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_t_products_name]
    ON [dbo].[t_products]([f_name] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_t_products_sku]
    ON [dbo].[t_products]([f_sku] ASC);

