-- Using master database
USE master;
go
  
-- Creating new database
create database DataWarehouse;

-- Using the created database 
Use DataWarehouse;


-- Creating schema for each layer
create schema bronze;
go
create schema silver;
go
create schema gold;
