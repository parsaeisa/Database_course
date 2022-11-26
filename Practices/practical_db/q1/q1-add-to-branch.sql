CREATE PROCEDURE adduser @id int,
    @SSN numeric(10),
    @firstname varchar(20),
    @lastname varchar(20),
    @position varchar(30), 
    @parent_id int
AS
    insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) 
    values (@id ,@SSN , @firstname , @lastname , @position, @parent_id ) ;

exec adduser @id = 9 , @SSN = 1111111111, @firstname = "parsa" , @lastname = "eissazadeh" , @position = 'backend ' , @parent_id = 5 ;
Go 