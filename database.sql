drop database if exists webshop;

create database webshop;

use webshop;

CREATE TABLE tuoteryhma (
trnro SMALLINT,
trnimi CHAR(10),
CONSTRAINT tuoteryhma_pk PRIMARY KEY (trnro)
) ;

INSERT INTO tuoteryhma VALUES (1,'Pitkähihaiset');
INSERT INTO tuoteryhma VALUES (2,'T-paidat');
INSERT INTO tuoteryhma VALUES (3,'Hihattomat');

CREATE TABLE tuote (
tuotenro INTEGER,
tuotenimi CHAR(20) NOT NULL,
hinta DECIMAL(5,2),
trnro SMALLINT NOT NULL,
CONSTRAINT tuote_pk PRIMARY KEY (tuotenro),
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

