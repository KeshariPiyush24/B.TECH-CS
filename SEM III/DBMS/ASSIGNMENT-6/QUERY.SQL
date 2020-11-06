-- QUERY-1
ALTER TABLE
      STUDENT
ADD
      DOB DATE;

-- QUERY-2
UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('26-JUN-96', 'DD-MON-YY')
WHERE
      SID = 123;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('7-Apr-95', 'DD-MON-YY')
WHERE
      SID = 234;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('4-Feb-95', 'DD-MON-YY')
WHERE
      SID = 345;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('24-Jul-97', 'DD-MON-YY')
WHERE
      SID = 456;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('21-Dec-96', 'DD-MON-YY')
WHERE
      SID = 567;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('27-Aug-96', 'DD-MON-YY')
WHERE
      SID = 678;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('8-Oct-96', 'DD-MON-YY')
WHERE
      SID = 789;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('27-Mar-97', 'DD-MON-YY')
WHERE
      SID = 987;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('7-Mar-96', 'DD-MON-YY')
WHERE
      SID = 876;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('8-Aug-98', 'DD-MON-YY')
WHERE
      SID = 765;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('26-May-96', 'DD-MON-YY')
WHERE
      SID = 654;

UPDATE
      STUDENT
SET
      "DOB" = TO_DATE('27-Aug-98', 'DD-MON-YY')
WHERE
      SID = 543;

-- QUERY-3
SELECT
      ROUND(AVG(GPA), 2)
FROM
      STUDENT;

-- QUERY-4
SELECT
      SID,
      SNAME,
      DOB
FROM
      STUDENT
WHERE
      SIZEHS < 1000;

-- QUERY-5
SELECT
      SID,
      SNAME,
      TRUNC(TO_NUMBER(SYSDATE - TO_DATE(DOB)) / 365) AS AGE
FROM
      STUDENT;

-- QUERY-6
SELECT
      DISTINCT UPPER(SNAME) AS SNAME,
      LOWER(CNAME) AS CNAME
FROM
      APPLY NATURAL
      JOIN STUDENT;

-- QUERY-7
SELECT
      SUBSTR(SNAME, 4, 1)
FROM
      STUDENT;

-- QUERY-8
SELECT
      SID,
      SNAME
FROM
      STUDENT
WHERE
      LENGTH(SNAME) > 3;

-- QUERY-9
SELECT
      FLOOR(AVG(GPA)),
      CEIL(AVG(GPA)),
      TRUNC(AVG(GPA), 1)
FROM
      STUDENT;

-- QUERY-10
SELECT
      *
FROM
      STUDENT
WHERE
      MOD(SID, 2) = 0;

-- QUERY-11
SELECT
      SQRT(900),
      TRUNC(SQRT(POWER(24, 7)), 2)
FROM
      DUAL;

-- QUERY-12
SELECT
      INSTR(
            'Peter Piper picked a peck of pickled peppers. A peck of pickled peppers Peter Piper picked. If Peter Piper picked a peck of pickled peppers, Where the peck of pickled peppers Peter Piper picked?',
            'pick',
            1,
            6
      ) RESULT
FROM
      DUAL;

-- QUERY-13
SELECT
      TRANSLATE('Satya Nadella', 'adelNSty', '12345678') AS OUTPUT
FROM
      DUAL;

-- QUERY-14
SELECT
      SID,
      SNAME,
      TO_CHAR(DOB, 'MONTH DD,YYYY') AGE
FROM
      STUDENT;

-- QUERY-15
SELECT
      TO_DATE('26/02/2014', 'DD/MM/YYYY') RESULT
FROM
      DUAL;

-- QUERY-16
SELECT
      NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SAT')
FROM
      DUAL;

SELECT
      LAST_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY')) LAST_DATE_OF_MONTH,
      CASE
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 7 THEN 'SUNDAY'
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 1 THEN 'SATURDAY'
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 2 THEN 'FRIDAY'
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 3 THEN 'THURSDAY'
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 4 THEN 'WEDNESDAY'
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 5 THEN 'TUESDAY'
            WHEN NEXT_DAY(TO_DATE('26/02/2014', 'DD/MM/YYYY'), 'SUN') - TO_DATE('26/02/2014', 'DD/MM/YYYY') = 6 THEN 'MONDAY'
      END WEEKDAY
FROM
      DUAL;