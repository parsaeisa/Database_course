CREATE FUNCTION ClassHWgrade(@classTitle varchar(20))
RETURNS TABLE
RETURN
    SELECT h.title, MIN(grade) AS 'Minimum' , MAX(grade) AS 'Maximum' , AVG(grade) AS 'Average' 
    FROM  
        ( Grades g INNER JOIN Assignments a ON g.assignment = a.id )
        INNER JOIN Students s on a.Student = s.id 
            INNER JOIN Homeworks h on h.id = g.homework 
    WHERE s.class = @classTitle
    GROUP BY h.title
;