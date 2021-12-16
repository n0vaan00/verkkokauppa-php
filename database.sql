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
INSERT INTO product (name, price, image, info, category_id) VALUES ('Neule',30,"neule.jpg","Erittäin lämpimä neule niihin kylmiin talvipäiviin kun haluat vain juoda kaakaota ja katsoa telkkaria. Voit pestä tämän paidan millä vain ohjelmalla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Kauluspaita',29.99,"kauluspaita.jpg","Tarviiko vetää jotain tyylikkäämpää ylle? Ei hätää! Meiltä löytyy kauluspaidat juhlaan kuin juhlaan. Pestään 30-asteisella pesuohjelmalla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Pyjamapaita',15.00,"pyjama.jpg","Tyylikkäimmät kledjut Nukkumatin vierailuja varten. Voit pestä tämän paidan millä vain ohjelmalla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Flanellipaita',39.99,"flanelli.jpg","Onko mehtille meno? Meiltä saat tyylikkäät ja sitäkin lämpimämmät flaanellipaidat. Pestään 30-asteisella pesuohjelmalla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Collegepaita',9.99,"college.jpg","Taattua laatua! Collegepaidat ovat tehty meidän omasta puuvillasekoituksestamme joka takaa parhaan mukavuuden. Sopii pestäväksi kaikilla ohjelmilla. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Raita villapaita',35,"villapaita m.jpg"," Tyylikäs raidallinen villapaita sopii jopa edustus tehtäviin. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Punainen villapaita',40,"villapaita punainen.jpg","Joulun punainen villapaita lämmittämään talven kylmiin iltoihin. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Pinkki villapaita',37.50,"villapaita pinkki.jpg","Ilahduttavaa lämpöä ja väriä talven pimeneviin ja kylmeneviin iltoihin. ",1) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('T-paita',10,"tpaita.png","Hieno Musta T-paita kesäiseen meininkiin. Pestään 40-asteisella pesuohjelmalla.",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('V-paita',13,"tpaitav.png","Mukava V-paita rentoon menoon, tehty meidän omasta puuvillasekoituksestamme joka takaa parhaan mukavuuden. Sopii pestäväksi kaikilla ohjelmilla.",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Punainen t-paita',10,"punainen t-paita.jpg","Hieno punainen T-paita kesäiseen meininkiin. Pestään 40-asteisella pesuohjelmalla. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Sininen t-paita',10,"sininen t-paita.jpg","Hieno sininen T-paita kesäiseen meininkiin. Pestään 40-asteisella pesuohjelmalla. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Turkoosi poolo paita',20,"Turkoosi poolo paita.jpg","Taivaan sininen ku haluat edustaa ja erottua juhlista. Pestään 40-asteisella pesuohjelmalla. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Punainen poolo paita',20,"Punainen poolo paita.jpg","Täydellinen edustava paita ei niin virallisiin juhliin. Pestään 40-asteisella pesuohjelmalla.",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Sininen urheilupaita',15,"urheilupaita sininen.jpg","Rankimmistakin treeneistä selviävä ja hyvin hengittävä urheilupaita. Pestään 40-asteisella pesuohjelmalla. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Harmaa t-paita',12.50,"t-paita harmaa.jpg","Hieno harmaa V-paita kesäiseen meininkiin. Pestään 40-asteisella pesuohjelmalla. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Los Angeles T-paita',19.00,"los angeles t-paita.jpg","Tällä saataisiin Amerikkalaisetkin mustasukkaisiksi. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Lyhythihainen kauluspaita',32.50,"lyhythihainen kauluspaita.jpg","Kun pitää olla juhlapukupäällä, mutta on aivan liian kuuma pitkille hihoille. ",2) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Vaimari',5,"vaimari.jpg","Hihaton paita joka antaa käsillesi mukavasti ilmaa ja aurinkoa. Sopii pestäväksi kaikilla ohjelmilla.",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Vaimari hupulla',25,"vaimarih.jpg","Tämä hihaton paita on kuin tehty pidettäväksi silloin, kun sinulla on bad hair day. Sopii pestäväksi kaikilla ohjelmilla.",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Napapaita',6.99,"napapaita.jpg","Pitkä kuuma kesä? Meiltä saa kesän helteisiin täydelliset napapaidat. Voit pestä tämän paidan millä vain ohjelmalla. ",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Kesämekko',19.99,"kesa mekko.jpg","Kesän suosikkituote kesämekko! Pestään 30-asteisella pesuohjelmalla. ",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Musta liivi',28.99,"musta liivi.jpg","Ettei tule kylmä tästä väli liivi paitojen väliin 'ei sisällä ruutupaitaa mukaan'.Pestään 40-asteisella pesuohjelmalla.",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Sininen liivi',28.99,"sininen liivi.jpg","Ettei tule kylmä tästä väli liivi paitojen väliin 'ei sisällä ruutupaitaa mukaan'.Pestään 40-asteisella pesuohjelmalla. ",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Jäljitelmä toppi',24.99,"crop toppi.jpg","Kun kesäisin haluat mahdollisimman vähän rusketusraitoja mutta haluat liikkua julkisillä paikoilla. ",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Hihaton paita',20,"hihaton paita.jpg","Hihaton paita joka antaa käsillesi mukavasti ilmaa ja aurinkoa. Sopii pestäväksi kaikilla ohjelmilla. ",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('puuvilla toppi',29.99,"crop toppi2.jpg","Kuumille kesäpäiville hieman erillaisia rusketusraitoja metsästämään.",3) ;
INSERT INTO product (name, price, image, info, category_id) VALUES ('Aluspaita',16.50,"aluspaita.jpg","Aurinkoinen, vapauttava ja täydellinen aluspaita tai normi paita kuumille kesä päiville. ",3) ;





create table customer(
id int primary key auto_increment,
firstname CHAR(30) NOT NULL,
lastname CHAR(30) NOT NULL,
address CHAR(15) NOT NULL,
zip CHAR(5) NOT NULL, 
city CHAR(10) NOT NULL, 
phone VARCHAR(20)
) ;

INSERT INTO customer (firstname, lastname, address, zip, city, phone) VALUES ('Erkki','Esimerkki','Jokitie 666','90100','Oulu','0401112223') ;

create table `order` (
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
	foreign key (order_id) references `order`(id)
	on delete restrict,
	product_id int not null,
	index product_id(product_id),
	foreign key (product_id) references product(id)
	on delete restrict
);




/*Rekisteröitymiset haluaa jostai syystä et ne lisätään yksitelle erikseen*/

CREATE TABLE IF NOT EXISTS user (
            firstname varchar(50) NOT NULL,
            lastname varchar(50) NOT NULL,
            username varchar(50) NOT NULL,
            password varchar(200) NOT NULL,
            PRIMARY KEY (username)
            )

CREATE TABLE IF NOT EXISTS contact (
            username varchar(50) NOT NULL,
            email varchar(100),
            phone varchar(20),
			address varchar(50),
			zip varchar(20),
			city varchar(50)
            )

ALTER TABLE contact ADD FOREIGN KEY (username) REFERENCES user(username);