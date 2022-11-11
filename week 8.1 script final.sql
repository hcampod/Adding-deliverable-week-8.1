--STEP 1:
--Q: What is the  current date  and time?

--STEP 2:
--Q: What is the  current date  and time?
--A: Let's  ask  SQL sERVER TO FIND OUT...

--STEP 3:
SELECT 'Hello World'AS my_message
, GETDATE() AS current_date_time;

STEP 4:
DROP VIEW  IF EXISTS dbo.v_hello_world_load
GO
CREATE VIEW dbo.v_hello_world_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_hello_world_load
PURPOSE: Create the Hello  World-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/11/2022   JJAUSSI       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT 'Hello World'AS my_message
, GETDATE() AS current_date_time;

--STEP 5.1:
--Q: What is the  current date  and time?
--A: Let's  ask  SQL sERVER TO FIND OUT...
 SELECT v.my_message
 , v.current_date_time
 INTO dbo.t_hello_world
 FROM dbo.v_hello_world_load AS v;

 --STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_hello_world
 (my_message VARCHAR(25) NOT NULL,
 current_date_time DATETIME NOT NULL
 CONSTRAINT PK_t_hello_world
 PRIMARY KEY CLUSTERED (my_message ASC));
 GO

 --STEP 6:
 --Q: What is the  current date  and time?
 --A: Let's  ask  SQL sERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_hello_world;
 INSERT INTO dbo.t_hello_world
 SELECT v.my_message
 , v.current_date_time
 FROM dbo.v_hello_world_load AS v;
 --2)Review Result
 SELECT t*
 FROM dbo.t_hello_world_load AS t;

 --STEP 7:
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
BEGIN 
--1)Reload Data
 TRUNCATE TABLE dbo.t_hello_world;
 INSERT INTO dbo.t_hello_world
 SELECT v.my_message
 , v.current_date_time
 FROM dbo.v_hello_world_load AS v;
 --2)Review Result
 SELECT t*
 FROM dbo.t_hello_world_load AS t;
 END;
 GO

 --STEP 8:
 --Q: What is the  current date  and time?
 --A: Let's  ask  SQL sERVER TO FIND OUT...
 EXEC dbo.usp_hello_world_load;








