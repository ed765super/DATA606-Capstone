USE Arrests
GO

--check if the table exists
IF NOT EXISTS (SELECT * FROM sysobjects WHERE name='ArrestInstance' and xtype='U')
BEGIN
    CREATE TABLE ArrestInstance(
		X FLOAT,
		Y FLOAT,
		ROWID INT,
        ArrestNumber INT PRIMARY KEY IDENTITY (1, 1),
		Age INT check (Age >= 0),
		Gender VARCHAR(1) check ((Gender = 'M') or (Gender = 'F')),
		Race VARCHAR(1) check ((Race = 'B') or (Race = 'W') or (Race = 'U') or (Race = 'A') or (Race = 'I')),
        ArrestDateTime VARCHAR(22),
		ArrestLocation VARCHAR(100),
		IncidentOffense VARCHAR(100),
        IncidentLocation VARCHAR(100),
		charge INT,
        ChargeDescription VARCHAR(100),
		District VARCHAR(100),
		post INT,
		Neighborhood VARCHAR(100),
        Latitude FLOAT,
		Longitude FLOAT,
		Geolocation VARCHAR(100),
		Shape VARCHAR(1)
		)
END