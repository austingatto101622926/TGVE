﻿CREATE TABLE [dbo].[Client]
(
	[ClientID] INT NOT NULL,
	[SurName] NVARCHAR(40) NOT NULL,
	[GivenName] NVARCHAR(40) NOT NULL,
	[Gender] NVARCHAR(10) NOT NULL,
    PRIMARY KEY (ClientID)
)