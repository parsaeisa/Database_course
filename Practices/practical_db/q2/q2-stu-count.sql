
CREATE FUNCTION studentCnt()
RETURNS INT
AS 
BEGIN
    DECLARE @COUNT INT
    
    SET @COUNT = ( SELECT COUNT(*) FROM Students )

    RETURN @COUNT
END
;