CREATE TABLE APPLY 
( 
    sID INTEGER, 
    cName VARCHAR(10), 
    major VARCHAR(20), 
    decision CHAR	 
);

INSERT ALL  
	INTO APPLY VALUES (123, 'Stanford', 'CS','Y') 
	INTO APPLY VALUES (123, 'Stanford', 'EE','N') 
	INTO APPLY VALUES (123, 'Berkeley', 'CS','Y') 
	INTO APPLY VALUES (123, 'Cornell', 'EE','Y') 
	INTO APPLY VALUES (234, 'Berkeley', 'biology','N') 
	INTO APPLY VALUES (345, 'MIT', 'bioengineering','Y') 
	INTO APPLY VALUES (345, 'Cornell', 'bioengineering','N') 
	INTO APPLY VALUES (345, 'Cornell', 'CS','Y') 
	INTO APPLY VALUES (345, 'Cornell', 'EE','N') 
	INTO APPLY VALUES (678, 'Stanford', 'history','Y') 
	INTO APPLY VALUES (987, 'Stanford', 'CS','Y') 
	INTO APPLY VALUES (987, 'Berkeley', 'CS','Y') 
	INTO APPLY VALUES (876, 'Stanford', 'CS','N') 
	INTO APPLY VALUES (876, 'MIT', 'biology','Y') 
	INTO APPLY VALUES (876, 'MIT', 'marine biology','N') 
	INTO APPLY VALUES (765, 'Stanford', 'history','Y') 
	INTO APPLY VALUES (765, 'Cornell', 'history','N') 
	INTO APPLY VALUES (765, 'Cornell', 'psychology','Y') 
	INTO APPLY VALUES (543, 'MIT', 'CS','N') 
SELECT 1 FROM DUAL;