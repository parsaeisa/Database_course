CREATE PROCEDURE deleteUser @id1 int, @id2 int
AS
    DELETE FROM Employees WHERE id = @id2
    UPDATE Employees SET parent_id = @id2 WHERE parent_id = @id1;

exec deleteUser @id1 = 4 , @id2 = 1 ;
Go