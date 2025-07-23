-- Schema: CREATE TABLE "collatz" ("number" INTEGER, "steps" INTEGER);
-- Task: update the collatz table and set the steps based on the number.

UPDATE collatz
   SET steps = (
     WITH RECURSIVE
       rcte(n, c) AS (
         VALUES (number, 0)
         UNION ALL
         SELECT
         IIF(n & 1 = 0, n / 2, n * 3 + 1),
         c + 1
         FROM rcte
         WHERE n > 1
       )
     SELECT c FROM rcte
      ORDER BY c DESC LIMIT 1
   )
;
