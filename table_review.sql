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
iqtc_cms_db=# create table review(review_id  int8 primary key,display_locale varchar(100),is_featured boolean,first_pub_time decimal,last_mod_time decimal,last_pub_time decimal,is_moderated boolean,num_comments int,num_feedbacks int,num_neg_feedbacks int,num_pos_feedbacks int,prod_review_dlink_url text,prod_review_url text,rating int2,rating_range int2,review_text text,reviewer_location varchar(100),reviewer_nickname varchar(100),is_email_alert_enabled_when_commented boolean,is_email_alert_enabled_when_commented_optout_url boolean,is_email_alert_enabled_when_published boolean,submission_time decimal,review_title varchar(100));
CREATE TABLE
iqtc_cms_db=# select * from review;
 review_id | display_locale | is_featured | first_pub_time | last_mod_time | last_pub_time | is_moderated | num_comments | num_feedbacks | num_neg_feedbacks | num_pos_feedbacks | prod_review_dlink_url | prod_review_url | rating | rating_range | review_text | reviewer_location | reviewer_nickname | is_email_alert_enabled_when_commented | is_email_alert_enabled_when_commented_optout_url | is_email_alert_enabled_when_published | submission_time | review_title 
-----------+----------------+-------------+----------------+---------------+---------------+--------------+--------------+---------------+-------------------+-------------------+-----------------------+-----------------+--------+--------------+-------------+-------------------+-------------------+---------------------------------------+--------------------------------------------------+---------------------------------------+-----------------+--------------
(0 rows)

iqtc_cms_db=# 
