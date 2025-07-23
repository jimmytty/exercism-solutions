-- Schema: CREATE TABLE "darts" ("x" REAL, "y" REAL, score INTEGER);
-- Task: update the darts table and set the score based on the x and y values.

UPDATE darts
   SET score = (
     CASE
     WHEN (pow(x, 2) + pow(y, 2)) <= pow( 1, 2) THEN 10
     WHEN (pow(x, 2) + pow(y, 2)) <= pow( 5, 2) THEN  5
     WHEN (pow(x, 2) + pow(y, 2)) <= pow(10, 2) THEN  1
     ELSE 0
     END
   )
;
