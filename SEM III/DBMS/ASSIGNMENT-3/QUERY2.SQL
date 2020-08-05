-- QUERY-12
SELECT 
    Student.sName, Apply.major
FROM
    Student,
    Apply
WHERE
    Student.sID = Apply.sID
GROUP BY Student.sName , Apply.major;

SELECT 
    Student.sName, Apply.major
FROM
    Student
        NATURAL JOIN
    Apply
GROUP BY Student.sName , Apply.major;

SELECT 
    Student.sName, Apply.major
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
GROUP BY Student.sName , Apply.major;

-- QUERY-13
SELECT 
    Student.sID, Student.sName, Student.GPA, Student.sizeHS
FROM
    Student,
    Apply
WHERE
    Student.sID = Apply.sID
        AND Student.sizeHS < 20000
        AND Apply.major = 'CS'
        AND Apply.cName = 'Stanford';

SELECT 
    Student.sID, Student.sName, Student.GPA, Student.sizeHS
FROM
    Student
        NATURAL JOIN
    Apply
WHERE
    Student.sizeHS < 20000
        AND Apply.major = 'CS'
        AND Apply.cName = 'Stanford';

SELECT 
    Student.sID, Student.sName, Student.GPA, Student.sizeHS
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
WHERE
    Student.sizeHS < 20000
        AND Apply.major = 'CS'
        AND Apply.cName = 'Stanford';
        
-- QUERY-14
SELECT 
    *
FROM
    Student,
    Apply,
    College
WHERE
    Student.sID = Apply.sID
        AND Apply.cName = College.collegeName
ORDER BY Student.sName , Student.sID;
    
SELECT 
    *
FROM
    Student
        NATURAL JOIN
    Apply
        INNER JOIN
    College ON Apply.cName = College.collegeName
ORDER BY Student.sName , Student.sID;

SELECT 
    *
FROM
    Student
        INNER JOIN
    Apply ON Apply.sID = Student.sID
        INNER JOIN
    College ON Apply.cName = College.collegeName
ORDER BY Student.sName , Student.sID;

-- QUERY-15
SELECT 
    Student.sName, Student.GPA
FROM
    Student,
    Apply
WHERE
    Student.sID = Apply.sID
        AND Student.sizeHS > 1000
        AND Apply.major = 'CS'
        AND Apply.decision = 'N'
ORDER BY Student.sName , Student.sID;

SELECT 
    Student.sName, Student.GPA
FROM
    Student
        NATURAL JOIN
    Apply
WHERE
    Student.sizeHS > 1000
        AND Apply.major = 'CS'
        AND Apply.decision = 'N'
ORDER BY Student.sName , Student.sID;

SELECT 
    Student.sName, Student.GPA
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
WHERE
    Student.sizeHS > 1000
        AND Apply.major = 'CS'
        AND Apply.decision = 'N'
ORDER BY Student.sName , Student.sID;

-- QUERY-16
SELECT 
    Student.sName, Student.GPA
FROM
    Student,
    Apply,
    College
WHERE
    Student.sID = Apply.sID
        AND Apply.cName = College.collegeName
        AND Student.sizeHS > 1000
        AND Apply.major = 'CS'
        AND College.enrollment > 20000
        AND Apply.decision = 'N'
ORDER BY Student.sName , Student.sID;

SELECT 
    Student.sName, Student.GPA
FROM
    Student
        NATURAL JOIN
    Apply
        INNER JOIN
    College ON Apply.cName = College.collegeName
WHERE
    Student.sizeHS > 1000
        AND Apply.major = 'CS'
        AND College.enrollment > 20000
        AND Apply.decision = 'N'
ORDER BY Student.sName , Student.sID;

SELECT 
    Student.sName, Student.GPA
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
        INNER JOIN
    College ON Apply.cName = College.collegeName
WHERE
    Student.sizeHS > 1000
        AND Apply.major = 'CS'
        AND College.enrollment > 20000
        AND Apply.decision = 'N'
ORDER BY Student.sName , Student.sID;