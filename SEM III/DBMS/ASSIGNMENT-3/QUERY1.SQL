-- QUERY-1
SELECT 
    *
FROM
    Student,
    Apply
ORDER BY Student.sID;

-- QUERY-2
SELECT 
    Student.sID,
    Student.sName,
    Student.GPA,
    Apply.cName,
    Apply.major
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
ORDER BY Student.sID;

-- QUERY-3
SELECT 
    Apply.sID, Apply.cName, Apply.major, Apply.decision
FROM
    Apply
        INNER JOIN
    College ON Apply.cName = College.collegeName
WHERE
    College.state = 'CA';

-- QUERY-4
SELECT DISTINCT
    Student.sID, Student.sName, Student.GPA, Apply.cName
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
WHERE
    Student.GPA > 3.7
        AND Apply.cName = 'Stanford'
ORDER BY Student.sID;

-- QUERY-5
SELECT 
    Student.sID, Student.sName, Student.GPA, Apply.cName
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
WHERE
    Apply.decision = 'N'
        AND Apply.major = 'CS'
ORDER BY Student.sID;

-- QUERY-6
SELECT 
    Student.sID,
    Student.sName,
    Student.GPA,
    Student.sizeHS,
    Apply.cName,
    Apply.major,
    Apply.decision
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
        INNER JOIN
    College ON Apply.cName = College.collegeName
WHERE
    College.state = 'NY';

-- QUERY-7
SELECT 
    *
FROM
    Student
WHERE
    Student.sID NOT IN (SELECT DISTINCT
            sID
        FROM
            Apply);

-- QUERY-8
SELECT 
    College.collegeName
FROM
    College
WHERE
    College.collegeName NOT IN (SELECT DISTINCT
            cName
        FROM
            Apply);

-- QUERY-9
SELECT 
    sID
FROM
    Apply
GROUP BY sID
HAVING COUNT(sID) = 1;

-- QUERY-10
SELECT DISTINCT
    sName, Student.GPA
FROM
    Student
        INNER JOIN
    Apply ON Student.sID = Apply.sID
        INNER JOIN
    College ON Apply.cName = College.collegeName
WHERE
    College.enrollment <= 25000;

-- QUERY-11
SELECT 
    sID1, sID2
FROM
    (SELECT 
        Student1.sID AS sID1, Student2.sID AS sID2
    FROM
        Student AS Student1
    INNER JOIN Student AS Student2 ON Student1.GPA = Student2.GPA
    WHERE
        Student1.sID != Student2.sID) AS T
WHERE sID1 < sID2
ORDER BY sID1;