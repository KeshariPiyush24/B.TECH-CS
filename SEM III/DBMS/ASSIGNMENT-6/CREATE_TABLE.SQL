create table College
(
    cName      VARCHAR(10) primary key,
    state      VARCHAR(10),
    enrollment int
);
create table Student
(
    sID    INT primary key,
    sName  VARCHAR(10),
    GPA    real,
    sizeHS int
);
create table Apply
(
    sID      int,
    cName    varchar(10),
    major    varchar(20),
    decision char(1),
    primary key
        (
         sID,
         major,
         cName
            ),
    constraint sID_fk Foreign key
        (
         sID
            ) references Student,
    constraint cName_fk Foreign key
        (
         cName
            ) references College
);

INSERT INTO student 
VALUES      (123, 
             'Amy', 
             3.9, 
             1000); 

INSERT INTO student 
VALUES      (234, 
             'Bob', 
             3.6, 
             1500); 

INSERT INTO student 
VALUES      (345, 
             'Craig', 
             3.5, 
             500); 

INSERT INTO student 
VALUES      (456, 
             'Doris', 
             3.9, 
             1000); 

INSERT INTO student 
VALUES      (567, 
             'Edward', 
             2.9, 
             2000); 

INSERT INTO student 
VALUES      (678, 
             'Fay', 
             3.8, 
             200); 

INSERT INTO student 
VALUES      (789, 
             'Gary', 
             3.4, 
             800); 

INSERT INTO student 
VALUES      (987, 
             'Helen', 
             3.7, 
             800); 

INSERT INTO student 
VALUES      (876, 
             'Irene', 
             3.9, 
             400); 

INSERT INTO student 
VALUES      (765, 
             'Jay', 
             2.9, 
             1500); 

INSERT INTO student 
VALUES      (654, 
             'Amy', 
             3.9, 
             1000); 

INSERT INTO student 
VALUES      (543, 
             'Craig', 
             3.4, 
             2000); 

INSERT INTO college 
VALUES      ('Stanford', 
             'CA', 
             15000); 

INSERT INTO college 
VALUES      ('Berkeley', 
             'CA', 
             36000); 

INSERT INTO college 
VALUES      ('MIT', 
             'MA', 
             10000); 

INSERT INTO college 
VALUES      ('Cornell', 
             'NY', 
             21000); 

INSERT INTO college 
VALUES      ('Harvard', 
             'MA', 
             50040); 

INSERT INTO apply 
VALUES      (123, 
             'Stanford', 
             'CS', 
             'Y'); 

INSERT INTO apply 
VALUES      (123, 
             'Stanford', 
             'EE', 
             'N'); 

INSERT INTO apply 
VALUES      (123, 
             'Berkeley', 
             'CS', 
             'Y'); 

INSERT INTO apply 
VALUES      (123, 
             'Cornell', 
             'EE', 
             'Y'); 

INSERT INTO apply 
VALUES      (234, 
             'Berkeley', 
             'biology', 
             'N'); 

INSERT INTO apply 
VALUES      (345, 
             'MIT', 
             'bioengineering', 
             'Y'); 

INSERT INTO apply 
VALUES      (345, 
             'Cornell', 
             'bioengineering', 
             'N'); 

INSERT INTO apply 
VALUES      (345, 
             'Cornell', 
             'CS', 
             'Y'); 

INSERT INTO apply 
VALUES      (345, 
             'Cornell', 
             'EE', 
             'N'); 

INSERT INTO apply 
VALUES      (678, 
             'Stanford', 
             'history', 
             'Y'); 

INSERT INTO apply 
VALUES      (987, 
             'Stanford', 
             'CS', 
             'Y'); 

INSERT INTO apply 
VALUES      (987, 
             'Berkeley', 
             'CS', 
             'Y'); 

INSERT INTO apply 
VALUES      (876, 
             'Stanford', 
             'CS', 
             'N'); 

INSERT INTO apply 
VALUES      (876, 
             'MIT', 
             'biology', 
             'Y'); 

INSERT INTO apply 
VALUES      (876, 
             'MIT', 
             'marine biology', 
             'N'); 

INSERT INTO apply 
VALUES      (765, 
             'Stanford', 
             'history', 
             'Y'); 

INSERT INTO apply 
VALUES      (765, 
             'Cornell', 
             'history', 
             'N'); 

INSERT INTO apply 
VALUES      (765, 
             'Cornell', 
             'psychology', 
             'Y'); 

INSERT INTO apply 
VALUES      (543, 
             'MIT', 
             'CS', 
             'N'); 