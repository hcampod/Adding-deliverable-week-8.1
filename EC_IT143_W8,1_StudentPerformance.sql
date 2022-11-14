--STEP 6:
 --Q: Aman want to know  how many male students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_MStudents_Completed_Preparation;
 INSERT INTO dbo.t_MStudents_Completed_Preparation 
 SELECT  v.Male_Students_Completed_Course_Preparation
 , v.Number
 FROM dbo.v_MStudents_Completed_Preparation  AS v; 
 --2)Review Result
 SELECT t.*
 FROM dbo.t_MStudents_Completed_Preparation  AS t;