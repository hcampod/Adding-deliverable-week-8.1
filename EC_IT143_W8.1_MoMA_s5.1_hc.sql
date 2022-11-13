--STEP 5.1:
--Q:What are  the Names of the artists  that  are Spanish and  was  born in 1936? 
--A: Let's  ask  SQL SERVER TO FIND OUT...

 SELECT v.Name
 , v.Nationality
 , v.Birth_Year
 INTO dbo.t_artists
 FROM dbo.v_artists_load AS v;