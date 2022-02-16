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
    productId  int auto_increment
        primary key,
    product    varchar(20) null,
    cost       int         null,
    customerId int         null,
    constraint productId
        unique (productId),
    constraint orders_ibfk_1
        foreign key (customerId) references Customers (id)
);

create index customerId
    on Orders (customerId);


