-- QUERY-1
SELECT
      SID,
      SNAME
FROM
      STUDENT
WHERE
      SID IN (
            SELECT
                  SID
            FROM
                  APPLY
            WHERE
                  MAJOR = 'CS'
      );

-- QUERY-2
SELECT
      SID,
      SNAME
FROM
      STUDENT
WHERE
      SIZEHS = (
            SELECT
                  SIZEHS
            FROM
                  STUDENT
            WHERE
                  SNAME = 'Jay'
      );

-- QUERY-3
SELECT
      SID,
      SNAME
FROM
      STUDENT
WHERE
      SIZEHS = (
            SELECT
                  SIZEHS
            FROM
                  STUDENT
            WHERE
                  SNAME = 'Jay'
      )
      AND SNAME != 'Jay';

-- QUERY-4
SELECT
      SID,
      SNAME,
      GPA
FROM
      STUDENT
WHERE
      GPA != (
            SELECT
                  GPA
            FROM
                  STUDENT
            WHERE
                  SNAME = 'Irene'
      );

-- QUERY-5
SELECT
      DISTINCT CNAME
FROM
      APPLY
WHERE
      SID IN (
            SELECT
                  SID
            FROM
                  STUDENT
            WHERE
                  SNAME LIKE 'J%'
      );

-- QUERY-6
SELECT
      DISTINCT MAJOR
FROM
      APPLY
WHERE
      SID IN (
            SELECT
                  SID
            FROM
                  STUDENT
            WHERE
                  SNAME = 'Irene'
      );

-- QUERY-7
SELECT
      DISTINCT SID,
      MAJOR
FROM
      APPLY
WHERE
      MAJOR IN (
            SELECT
                  DISTINCT MAJOR
            FROM
                  APPLY
            WHERE
                  SID IN (
                        SELECT
                              SID
                        FROM
                              STUDENT
                        WHERE
                              SNAME = 'Irene'
                  )
      )
ORDER BY
      SID;

-- QUERY-8
SELECT
      DISTINCT SID,
      MAJOR
FROM
      APPLY
WHERE
      MAJOR IN (
            SELECT
                  DISTINCT MAJOR
            FROM
                  APPLY
            WHERE
                  SID IN (
                        SELECT
                              SID
                        FROM
                              STUDENT
                        WHERE
                              SNAME = 'Irene'
                  )
      )
      AND SID != (
            SELECT
                  SID
            FROM
                  STUDENT
            WHERE
                  SNAME = 'Irene'
      )
ORDER BY
      SID;

-- QUERY-9
SELECT
      COUNT(DISTINCT CNAME)
FROM
      APPLY
WHERE
      SID = (
            SELECT
                  SID
            FROM
                  STUDENT
            WHERE
                  SNAME = 'Jay'
      );

-- QUERY-10
SELECT
      SID
FROM
      APPLY
GROUP BY
      SID
HAVING
      COUNT(DISTINCT CNAME) >= (
            SELECT
                  COUNT(DISTINCT CNAME)
            FROM
                  APPLY
            WHERE
                  SID = (
                        SELECT
                              SID
                        FROM
                              STUDENT
                        WHERE
                              SNAME = 'Jay'
                  )
      );

-- QUERY-11
SELECT
      *
FROM
      STUDENT
WHERE
      SID IN (
            SELECT
                  DISTINCT SID
            FROM
                  APPLY
            WHERE
                  MAJOR = 'CS'
      )
      AND SID NOT IN (
            SELECT
                  DISTINCT SID
            FROM
                  APPLY
            WHERE
                  MAJOR = 'EE'
      );

-- QUERY-12
SELECT
      CNAME
FROM
      COLLEGE OUTER_TABLE
WHERE
      EXISTS (
            SELECT
                  *
            FROM
                  COLLEGE
            WHERE
                  STATE = OUTER_TABLE.STATE
                  AND CNAME != OUTER_TABLE.CNAME
      );

-- QUERY-13
SELECT
      CNAME
FROM
      COLLEGE
WHERE
      ENROLLMENT = (
            SELECT
                  MAX(ENROLLMENT)
            FROM
                  COLLEGE
      );

-- QUERY-14
SELECT
      SNAME
FROM
      STUDENT
WHERE
      GPA = (
            SELECT
                  MIN(GPA)
            FROM
                  STUDENT
      );

-- QUERY-15
SELECT
      MAJOR
FROM
      (
            SELECT
                  MAJOR,
                  COUNT(*)
            FROM
                  APPLY
            GROUP BY
                  MAJOR
            ORDER BY
                  COUNT(*) DESC
      )
WHERE
      ROWNUM <= 1;

-- QUERY-16
SELECT
      SID,
      SNAME,
      SIZEHS
FROM
      STUDENT
WHERE
      SIZEHS != (
            SELECT
                  MIN(SIZEHS)
            FROM
                  STUDENT
      );

-- QUERY-17
SELECT
      SNAME
FROM
      STUDENT
WHERE
      SID IN (
            SELECT
                  SID
            FROM
                  APPLY OUTER_TABLE
            WHERE
                  NOT EXISTS (
                        (
                              SELECT
                                    DISTINCT CNAME
                              FROM
                                    APPLY
                              WHERE
                                    SID = 987
                        )
                        MINUS
                        (
                              SELECT
                                    DISTINCT CNAME
                              FROM
                                    APPLY
                              WHERE
                                    SID = OUTER_TABLE.SID
                        )
                  )
      );