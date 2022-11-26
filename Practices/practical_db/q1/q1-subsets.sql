CREATE FUNCTION Subsets(@id INT)
RETURNS TABLE
RETURN
    SELECT *
    FROM Employees
    WHERE parent_id = @id
;