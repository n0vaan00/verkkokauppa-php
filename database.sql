drop database if exists webshop;

create database webshop;

use webshop;

CREATE TABLE tuoteryhma (
trnro SMALLINT PRIMARY KEY AUTO_INCREMENT,
trnimi CHAR(30)
) ;

INSERT INTO tuoteryhma VALUES (1,'Pitkähihaiset');
INSERT INTO tuoteryhma VALUES (2,'T-paidat');
INSERT INTO tuoteryhma VALUES (3,'Hihattomat');

CREATE TABLE tuote (
tuotenro INT PRIMARY KEY AUTO_INCREMENT,
tuotenimi CHAR(20) NOT NULL,
hinta DECIMAL(5,2),
trnro SMALLINT NOT NULL,
CONSTRAINT tuotenimi_un UNIQUE (tuotenimi),
CONSTRAINT tuote_ryhma_fk FOREIGN KEY (trnro) 
           REFERENCES tuoteryhma (trnro)
) ;

INSERT INTO tuote VALUES (1,'Villapaita',55.00,1) ;
INSERT INTO tuote VALUES (2,'Akan hakkaaja',28,3) ;
INSERT INTO tuote VALUES (3,'Vaemo',27,3) ;
INSERT INTO tuote VALUES (4,'Kauluspaita',20,1) ;
INSERT INTO tuote VALUES (5,'Jokunen',16,2) ;
INSERT INTO tuote VALUES (6,'EVVK',31,2) ;
INSERT INTO tuote VALUES (7,'Tie itte parempi',16,2) ;

/* ASIAKAS */

CREATE TABLE asiakas (
asiakas_id INT AUTO_INCREMENT,
etunimi CHAR(30) NOT NULL,
sukunimi CHAR(30) NOT NULL,
kayttajanim CHAR(30) NOT NULL,
password VARCHAR(50) NOT NULL,
osoite CHAR(15) NOT NULL,
postinro CHAR(5) NOT NULL, 
postitmp CHAR(10) NOT NULL, 
puhnum VARCHAR(20),
rek_pvm DATE,
CONSTRAINT asiakas_pk PRIMARY KEY (asiakas_id),
CONSTRAINT asiakas_id_un UNIQUE (asiakas_id)
) ;

INSERT INTO asiakas VALUES (1,'Matti','Manninen', 'Malli','kansalainen','Jokitie 666','90100','Oulu','0401112223', '2021-11-20') ;