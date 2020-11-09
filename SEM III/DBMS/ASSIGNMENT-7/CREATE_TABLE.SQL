CREATE TABLE COLLEGE (
      cName VARCHAR (10) PRIMARY KEY,
      state VARCHAR (10),
      enrollment INT
);

CREATE TABLE STUDENT (
      sID INT PRIMARY KEY,
      sName VARCHAR (10),
      GPA FLOAT,
      sizeHS INT,
      DOB DATE
);

CREATE TABLE APPLY (
      sID INT,
      cName VARCHAR (10),
      major VARCHAR (20),
      decision CHAR(1),
      PRIMARY KEY (sID, major, cName),
      CONSTRAINT sID_fk FOREIGN KEY (sID) REFERENCES STUDENT (sID),
      CONSTRAINT cName_fk FOREIGN KEY (cName) REFERENCES COLLEGE (cName)
);

INSERT INTO
      STUDENT
values
      (123, 'Amy', 3.9, 1000, '26-JUN-96');

INSERT INTO
      STUDENT
values
      (234, 'Bob', 3.6, 1500, '7-Apr-95');

INSERT INTO
      STUDENT
values
      (345, 'Craig', 3.5, 500, '4-Feb-95');

INSERT INTO
      STUDENT
values
      (456, 'Doris', 3.9, 1000, '24-Jul-97');

INSERT INTO
      STUDENT
values
      (567, 'Edward', 2.9, 2000, '21-Dec-96');

INSERT INTO
      STUDENT
values
      (678, 'Fay', 3.8, 200, '27-Aug-96');

INSERT INTO
      STUDENT
values
      (789, 'Gary', 3.4, 800, '8-Oct-96');

INSERT INTO
      STUDENT
values
      (987, 'Helen', 3.7, 800, '27-Mar-97');

INSERT INTO
      STUDENT
values
      (876, 'Irene', 3.9, 400, '7-Mar-96');

INSERT INTO
      STUDENT
values
      (765, 'Jay', 2.9, 1500, '8-Aug-98');

INSERT INTO
      STUDENT
values
      (654, 'Amy', 3.9, 1000, '26-May-96');

INSERT INTO
      STUDENT
values
      (543, 'Craig', 3.4, 2000, '27-Aug-05');

INSERT INTO
      COLLEGE
VALUES
      ('Stanford', 'CA', 15000);

INSERT INTO
      COLLEGE
VALUES
      ('Berkeley', 'CA', 36000);

INSERT INTO
      COLLEGE
VALUES
      ('MIT', 'MA', 10000);

INSERT INTO
      COLLEGE
VALUES
      ('Cornell', 'NY', 21000);

INSERT INTO
      COLLEGE
VALUES
      ('Harvard', 'MA', 50040);

INSERT INTO
      APPLY
VALUES
      (123, 'Stanford', 'CS', 'Y');

INSERT INTO
      APPLY
VALUES
      (123, 'Stanford', 'EE', 'N');

INSERT INTO
      APPLY
VALUES
      (123, 'Berkeley', 'CS', 'Y');

INSERT INTO
      APPLY
VALUES
      (123, 'Cornell', 'EE', 'Y');

INSERT INTO
      APPLY
VALUES
      (234, 'Berkeley', 'biology', 'N');

INSERT INTO
      APPLY
VALUES
      (345, 'MIT', 'bioengineering', 'Y');

INSERT INTO
      APPLY
VALUES
      (345, 'Cornell', 'bioengineering', 'N');

INSERT INTO
      APPLY
VALUES
      (345, 'Cornell', 'CS', 'Y');

INSERT INTO
      APPLY
VALUES
      (345, 'Cornell', 'EE', 'N');

INSERT INTO
      APPLY
VALUES
      (678, 'Stanford', 'history', 'Y');

INSERT INTO
      APPLY
VALUES
      (987, 'Stanford', 'CS', 'Y');

INSERT INTO
      APPLY
VALUES
      (987, 'Berkeley', 'CS', 'Y');

INSERT INTO
      APPLY
VALUES
      (876, 'Stanford', 'CS', 'N');

INSERT INTO
      APPLY
VALUES
      (876, 'MIT', 'biology', 'Y');

INSERT INTO
      APPLY
VALUES
      (876, 'MIT', 'marine biology', 'N');

INSERT INTO
      APPLY
VALUES
      (765, 'Stanford', 'history', 'Y');

INSERT INTO
      APPLY
VALUES
      (765, 'Cornell', 'history', 'N');

INSERT INTO
      APPLY
VALUES
      (765, 'Cornell', 'psychology', 'Y');

INSERT INTO
      APPLY
VALUES
      (543, 'MIT', 'CS', 'N');