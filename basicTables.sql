Last login: Thu Nov 30 11:31:44 on ttys001
QTC-007s-MacBook-Pro:~ nileshbabanpawar$ /Library/PostgreSQL/10/scripts/runpsql.sh; exit
Server [localhost]: 
Database [postgres]: 
Port [5432]: 
Username [postgres]: 
Password for user postgres: 
psql (10.1)
Type "help" for help.

postgres=# create database electrolux_db;
CREATE DATABASE
postgres=# \c electrolux_db;
You are now connected to database "electrolux_db" as user "postgres".
electrolux_db=# create table brand(brand_id int primary key,brand_name varchar(50),brand_short varchar(50));
CREATE TABLE
electrolux_db=# create table retailer(retailer_id int primary key,retailer_name varchar(50));
CREATE TABLE
electrolux_db=# create table campaign(campaign_id int primary key,campaign_name varchar(100),campaign_short varchar(100));
CREATE TABLE
electrolux_db=# create table UserRole(user_role_id int primary key,role_name varchar(100));
CREATE TABLE
electrolux_db=# create table company(company_id int primary key,company_name varchar(100));
CREATE TABLE
electrolux_db=# \dt
          List of relations
 Schema |   Name   | Type  |  Owner   
--------+----------+-------+----------
 public | brand    | table | postgres
 public | campaign | table | postgres
 public | company  | table | postgres
 public | retailer | table | postgres
 public | userrole | table | postgres
(5 rows)

electrolux_db=# 
































