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
                  MAJOR = 'cs'
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