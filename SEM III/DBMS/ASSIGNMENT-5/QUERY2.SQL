-- Run this script before running further queries.
INSERT INTO
      APPLY
SELECT
      S1.SID,
      'Berkeley',
      'CSE',
      'Y'
FROM
      STUDENT S1
WHERE
      S1.SID IN (
            SELECT
                  S.SID
            FROM
                  STUDENT S
            MINUS
            SELECT
                  A.SID
            FROM
                  APPLY A
            WHERE
                  A.CNAME = 'Berkely'
      );

-- QUERY-18
SELECT
      DISTINCT CNAME
FROM
      APPLY OUTER_TABLE
WHERE
      NOT EXISTS (
            (
                  SELECT
                        SID
                  FROM
                        STUDENT
            )
            MINUS
            (
                  SELECT
                        DISTINCT SID
                  FROM
                        APPLY
                  WHERE
                        CNAME = OUTER_TABLE.CNAME
            )
      );

-- QUERY-19
SELECT
      DISTINCT SID
FROM
      APPLY
MINUS
SELECT
      DISTINCT SID
FROM
      APPLY
WHERE
      CNAME = 'Stanford';

-- QUERY-20
SELECT
      DISTINCT SID
FROM
      APPLY
WHERE
      CNAME = 'Berkeley'
INTERSECT
SELECT
      DISTINCT SID
FROM
      APPLY
WHERE
      CNAME = 'Stanford';

-- QUERY-21
SELECT
      CNAME NAMES
FROM
      COLLEGE
UNION
SELECT
      SNAME NAMES
FROM
      STUDENT;

-- QUERY-22
CREATE TABLE APPLICATIONINFO (
      SID INTEGER,
      SNAME VARCHAR(10),
      NUMBER_OF_APPLICATIONS FLOAT(2)
);

INSERT INTO
      APPLICATIONINFO VALUE(
            SELECT
                  STUDENT.SID,
                  SNAME,
                  COUNT(*)
            FROM
                  STUDENT
                  LEFT JOIN APPLY ON STUDENT.SID = APPLY.SID
            GROUP BY
                  STUDENT.SID,
                  SNAME
      );

-- QUERY-23
CREATE TABLE APPLICATIONDATA AS
SELECT
      DISTINCT SID,
      CNAME,
      STATE
FROM
      APPLY NATURAL
      JOIN COLLEGE;

-- QUERY-24
UPDATE
      APPLY OUTER_TABLE
SET
      DECISION = 'N'
WHERE
      'Berkeley' IN (
            SELECT
                  DISTINCT CNAME
            FROM
                  APPLY
            WHERE
                  SID = OUTER_TABLE.SID
      )
      AND CNAME = 'Stanford';

-- QUERY-25
DELETE FROM
      APPLY
WHERE
      CNAME IN (
            SELECT
                  CNAME
            FROM
                  COLLEGE
            WHERE
                  STATE = 'NY'
      );