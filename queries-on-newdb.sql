-- Query 1
SELECT ID, Model, LastMaint
FROM Plane
WHERE Maker='Boeing';

-- Query 2
SELECT name
FROM ((Flight NATURAL JOIN Reservation) JOIN Passenger ON PassID=ID)
WHERE Meal=1;

-- Query 3
SELECT Name
FROM (((Airport JOIN FlightLeg ON Code=FromA) NATURAL JOIN FlightLegInstance) JOIN Pilot ON Pilot=ID)
WHERE State='TX'
ORDER BY ID;

-- Query 4
SELECT COUNT(*)
FROM(FlightLegInstance JOIN Pilot ON Pilot=ID)
WHERE Name='Jones';

-- Query 5
SELECT Maker, Model, SUM(NoOfSeats)
FROM (SELECT Maker, Model, SUM(NoOfSeats) AS NoOfSeats FROM PlaneSeats GROUP BY Model)a
WHERE NoOfSeats>300
GROUP BY Model;  

-- Query 6
SELECT Plane.Maker, COUNT(*) FROM Plane WHERE Plane.Maker IN (SELECT Maker FROM (SELECT Maker, SUM(NoOfSeats) AS Counter FROM PlaneSeats GROUP BY Maker, Model)a HAVING SUM(Counter)>350);

