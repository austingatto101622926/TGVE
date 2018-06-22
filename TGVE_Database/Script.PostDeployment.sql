/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM TourEvents;
DELETE FROM Tours;
DELETE FROM Bookings;
DELETE FROM Client;

INSERT INTO Client(ClientID, SurName, GivenName, Gender) VALUES
(1, 'Price', 'Taylor', 'M'),
(2, 'Gamble', 'Ellyse', 'F'),
(3, 'Tan', 'Tilly', 'F');

INSERT INTO Tours(TourName, Descr) VALUES
('West', 'Tour of wineries and outlets of the Geelong and Otways region'),
('East', 'Tour of wineries and outlets of the Yarra Valley'),
('South', 'Tour of wineries and outlets of Mornington Penisula'),
('North', 'Tour of wineries and outlets of the Bedigo and Castlemaine region');

INSERT INTO Bookings(ClientID, TourName, EventMonth, EventDay, EventYear, Payment, DateBooked) VALUES
(1, 'North', 'Jan', 9, 2016, 200, '10/12/2015'),
(2, 'North', 'Jan', 9, 2016, 200, '16/12/2015'),
(1, 'North', 'Feb', 13, 2016, 225, '08/01/2016'),
(2, 'North', 'Feb', 13, 2016, 225, '14/01/2016'),
(3, 'North', 'Feb', 13, 2016, 225, '03/02/2016'),
(1, 'South', 'Jan', 16, 2016, 200, '10/12/2015'),
(2, 'South', 'Jan', 16, 2016, 200, '18/12/2015'),
(3, 'South', 'Jan', 16, 2016, 200, '09/01/2016'),
(2, 'West', 'Jan', 29, 2016, 200, '17/12/2015'),
(3, 'West', 'Jan', 29, 2016, 200, '18/12/2015');

INSERT INTO TourEvents(TourName, EventMonth, EventDay, EventYear, Fee) VALUES
('North', 'Jan', 9, 2016, 200),
('North', 'Feb', 13, 2016, 225),
('South', 'Jan', 16, 2016, 200),
('West', 'Jan', 29, 2016, 225);

END