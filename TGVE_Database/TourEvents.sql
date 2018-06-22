CREATE TABLE [dbo].[TourEvents]
(
	[TourName] NVARCHAR(40) NOT NULL,
	[EventMonth] NVARCHAR(20) NOT NULL,
	[EventDay] INT NOT NULL,
	[EventYear] NVARCHAR(20) NOT NULL,
	[Fee] INT NOT NULL,
    PRIMARY KEY (TourName, EventMonth, EventDay, EventYear),
	CONSTRAINT [FK_TourName] FOREIGN KEY (TourName) REFERENCES Tours(TourName)
)