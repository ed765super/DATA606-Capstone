IF NOT EXISTS(SELECT * FROM sys.databases WHERE name = 'Arrests')
  BEGIN
    CREATE DATABASE Arrests


    END
    GO
       USE Arrests
    GO
--check if the table exists
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Arrest' and xtype='U')
BEGIN
    CREATE TABLE Arrest (
        ArrestNumber VARCHAR(50),
        ArrestDateTime VARCHAR(22),
		ArrestLocation VARCHAR(100)
    )
	END
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Criminal' and xtype='U')
BEGIN
    CREATE TABLE Criminal (
        Age VARCHAR(50) check (Age >= 0),
		Gender VARCHAR(1) check ((Gender = 'M') or (Gender = 'F')),
		Race VARCHAR(1) check ((Race = 'B') or (Race = 'W') or (Race = 'U') or (Race = 'A') or (Race = 'I'))
    )
	END
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Incident' and xtype='U')
BEGIN
    CREATE TABLE Incident (
        IncidentOffense VARCHAR(100),
        IncidentLocation VARCHAR(100)
    )
	END
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Charge' and xtype='U')
BEGIN
    CREATE TABLE Charge (
        charge VARCHAR(50),
        ChargeDescription VARCHAR(100),
		post VARCHAR(50)
    )
	END
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='GeoLocation' and xtype='U')
BEGIN
    CREATE TABLE GeoLocation (
        Geolocation VARCHAR(100),
        Latitude FLOAT,
		Longitude FLOAT
    )
	END
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='Neighborhood' and xtype='U')
BEGIN
    CREATE TABLE Neighborhood (
        Neighborhood VARCHAR(100)

    )
	END
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='District' and xtype='U')
BEGIN
    CREATE TABLE District (
        District VARCHAR(100)
   
    )
END