create table Employees (
    id int NOT NULL,
    SSN numeric(10),
    firstname varchar(20),
    lastname varchar(20),
    position varchar(30), 
    parent_id int , 
    PRIMARY KEY (id)
);

insert into Employees (id ,SSN , firstname , lastname , position ) values (1,1234567890 , "Ali" ,  "Jafari" ,  "CEO") ;
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (2,1236547524 ,"Zahra" ,"Kazemi" ,"HRM",1) ;
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (3,1236523654 ,"Saleh" ,"Akbari" ,"FM",1) ;
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (4,1246578125 ,"Reza" ,"Bageri" ,"TM",1) ;
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (5,4512547856 ,"Sina" ,"Ahmadi" ,"E",3) ;
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (6,2365478941 ,"Melika" ,"Zare" ,"E", 4);
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (7,1230212015 ,"Maryam" ,"Askari" ,"E", 4);
insert into Employees (id ,SSN , firstname , lastname , position, parent_id ) values (8,    1203201458 ,"Mehrdad" ,"Moradi" ,"E", 4);
