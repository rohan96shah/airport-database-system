-- author: Rohan Shah

INSERT INTO Flight (FLNO, Meal, Smoking) VALUES (1000, 'Bistro', 'Y');
INSERT INTO Flight (FLNO, Meal, Smoking) VALUES (1010, 'Meal', 'N');
INSERT INTO Flight (FLNO, Meal, Smoking) VALUES (1020, 'Meal', 'Y');
INSERT INTO Flight (FLNO, Meal, Smoking) VALUES (1030, 'Snack', 'N');
INSERT INTO Flight (FLNO, Meal, Smoking) VALUES (1040, 'Meal', 'N');

INSERT INTO FlightInstance (FLNO, FDate) VALUES (1000, '2002-10-05');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1000, '2002-10-06');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1000, '2002-10-07');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1010, '2002-10-05');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1010, '2002-10-06');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1020, '2002-10-05');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1030, '2002-10-05');
INSERT INTO FlightInstance (FLNO, FDate) VALUES (1040, '2002-10-07');


INSERT INTO Passenger (ID, Name, Phone) VALUES (1, 'Jones', 9729991111);
INSERT INTO Passenger (ID, Name, Phone) VALUES (2, 'James', 2141119999);
INSERT INTO Passenger (ID, Name, Phone) VALUES (3, 'Henry', 2142221111);
INSERT INTO Passenger (ID, Name, Phone) VALUES (4, 'Luis', 9721113333);
INSERT INTO Passenger (ID, Name, Phone) VALUES (5, 'Howard', 9723331111);
INSERT INTO Passenger (ID, Name, Phone) VALUES (6, 'Frank', 2141115555);
INSERT INTO Passenger (ID, Name, Phone) VALUES (7, 'Frankel', 9721112222);
INSERT INTO Passenger (ID, Name, Phone) VALUES (8, 'Bushnell', 2141114444);
INSERT INTO Passenger (ID, Name, Phone) VALUES (9, 'Camden', 2142225555);
INSERT INTO Passenger (ID, Name, Phone) VALUES (10, 'Max', 9724441111);
INSERT INTO Passenger (ID, Name, Phone) VALUES (11, 'Flores', 2143336666);
INSERT INTO Passenger (ID, Name, Phone) VALUES (12, 'Clinton', 2142225555);

INSERT INTO Pilot (ID, Name, DateHired) VALUES (1, 'Jones', '1990-05-10');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (2, 'Adams', '1990-06-01');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (3, 'Walker', '1991-07-02');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (4, 'Flores', '1992-04-01');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (5, 'Thompson', '1992-04-10');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (6, 'Dean', '1993-09-02');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (7, 'Carter', '1994-08-01');
INSERT INTO Pilot (ID, Name, DateHired) VALUES (8, 'Mango', '1995-05-02');

INSERT INTO PlaneType (Maker, Model, FlyingSpeed, GroundSpeed) VALUES ('MD','MD11',600,180);
INSERT INTO PlaneType (Maker, Model, FlyingSpeed, GroundSpeed) VALUES ('MD','SUPER80',500,170);
INSERT INTO PlaneType (Maker, Model, FlyingSpeed, GroundSpeed) VALUES ('BOEING','727',510,150);
INSERT INTO PlaneType (Maker, Model, FlyingSpeed, GroundSpeed) VALUES ('BOEING','757',650,160);
INSERT INTO PlaneType (Maker, Model, FlyingSpeed, GroundSpeed) VALUES ('AIRBUS','A300',620,150);
INSERT INTO PlaneType (Maker, Model, FlyingSpeed, GroundSpeed) VALUES ('AIRBUS','A320',700,180);

INSERT INTO Airport (Code, City, State) VALUES ('DFW', 'Dallas', 'TX');
INSERT INTO Airport (Code, City, State) VALUES ('LOG', 'Boston', 'MA');
INSERT INTO Airport (Code, City, State) VALUES ('ORD', 'Chicago', 'IL');
INSERT INTO Airport (Code, City, State) VALUES ('MDW', 'Chicago', 'IL');
INSERT INTO Airport (Code, City, State) VALUES ('JFK', 'New York', 'NY');
INSERT INTO Airport (Code, City, State) VALUES ('LGA', 'New York', 'NY');
INSERT INTO Airport (Code, City, State) VALUES ('INT', 'Houston', 'TX');
INSERT INTO Airport (Code, City, State) VALUES ('LAX', 'Los Angeles', 'CA');

INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (1, 'MD', 'MD11', '2002-09-03', 'DFW'); 
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (2, 'MD', 'MD11', '2002-09-04', 'MDW');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (3, 'MD', 'SUPER80', '2002-09-01', 'LAX');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (4, 'MD', 'SUPER80', '2002-09-03', 'ORD');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (5, 'MD', 'SUPER80', '2002-09-06', 'LGA');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (6, 'BOEING', '727', '2002-10-02', 'DFW');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (7, 'BOEING', '757', '2002-10-02', 'LAX');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (8, 'AIRBUS', 'A300', '2002-09-01', 'INT');
INSERT INTO Plane (ID, Maker, Model, LastMaint, LastMaintA) VALUES (9, 'AIRBUS', 'A320', '2002-09-04', 'LOG');

INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1000, 1, 'DFW', 'LOG', '2001-01-01 10:20:00', '2001-01-01 13:40:00', 7);        
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1010, 1, 'LAX', 'ORD', '2001-01-01 13:10:00', '2001-01-01 16:20:00', 3);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1010, 2, 'ORD', 'JFK', '2001-01-01 17:10:00', '2001-01-01 20:20:00', 3);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1020, 1, 'LOG', 'JFK', '2001-01-01 05:40:00', '2001-01-01 06:20:00', 9);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1020, 2, 'JFK', 'DFW', '2001-01-01 07:20:00', '2001-01-01 10:20:00', 9);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1020, 3, 'DFW', 'INT', '2001-01-01 11:10:00', '2001-01-01 11:40:00', 7);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1020, 4, 'INT', 'LAX', '2001-01-01 12:20:00', '2001-01-01 15:10:00', 7);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1030, 1, 'LAX', 'INT', '2001-01-01 11:20:00', '2001-01-01 16:10:00', 6);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1030, 2, 'INT', 'DFW', '2001-01-01 17:20:00', '2001-01-01 18:00:00', 6);
INSERT INTO FlightLeg (FLNO, Seq, FromA, ToA, DeptTime, ArrTime, Plane) VALUES (1040, 1, 'LAX', 'LGA', '2002-01-01 15:30:00', '2001-01-01 21:00:00', 1);

INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (1, 1000, '2002-10-05', 'DFW', 'LOG', 'E', '2002-09-05');      
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (1, 1020, '2002-10-05', 'LOG', 'JFK', 'E', '2002-09-14');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (2, 1020, '2002-10-05', 'LOG', 'INT', 'E', '2002-09-04');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (3, 1020, '2002-10-05', 'JFK', 'LAX', 'E', '2002-09-19');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (4, 1020, '2002-10-05', 'LOG', 'LAX', 'E', '2002-09-10');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (5, 1020, '2002-10-05', 'LOG', 'DFW', 'F', '2002-09-29');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (6, 1010, '2002-10-05', 'LAX', 'JFK', 'E', '2002-09-19');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (7, 1010, '2002-10-05', 'LAX', 'ORD', 'E', '2002-09-27');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (8, 1030, '2002-10-05', 'LAX', 'DFW', 'F', '2002-10-05');  
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (3, 1010, '2002-10-06', 'LAX', 'JFK', 'E', '2002-09-14');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (9, 1010, '2002-10-06', 'LAX', 'JFK', 'E', '2002-09-09');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked, DateCancelled) VALUES (10, 1010, '2002-10-06', 'ORD', 'JFK', 'E', '2002-09-07', '2002-09-19');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (11, 1000, '2002-10-06', 'DFW', 'LOG', 'E', '2002-09-09');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (12, 1000, '2002-10-06', 'DFW', 'LOG', 'E', '2002-09-19'); 
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (1, 1010, '2002-10-06', 'ORD', 'JFK', 'E', '2002-09-15');
INSERT INTO Reservation (PassID, FLNO, FDate, FromA, ToA, SeatClass, DateBooked) VALUES (1, 1040, '2002-10-07', 'LAX', 'LGA', 'E', '2002-10-01'); 

INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (1, 1000, '2002-10-05', '2002-01-01 10:10:00', '2002-01-01 13:10:00', 3);       
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (1, 1000, '2002-10-06', '2002-01-01 10:30:00', '2002-01-01 14:20:00', 8);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (1, 1010, '2002-10-05', '2002-01-01 13:20:00', '2002-01-01 17:10:00', 1);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (2, 1010, '2002-10-05', '2002-01-01 18:00:00', '2002-01-01 21:00:00', 1);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (1, 1010, '2002-10-06', '2002-01-01 13:10:00', '2002-01-01 16:10:00', 3);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (2, 1010, '2002-10-06', '2002-01-01 17:00:00', '2002-01-01 20:30:00', 6);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (1, 1020, '2002-10-05', '2002-01-01 05:40:00', '2002-01-01 06:30:00', 5);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (2, 1020, '2002-10-05', '2002-01-01 07:30:00', '2002-01-01 10:40:00', 5);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (3, 1020, '2002-10-05', '2002-01-01 11:30:00', '2002-01-01 12:20:00', 5);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (4, 1020, '2002-10-05', '2002-01-01 13:00:00', '2002-01-01 16:00:00', 2);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (1, 1030, '2002-10-05', '2002-01-01 11:20:00', '2002-01-01 16:10:00', 8);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate, ActDept, ActArr, Pilot) VALUES (2, 1030, '2002-10-05', '2002-01-01 17:20:00', '2002-01-01 18:40:00', 8);
INSERT INTO FlightLegInstance (Seq, FLNO, FDate) VALUES (1, 1000, '2002-10-07');
INSERT INTO FlightLegInstance (Seq, FLNO, FDate) VALUES (1, 1040, '2002-10-07'); 

INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('MD', 'MD11', 'F', 20);  
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('MD', 'MD11', 'E', 150);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('MD', 'SUPER80', 'F', 10);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('MD', 'SUPER80', 'E', 90);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('BOEING', '727', 'F', 10);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('BOEING', '727', 'E', 110);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('BOEING', '757', 'F', 20);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('BOEING', '757', 'E', 160);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('AIRBUS', 'A300', 'F', 20);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('AIRBUS', 'A300', 'E', 160);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('AIRBUS', 'A320', 'F', 30);
INSERT INTO PlaneSeats (Maker, Model, SeatType, NoOfSeats) VALUES ('AIRBUS', 'A320', 'E', 200);
