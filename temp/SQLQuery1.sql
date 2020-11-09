CREATE TABLE [dbo].[product] (
    [Mm_id]   NVARCHAR (50)  NOT NULL,
    [name]    NVARCHAR (50)  NOT NULL,
    [rate]    NUMERIC (18)   NOT NULL,
    [quality] NVARCHAR (50)  NOT NULL,
	[quanity] NVARCHAR (50)  NOT NULL,
    [period ] DATE           NOT NULL,
    [details] NVARCHAR (100) NOT NULL,
    PRIMARY KEY CLUSTERED ([Mm_id] ASC)
);