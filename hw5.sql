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

create table product_order_association
(
    id        int auto_increment
        primary key,
    productId int not null,
    orderId   int not null,
    constraint id
        unique (id)
);


