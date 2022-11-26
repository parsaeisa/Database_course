CREATE FUNCTION ClassCount1()
RETURNS TABLE
RETURN
    SELECT COUNT(*) AS 'Class Count'
    FROM Classes
;

-- test : select * from ClassCount