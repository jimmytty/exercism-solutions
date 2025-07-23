-- Schema: CREATE TABLE "armstrong-numbers" ("number" INT, "result" BOOLEAN);
-- Task: update the armstrong-numbers table and set the result based on the number field.

UPDATE "armstrong-numbers"
   SET result = (
WITH RECURSIVE
  rcte(n, x, s) AS (
    VALUES(number, number, 0)
    UNION ALL
    SELECT n / 10,
    x,
    POW(n % 10, IFNULL(TRUNC(LOG10(x)+1), 1)) + s
    FROM rcte
    WHERE n > 0
  )
SELECT IFNULL((SELECT 1 FROM rcte WHERE x = s), 0))
;
