--STEP 7:
 CREATE  PROCEDURE dbo.usp_artists_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_artists_load
PURPOSE: Artists - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCAMPO       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Name
 , v.Nationality
 , v.Birth_Year
 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists AS t;
 END;
 GO
