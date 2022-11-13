--STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_artists;
 GO
 CREATE TABLE dbo.t_artists
 (Name VARCHAR(100) NOT NULL,
 Nationality VARCHAR(25) NOT NULL,
 Birth_Year INT  NOT  NULL
 CONSTRAINT PK_t_artists
 PRIMARY KEY CLUSTERED (Name ASC));
 GO