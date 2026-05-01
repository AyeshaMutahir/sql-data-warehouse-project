/*
=======================================================

Create Database and Schemas

=======================================================
Script Purpose:
      This script creates a new database named 'DataWareHouse' after checking if it already exists.
      If the database exists, it is dropped and recreated. Aditionally, the script sets up three schemas within 
      the database: 'bronze' , 'silver' and 'gold'.

Warning:
     Running this script will drop the entire 'DataWareHouse' database if it exists.
     All data in the database will be permanently deleted . Proceed with caution and ensure you have proper backups before 
     running this script.
*/

Use master;
GO
--Drop and recreate the 'DateWareHouse' database
IF EXISTS (SELECT 1 FROM sys.database Where name = 'DataWareHouse')
BEGIN
ALTER DATABASE DataWareHouse SET Single_USER WITH ROLLBACK IMMEDIATE ; 
DROP DATABASE DataWareHouse;
END;
GO

--Create DataWareHouse Database
create DATABASE DataWareHouse;
GO

USE DataWareHouse;
GO

--Create Schemas
CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
