 --STEP 6:
 --Q:What are  the Names of the artists  that  are Spanish and  was  born in 1936? 

--A: Let's  ask  SQL SERVER TO FIND OUT...
 --1)Reload Data
 TRUNCATE TABLE dbo.t_artists;
 INSERT INTO dbo.t_artists
 SELECT v.Name
 , v.Nationality
 , v.Birth_Year

 FROM dbo.v_artists_load AS v;
 --2)Review Result
 SELECT t.*
 FROM dbo.t_artists  AS t;
