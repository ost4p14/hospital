create table clients
(
    id           serial generated by default as identity
        constraint clients_pkey
            primary key,
    address      varchar(255),
    name         varchar(255),
    phone_number varchar(255)
);

alter table clients owner to aqiximchamlecx;

create table deliverymen
(
    id      serial generated by default as identity
        constraint deliverymen_pkey
            primary key,
    age     integer not null,
    name    varchar(255),
    surname varchar(255),
    wages   integer not null
);

alter table deliverymen owner to aqiximchamlecx;

create table cars
(
    id             serial generated by default as identity
        constraint cars_pkey
            primary key,
    car_status     varchar(255),
    model          varchar(255),
    deliveryman_id serial
        constraint fkaghxpod6gfwiheka29dnlckat
            references deliverymen
);

alter table cars owner to aqiximchamlecx;

create table orders
(
    id             serial generated by default as identity
        constraint orders_pkey
            primary key,
    bonus          serial,
    name           varchar(255),
    payment_option varchar(255),
    price          serial
);

alter table orders owner to aqiximchamlecx;

create table calls
(
    id             serial generated by default as identity
        constraint calls_pkey
            primary key,
    call_status    varchar(255),
    client_id      serial
        constraint fkohrhua577ir895o9o1ibmqlbr
            references clients,
    deliveryman_id serial
        constraint fkr1x4m9k3tgr3vq2rkow7n58pe
            references deliverymen,
    order_id       serial
        constraint fk5kw1qft7ko32kl2crfpvsy98c
            references orders
);

alter table calls owner to aqiximchamlecx;
