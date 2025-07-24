-- Schema: CREATE TABLE "pascals-triangle" ("input" INT, "result" TEXT);
-- Task: update the pascals-triangle table and set the result based on the input field.

UPDATE "pascals-triangle"
   SET result = (
     WITH RECURSIVE
       r(n, i, l) AS (
         VALUES(input, 0, '')
         UNION ALL
         SELECT n, i + 1, (
           WITH RECURSIVE
             c (k, n, p) AS (
               VALUES(0, i, 1)
               UNION ALL
               SELECT k + 1, n, p * (n - k) / (k + 1)
               FROM c
               WHERE k < n
             )
           SELECT GROUP_CONCAT(p, ' ') FROM c
         )
         FROM r
         WHERE i < n
       )
     SELECT LTRIM(GROUP_CONCAT(l, CHAR(10)), CHAR(10)) FROM r
);
