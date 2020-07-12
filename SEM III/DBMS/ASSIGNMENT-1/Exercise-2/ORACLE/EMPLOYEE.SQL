CREATE TABLE Employee 
( 
	empno INTEGER, 
    ename VARCHAR(20), 
    job VARCHAR(20), 
    mgr INTEGER, 
    hiredate DATE, 
    sal INTEGER, 
    comm INTEGER, 
    dept INTEGER 
);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (1,'JOHNSON','ADMIN',6,TO_DATE('12/17/1990','MM/DD/YYYY'),18000,4);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, dept) 
VALUES 
	   (2,'HARDING','MANAGER',9,TO_DATE('2/2/1998','MM/DD/YYYY'),52000,300,3);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, dept) 
VALUES 
	   (3,'TAFT','SALES I',2,TO_DATE('1/2/1996','MM/DD/YYYY'),25000,500,3);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (4,'HOOVER','SALES I',2,TO_DATE('4/2/1990','MM/DD/YYYY'),27000,3);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, comm, dept) 
VALUES 
	   (5,'LINCOLN','TECH',6,TO_DATE('6/23/1994','MM/DD/YYYY'),22500,1400,4);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (6,'GARFIELD','MANAGER',9,TO_DATE('5/1/1993','MM/DD/YYYY'),54000,4);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (7,'POLK','TECH',6,TO_DATE('9/22/1997','MM/DD/YYYY'),25000,4);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (8,'GRANT','ENGINEER',10,TO_DATE('3/30/1997','MM/DD/YYYY'),32000,2);

INSERT INTO Employee (empno, ename, job, hiredate, sal, dept) 
VALUES 
	   (9,'JACKSON','CEO',TO_DATE('1/1/1990','MM/DD/YYYY'),75000,4);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (10,'FILLMORE','MANAGER',9,TO_DATE('8/9/1994','MM/DD/YYYY'),56000,2);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (11,'ADAMS','ENGINEER',10,TO_DATE('3/15/1996','MM/DD/YYYY'),34000,2);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (12,'WASHINGTON','ADMIN',6,TO_DATE('4/16/1998','MM/DD/YYYY'),18000,4);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (13,'MONROE','ENGINEER',10,TO_DATE('12/3/2000','MM/DD/YYYY'),30000,2);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (14,'ROOSEVELT','CPA',9,TO_DATE('10/12/1995','MM/DD/YYYY'),35000,1);

INSERT INTO Employee (empno, ename, job, mgr, hiredate, sal, dept) 
VALUES 
	   (15,'HANCOCK','SALES I',2,TO_DATE('3/2/1990','MM/DD/YYYY'),27500,3);