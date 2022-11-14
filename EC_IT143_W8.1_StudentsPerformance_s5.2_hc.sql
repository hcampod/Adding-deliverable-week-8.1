--STEP 5.2:
 DROP TABLE  IF EXISTS dbo.t_MStudents_Completed_Preparation
 GO
 CREATE TABLE dbo.t_MStudents_Completed_Preparation
 ( Male_Students_Completed_Course_Preparation VARCHAR(25) NOT NULL,
 Number INT NOT NULL
 CONSTRAINT PK_t_MStudents_Completed_Preparation
 PRIMARY KEY CLUSTERED (Male_Students_Completed_Course_Preparation ASC));
 GO