USE FP;
GO

IF DB_ID('FP') IS NOT NULL
BEGIN
    DROP DATABASE IF EXISTS FP 
    IF (NOT OBJECT_id('FP') IS NOT NULL)
END

CREATE DATABASE FP;
END


IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME='id') 
BEGIN
ALTER TABLE dbo.FP DROP CONSTRAINT FK_id 
DROP TABLE dbo.PharmData 
END

CREATE TABLE Pharmcustomers (
	id		INT		IDENTITY(1,1),
	first_name	VARCHAR(50),
	last_name	VARCHAR(50),
	email		VARCHAR(50),
    gender       VARCHAR(50),
	Active_IND	INT,
    Pharmacy_Brand VARCHAR(200),
    Pharmacy_Generic VARCHAR(200),
    Pharmacy_Company VARCHAR(200),
	CREATE_BY	VARCHAR(200),
	CREATE_DT	DATETIME,
	UPDATE_BY	VARCHAR(50),
		CONSTRAINT	PK_id	PRIMARY KEY	NONCLUSTERED (id)
	)

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME='Store') 
BEGIN
	ALTER TABLE dbo.PharmData DROP CONSTRAINT FK_
	DROP TABLE dbo.PharmData
END

CREATE TABLE FP (
	id		INT		IDENTITY(1,1),
	first_name	VARCHAR(50),
	last_name	VARCHAR(50),
	email		VARCHAR(50),
    gender       VARCHAR(50),
	Active_IND	INT,
    Pharmacy_Brand VARCHAR(200),
    Pharmacy_Generic VARCHAR(200),
    Pharmacy_Company VARCHAR(200),
	CREATE_BY	VARCHAR(200),
	CREATE_DT	DATETIME,
	UPDATE_BY	VARCHAR(50),
	CONSTRAINT	PK_id	PRIMARY KEY NONCLUSTERED (PK_id),
	CONSTRAINT FK_gender FOREIGN KEY (Pharmacy_Brand,Pharmacy_Generic (varchar, null), Pharmacy_Company) REFERENCES dbo.PharmData,
       	)
    

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME='FP') 
BEGIN
	ALTER TABLE dbo.PharmData DROP CONSTRAINT FK_
	DROP TABLE dbo.PharmData
END

CREATE TABLE dbo.PharmData  (
	id		INT		IDENTITY(1,1),
	first_name	VARCHAR(50),
	last_name	VARCHAR(50),
	email		VARCHAR(50),
    gender       VARCHAR(50),
	Active_IND	INT,
    Pharmacy_Brand VARCHAR(200),
    Pharmacy_Generic VARCHAR(200),
    Pharmacy_Company VARCHAR(200),
	CREATE_BY	VARCHAR(200),
	CREATE_DT	DATETIME,
	UPDATE_BY	VARCHAR(50),
	CONSTRAINT	PK_id	PRIMARY KEY NONCLUSTERED (id)
	)

IF EXISTS (SELECT 1 FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_TYPE='BASE TABLE' AND TABLE_NAME='FP') 
BEGIN
    ALTER TABLE dbo.PharmData DROP CONSTRAINT FK_
    TRUNCATE TABLE dbo.PharmData 
	DROP TABLE dbo.PharmData

insert into dbo.Employee (id, first_name, last_name, email, gender, Pharmacy_Brand, Pharmacy_Generic, Pharmacy_Company)values

END

