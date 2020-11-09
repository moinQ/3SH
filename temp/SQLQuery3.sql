CREATE TABLE [dbo].[requirment]
(
	[Mm_id] NVARCHAR(50) NOT NULL , 
    [R_id] NVARCHAR(50) NOT NULL, 
    [type] NVARCHAR(50) NOT NULL, 
    [name] NVARCHAR(50) NOT NULL, 
    [details] NVARCHAR(50) NOT NULL, 
    [neededfor] NVARCHAR(50) NOT NULL, 
    [needed] NVARCHAR(50) NOT NULL, 
    [neededby] DATE NOT NULL, 
    [otherdetails] NVARCHAR(100) NULL, 
    PRIMARY KEY ([mm_id],[R_id])
)