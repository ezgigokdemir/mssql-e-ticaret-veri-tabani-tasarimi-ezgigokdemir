USE EcommerceDb
GO


CREATE TABLE OrderDetail
(
Id int PRIMARY KEY IDENTITY,
OrderId int NOT NULL,
ProductId int NOT NULL,
OrderStatusId int NOT NULL,
CreateDate date NOT NULL,
ChangeDate date NOT NULL,
RecordStatus bit NOT NULL,

CONSTRAINT fk_order_order foreign key (OrderId) references Orders(Id),
CONSTRAINT fk_product_order foreign key (ProductId) references Product(Id),
CONSTRAINT fk_orderstatus foreign key (OrderStatusId) references OrderStatus(Id)
)