-- Question 2 

create table Students (
    id int NOT NULL ,
    username varchar(20),
    password varchar(20),
    firstname varchar(20),
    lastname varchar(20),
    email varchar(20),
    class varchar(20),
    birthdate date ,
    ssn numeric(10,0),
    address varchar(200),
    phoneNumber numeric(8,0),

    PRIMARY KEY (id)
);

create table Classes (
    title varchar(20),
    teacher  varchar(20),
    situation varchar(5) CHECK (situation in ('A' , 'NA')) ,
    topic  varchar(20),
    grade varchar(3) CHECK (grade in ('1st', '2nd', '3rd', '4th', '5th', '6th', '7th', '9th', '10th', '11th' , '12th')) , 
    started_at date ,
    end_at date 
);

create table Week (
    class varchar(20),
    teacher varchar(20),
    topic varchar(20),
    day varchar(3)  NOT NULL CHECK (day in  ('SAT','SUN','MON','TUE','WED','THU','FRI')),
    beginning time , 
    closing time
);

create table Homeworks (
    id int NOT NULL , 
    title  varchar(20),
    description  varchar(200),
    file_path  varchar(200),
    class  varchar(20),
    topic  varchar(1) CHECK (topic in ('M', 'P', 'C', 'B', 'F', 'E', 'A', 'R')),
    created_at date ,
    deadline date 
    PRIMARY KEY (id)
);

create table Assignments (
    id int NOT NULL, 
    description  varchar(200),
    file_path  varchar(200),
    homework int,
    Student int,
    courseTopic  varchar(20),
    created_at date , 
    FOREIGN KEY (homework) REFERENCES Homeworks(id) ON DELETE CASCADE,
    FOREIGN KEY (Student) REFERENCES Students(id) ON DELETE CASCADE ,
    PRIMARY KEY (ID)
);

create table Grades (    
    homework int ,
    assignment int , 
    grade  numeric(4,2), 
    FOREIGN KEY (homework) REFERENCES Homeworks(id) ON DELETE CASCADE ,
    FOREIGN KEY (assignment) REFERENCES Assignments(id) ON DELETE NO ACTION 
);

