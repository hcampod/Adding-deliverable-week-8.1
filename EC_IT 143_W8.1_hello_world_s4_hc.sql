
DROP VIEW IF  EXISTS dbo.v.hello_world_load
GO
CREATE VIEW dbo.v_hello_world_load AS

/*****************************************************************************************************************
NAME:   dbo.v_hello_world_load
PURPOSE: Create the Hello World -Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/11/2022   JJAUSSI       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: 
Scripts  exists to help me  learn  step 4  of 8  in the  answer focused Apptoach for T-SQL Data Manipulation
******************************************************************************************************************/

SELECT 'Hello World' AS my_message
, GETDATE() AS current_date_time;