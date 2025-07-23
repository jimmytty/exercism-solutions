-- Schema: CREATE TABLE "eliuds-eggs" ("number" INT, "result" INT);
-- Task: update the eliuds-eggs table and set the result based on the number field.

UPDATE "eliuds-eggs" AS tbl
   SET result = (
     WITH RECURSIVE
       cnt(n, c) AS (
         VALUES(tbl.number, 0)
         UNION ALL
         SELECT n / 2, IIF(n % 2 = 1, c + 1, c)
           FROM cnt
          WHERE n > 0
       )
     SELECT c FROM cnt ORDER BY c DESC LIMIT 1
   )
;
