--STEP 7:
 CREATE  PROCEDURE dbo.usp1_MStudentsCP
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups1_MStudentsCP
PURPOSE: MStudentsCP User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo      1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_MStudents_Completed_Preparation;
 INSERT INTO dbo.t_MStudents_Completed_Preparation
 SELECT v.Male_Students_Completed_Course_Preparation
 , v.Number
 FROM dbo.t_MStudents_Completed_Preparation AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_MStudents_Completed_Preparation AS t;
 END;
 GO