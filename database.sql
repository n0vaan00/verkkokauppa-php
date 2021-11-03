drop database if exists webshop;

create database webshop;

use webshop;

create table item(
    id int primary key auto_increment,
    description varchar(255) not null,
    amount smallint unsigned not null
);

insert into item (description,amount) values ('Test item', 1);
