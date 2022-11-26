CREATE FUNCTION HWgrade(@hwid INT)
RETURNS TABLE
RETURN
    SELECT MIN(grade) AS Minimum , MAX(grade) AS Maximum , AVG(grade) AS Average
    FROM Grades
    WHERE homework = @hwid
;

-- test : select * from HWgrade(3)