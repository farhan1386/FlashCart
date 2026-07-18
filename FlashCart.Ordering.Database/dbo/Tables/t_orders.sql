CREATE TABLE [dbo].[t_orders] (
    [f_uid]          UNIQUEIDENTIFIER NOT NULL,
    [f_iid]          INT              IDENTITY (1, 1) NOT NULL,
    [f_order_number] NVARCHAR (30)    NOT NULL,
    [f_customer_uid] UNIQUEIDENTIFIER NOT NULL,
    [f_total_amount] DECIMAL (18, 2)  NOT NULL,
    [f_status]       SMALLINT         NOT NULL,
    [f_is_deleted]   BIT              NOT NULL,
    [f_create_date]  DATETIME2 (7)    NOT NULL,
    [f_create_by]    UNIQUEIDENTIFIER NULL,
    [f_update_date]  DATETIME2 (7)    NULL,
    [f_update_by]    UNIQUEIDENTIFIER NULL,
    [f_delete_date]  DATETIME2 (7)    NULL,
    [f_delete_by]    UNIQUEIDENTIFIER NULL,
    CONSTRAINT [PK_t_orders] PRIMARY KEY CLUSTERED ([f_uid] ASC)
);


GO
CREATE NONCLUSTERED INDEX [IX_t_orders_status]
    ON [dbo].[t_orders]([f_status] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_t_orders_customer]
    ON [dbo].[t_orders]([f_customer_uid] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_t_orders_order_number]
    ON [dbo].[t_orders]([f_order_number] ASC);

