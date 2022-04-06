--UC1 Creation of addressbook databse
create database ADDRESS_BOOK
USE ADDRESS_BOOK;


--UC2 create table address book
CREATE TABLE ADDRESS_BOOK_TABLE
(
FIRSTNAME VARCHAR(20),
LASTNAME VARCHAR(20),
ADDRESS VARCHAR(20),
CITY VARCHAR(20),
STATE VARCHAR(20),
ZIP VARCHAR(20),
EMAIL VARCHAR(20),
);
SELECT * FROM ADDRESS_BOOK_TABLE;


--UC3 Insert values in addressbook
INSERT INTO ADDRESS_BOOK_TABLE VALUES('Teyjas','Thalekar','Peenya','Banglore','Karnataka','560058','teyjasthalekar99@gmail.com');
INSERT INTO ADDRESS_BOOK_TABLE VALUES('Pranav','Bharadwaj','Peenya','Mysore','Karnataka','604482','prana98@gmail.com');
INSERT INTO ADDRESS_BOOK_TABLE VALUES('Pavan','Thalekar','Peenya','Banglore','Karnataka','560056','pavi93@gmail.com');


--UC4 Update value in addressbook
UPDATE ADDRESS_BOOK_TABLE SET ADDRESS='GhandiNagar' WHERE FIRSTNAME='Teyjas';


--UC5 delete value in addressbook
DELETE ADDRESS_BOOK_TABLE WHERE FIRSTNAME='Teyjas';


--UC6 retrieve data from addressbook
SELECT * FROM ADDRESS_BOOK_TABLE WHERE CITY='Banglore';
SELECT * FROM ADDRESS_BOOK_TABLE WHERE STATE='Karnataka';


--UC7 count data by city or state	
SELECT COUNT(STATE) FROM ADDRESS_BOOK_TABLE WHERE STATE='Karnataka';
SELECT COUNT(CITY)FROM ADDRESS_BOOK_TABLE WHERE CITY='Banglore';


--UC8 retrieve data in sorted order of person name
SELECT * FROM ADDRESS_BOOK_TABLE WHERE STATE='Karnataka' ORDER BY FIRSTNAME;