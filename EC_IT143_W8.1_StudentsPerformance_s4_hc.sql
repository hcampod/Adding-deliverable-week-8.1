DROP VIEW IF EXISTS dbo.v_MStudents_Completed_Preparation
GO
CREATE VIEW dbo.v_MStudents_Completed_Preparation
AS
/*****************************************************************************************************************
NAME:  dbo.v_MStudent_completed_Preparation

PURPOSE: Create MStudent_completed_Preparation view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     11/12/2022   HCampo       1. Built this script for EC IT143


RUNTIME: 
1s

NOTES: Scripts  exists  to help  me learn  step 4 of 8  in the  answer  focused Approach for T-SQL Data Manipulation

 
******************************************************************************************************************/
SELECT 'male' AS Male_Students_Completed_Course_Preparation, COUNT(gender) AS Number

FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE gender = 'male' AND test_preparation_course = 'completed'