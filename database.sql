drop database if exists webshop;
create database webshop;
use webshop;

create table category (
	id int primary key auto_increment,
	name varchar(50) not null
);

insert into category(name) value ('Pitkähihaiset');
insert into category(name) value ('Lyhythihaiset');
insert into category(name) value ('Hihattomat');


create table product (
	id int primary key auto_increment,
	name varchar(100) not null,
	price decimal(10,2) not null,
	image varchar(50),
	info varchar(200),
	category_id int not null,
	index category_id(category_id),
	foreign key (category_id) references category(id)
     on delete restrict
);

INSERT INTO product (name, price, image, info, category_id) VALUES ('Villapaita',55.00,"villa.png","Villainen paita juuri sinulle! Tämä todella mukava villapaita tuo kunnollista joulutunnelmaa. Tehty materiaaleista jotka kestävän pesun millä tahansa.",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Huppari',30,"huppari.jpg","Supermukava huppari niille päiville kun tarvitset enemmän vaatetta. Pestään 40-asteisella pesuohjelmalla.",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('T-paita',10,"tpaita.png","Hieno T-paita kesäiseen meininkiin. Pestään 40-asteisella pesuohjelmalla.",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('V-paita',13,"tpaitav.png","Mukava V-paita rentoon menoon, tehty meidän omasta puuvillasekoituksestamme joka takaa parhaan mukavuuden. Sopii pestäväksi kaikilla ohjelmilla.",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Vaimari',5,"vaimari.jpg","Hihaton paita joka antaa käsillesi mukavasti ilmaa ja aurinkoa. Sopii pestäväksi kaikilla ohjelmilla.",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Vaimari hupulla',25,"vaimarih.jpg","Tämä hihaton paita on kuin tehty pidettäväksi silloin, kun sinulla on bad hair day. Sopii pestäväksi kaikilla ohjelmilla.",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Neule',30,"neule.jpg","Erittäin lämpimä neule niihin kylmiin talvipäiviin kun haluat vain juoda kaakaota ja katsoa telkkaria. Voit pestä tämän paidan millä vain ohjelmalla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Kauluspaita',29.99,"kauluspaita.jpg","Tarviiko vetää jotain tyylikkäämpää ylle? Ei hätää! Meiltä löytyy kauluspaidat juhlaan kuin juhlaan. Pestään 30-asteisella pesuohjelmalla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Napapaita',6.99,"napapaita.jpg","Pitkä kuuma kesä? Meiltä saa kesän helteisiin täydelliset napapaidat. Voit pestä tämän paidan millä vain ohjelmalla. ",3) ;

create table customer(
id int primary key auto_increment,
firstname CHAR(30) NOT NULL,
lastname CHAR(30) NOT NULL,
username CHAR(30) NOT NULL,
password VARCHAR(50) NOT NULL,
address CHAR(15) NOT NULL,
zip CHAR(5) NOT NULL, 
city CHAR(10) NOT NULL, 
phone VARCHAR(20)
) ;

INSERT INTO customer (firstname, lastname, username, password, address, zip, city, phone) VALUES ('Erkki','Esimerkki', 'Ekimerkki','salasanani','Jokitie 666','90100','Oulu','0401112223') ;

create table ´order´ (
	id int primary key auto_increment,
	order_date timestamp default current_timestamp,
	customer_id int not null,
	index customer_id(customer_id),
	foreign key (customer_id) references customer(id)
	on delete restrict
);

create table order_row (
	order_id int not null,
	index order_id(order_id),
	foreign key (order_id) references ´order´(id)
	on delete restrict,
	product_id int not null,
	index product_id(product_id),
	foreign key (product_id) references product(id)
	on delete restrict
);