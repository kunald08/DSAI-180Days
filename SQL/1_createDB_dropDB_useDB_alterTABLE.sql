-- Create DB
CREATE DATABASE IF NOT EXISTS kunal_db;

-- DROP DB
DROP DATABASE kunal_db;

-- we can use this via cmd;
USE kunal_db;

-- Create table within db;
CREATE TABLE Person(
    PersonID int,
    LastName varchar(255),
    FirstName varchar(255),
    Address varchar(255),
    Cityperson varchar(255)
);

CREATE TABLE Customer (
	customerid int,
	customername varchar(255),
    contactname varchar(255)
);

-- Create table from an another table;
CREATE TABLE TestTable AS
SELECT customername, contactname
FROM Customer;

-- droping table;
DROP TABLE testtable;

-- drop table deletes entires table from db; truncate deletes only data inside the table;
TRUNCATE TABLE Customer;

-- Alter statement -> is used to add, delete, or modify columns in an existing table.
-- 1) ALTER - ADD COLUMN
ALTER TABLE Customer
ADD Email varchar(255);

-- 2) ALTER - DROP COLUMN
ALTER TABLE Customer
DROP COLUMN customername;

-- 3) ALTER - MODIFY COLUMN
ALTER TABLE Customer
MODIFY COLUMN contactname varchar(100);

-- 4) ALTER - RENAME COLUMN
ALTER TABLE Customer
RENAME column contactname to Address;