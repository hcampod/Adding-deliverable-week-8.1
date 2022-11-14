--STEP 3:
SELECT 'male' AS Male_Students_Completed_Course_Preparation, COUNT(gender) AS Number

FROM [EC_IT143_DA].[dbo].[archive (2)]
WHERE gender = 'male' AND test_preparation_course = 'completed'
