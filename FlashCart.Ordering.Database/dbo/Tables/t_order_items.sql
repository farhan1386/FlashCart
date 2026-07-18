CREATE TABLE [dbo].[t_order_items] (
    [f_uid]          UNIQUEIDENTIFIER NOT NULL,
    [f_iid]          INT              IDENTITY (1, 1) NOT NULL,
    [f_order_uid]    UNIQUEIDENTIFIER NOT NULL,
    [f_product_uid]  UNIQUEIDENTIFIER NOT NULL,
    [f_product_sku]  NVARCHAR (50)    NOT NULL,
    [f_product_name] NVARCHAR (200)   NOT NULL,
    [f_quantity]     INT              NOT NULL,
    [f_unit_price]   DECIMAL (18, 2)  NOT NULL,
    [f_total_price]  DECIMAL (18, 2)  NOT NULL,
    CONSTRAINT [PK_t_order_items] PRIMARY KEY CLUSTERED ([f_uid] ASC),
    CONSTRAINT [FK_t_order_items_t_orders] FOREIGN KEY ([f_order_uid]) REFERENCES [dbo].[t_orders] ([f_uid]) ON DELETE CASCADE
);


GO
CREATE NONCLUSTERED INDEX [IX_t_order_items_product]
    ON [dbo].[t_order_items]([f_product_uid] ASC);


GO
CREATE NONCLUSTERED INDEX [IX_t_order_items_order]
    ON [dbo].[t_order_items]([f_order_uid] ASC);

