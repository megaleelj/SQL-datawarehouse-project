/*
Create Database and Schemas
===============================================
Script:
Purpose: Create a SQL Server database named 'DataWarehouse' 
and define medallion architecture schemas: bronze, silver, gold

- Overview:
- Checks for the existence of the database and schemas before creating them.
- This prevents errors and makes the script safe to re-run.
- Commonly used in Data Warehousing for structured data processing layers.

- Warnings:
- This script does NOT drop or overwrite existing objects.
- If the database or schema already exists, it will be skipped with a message.

================================================
 Step 1: Connect to the master database to create a new one
*/
USE master;
 GO 
 -- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse; 
GO
-- Check if the database 'DataWarehouse' already exists
-- If it does NOT exist, create it
-- If it does exist, skip creation and show a message
/*
IF NOT EXISTS (
    SELECT name
    FROM sys.databases
    WHERE name = 'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
    PRINT 'Database "DataWarehouse" created.';
END
ELSE
BEGIN
    PRINT 'Database "DataWarehouse" already exists. Skipping creation.';
    -- Optional: DROP DATABASE DataWarehouse; -- WARNING: this deletes everything!
END
*/
  
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA sliver;
GO
  
CREATE SCHEMA gold;
