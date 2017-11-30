Last login: Mon Nov 27 12:19:20 on ttys002
QTC-007s-MacBook-Pro:~ nileshbabanpawar$ /Library/PostgreSQL/10/scripts/runpsql.sh; exit
Server [localhost]: 
Database [postgres]: 
Port [5432]: 
Username [postgres]: 
Password for user postgres: 
psql (10.1)
Type "help" for help.

postgres=# create database iqtc_cms_db;
CREATE DATABASE
postgres=# \c iqtc_cms_db;
You are now connected to database "iqtc_cms_db" as user "postgres".
iqtc_cms_db=# create table products(product_id int8,product_name varchar(100),is_product_removed boolean,is_product_disabled boolean);
CREATE TABLE
iqtc_cms_db=# select * from product;
ERROR:  relation "product" does not exist
LINE 1: select * from product;
                      ^
iqtc_cms_db=# select * from products;
 product_id | product_name | is_product_removed | is_product_disabled 
------------+--------------+--------------------+---------------------
(0 rows)

iqtc_cms_db=# drop products;
ERROR:  syntax error at or near "products"
LINE 1: drop products;
             ^
iqtc_cms_db=# drop table products;
DROP TABLE
iqtc_cms_db=# select * from products;
ERROR:  relation "products" does not exist
LINE 1: select * from products;
                      ^
iqtc_cms_db=# create table products(product_id int8 primary key,product_name varchar(100),is_product_removed boolean,is_product_disabled boolean);
CREATE TABLE
iqtc_cms_db=# 
