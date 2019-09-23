SET NAMES UTF8;
DROP DATABASE IF EXISTS shoujiapp;
CREATE DATABASE shoujiapp CHARSET=UTF8;
USE shoujiapp;
CREATE TABLE shouji_user_one(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32)
 
);
CREATE TABLE shouji_user_two(
  uid INT,
 address VARCHAR(200),
 mid INT,
 sname VARCHAR(32),
 gender BOOL,
 id INT,
 phone VARCHAR(20) UNIQUE
 
);
CREATE TABLE shouji_shop_one(
  sid INT,
  sname VARCHAR(100),
  sdress VARCHAR(200),
  sp VARCHAR(200),
  stime VARCHAR(100),
  stitle VARCHAR(100),
  smj VARCHAR(100),
  szk VARCHAR(50),
  spf VARCHAR(100),
  sqpri INT,
  sppri VARCHAR(50),
  sppic VARCHAR(180)
);
CREATE TABLE shouji_shop_two(
  pid INT,
  sid INT,
  pname VARCHAR(50),
  price INT,
  
);


