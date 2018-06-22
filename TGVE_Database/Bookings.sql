CREATE TABLE [dbo].[Bookings]
(
	[ClientID] INT NOT NULL,
	[TourName] NVARCHAR(40) NOT NULL,
	[EventMonth] NVARCHAR(20) NOT NULL,
	[EventDay] INT NOT NULL,
	[EventYear] NVARCHAR(20) NOT NULL,
	[Payment] INT NOT NULL,
	[DateBooked] NVARCHAR(30) NOT NULL,
    PRIMARY KEY (ClientID, TourName, EventMonth, EventDay, EventYear),
    CONSTRAINT [FK_ClientID] FOREIGN KEY (ClientID) REFERENCES Client(ClientID)
)