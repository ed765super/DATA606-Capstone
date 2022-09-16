USE Arrests
GO

INSERT INTO Arrest(ArrestDateTime, ArrestLocation)
SELECT ArrestDateTime, ArrestLocation FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM Arrest);

INSERT INTO District(District)
SELECT District FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM District);

INSERT INTO Criminal(Age, Gender, Race)
SELECT Age, Gender, Race FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM Criminal);

INSERT INTO GeoLocation(Latitude, Longitude, Geolocation)
SELECT Latitude, Longitude, Geolocation FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM GeoLocation);

INSERT INTO Incident(IncidentOffense, IncidentLocation)
SELECT IncidentOffense, IncidentLocation FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM Incident);

INSERT INTO Charge(charge, ChargeDescription, post)
SELECT charge, ChargeDescription, post FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM Charge);

INSERT INTO Neighborhood(Neighborhood)
SELECT Neighborhood FROM ArrestInstance
WHERE NOT EXISTS (SELECT * FROM Neighborhood);

-- Right click delete Arrest instance after insert into