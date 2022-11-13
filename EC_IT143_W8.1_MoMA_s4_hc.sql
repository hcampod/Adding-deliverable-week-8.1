--STEP 4:
DROP VIEW  IF EXISTS dbo.v_artists_load
GO
CREATE VIEW dbo.v_artists_load
AS
/*****************************************************************************************************************
NAME:  dbo.v_artists_load
PURPOSE: Create artists-Load View

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT Name,Nationality, Birth_Year
FROM [EC_IT143_DA].[dbo].[artists]
WHERE Birth_Year = '1936' 
