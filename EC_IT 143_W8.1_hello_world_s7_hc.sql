CREATE  PROCEDURE dbo.usp_hello_world_load
 AS
 
/*****************************************************************************************************************
NAME:    dbo.ups_hello_world_load
PURPOSE: Hello World - Load User Stored Procedure

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/11/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
1s

NOTES: This  script  exists  to  help me  learn step  7  of 8  in the  answer  focused approach for T-SQL Data 
Manipulation

******************************************************************************************************************/


 TRUNCATE TABLE dbo.t_hello_world;
 INSERT INTO dbo.t_hello_world
 SELECT v.my_message
 ,v.curent_date_time
 FROM dbo.v_hello_world_load AS v;
 SELECT t.*
 FROM dbo.t_hello_world AS t;
 END;
 GO
