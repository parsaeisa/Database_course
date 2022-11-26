CREATE FUNCTION GradeClassCount()
RETURNS TABLE
RETURN
    SELECT grade , COUNT(*) AS 'Class Count'
    FROM Classes
    GROUP BY grade
;

-- test : select * from HWgrade(3)