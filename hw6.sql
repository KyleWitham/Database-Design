create table Customers
(
    id        int auto_increment
        primary key,
    firstname varchar(20) null,
    lastname  varchar(20) null,
    company   varchar(20) null,
    constraint id
        unique (id)
);

create table Orders
(
    id         int auto_increment
        primary key,
    cost       int null,
    customerId int null,
    constraint id
        unique (id),
    constraint orders_ibfk_1
        foreign key (customerId) references Customers (id)
);

create index customerId
    on Orders (customerId);

create table Products
(
    id      int auto_increment
        primary key,
    product varchar(20) null,
    constraint id
        unique (id)
);

create table Product_Order_Association
(
    id        int auto_increment
        primary key,
    orderId   int not null,
    productId int not null,
    constraint id
        unique (id),
    constraint product_order_association_ibfk_1
        foreign key (orderId) references Orders (id),
    constraint product_order_association_ibfk_2
        foreign key (productId) references Products (id)
);

create index orderId
    on Product_Order_Association (orderId);

create index productId
    on Product_Order_Association (productId);


