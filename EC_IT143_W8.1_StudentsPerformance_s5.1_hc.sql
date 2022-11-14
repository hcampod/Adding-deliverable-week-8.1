--STEP 5.1:
--Q: Aman want to know  how many male students completed the  test preparation? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 SELECT v.Male_Students_Completed_Course_Preparation
 , v.Number
 INTO dbo.t_MStudents_Completed_Preparation
 FROM dbo.v_MStudents_Completed_Preparation  AS v;