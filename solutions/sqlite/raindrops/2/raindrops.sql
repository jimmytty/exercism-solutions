-- Schema: CREATE TABLE "raindrops" ("number" INT, "sound" TEXT);
-- Task: update the raindrops table and set the sound based on the number.n

UPDATE raindrops
   SET sound = (
     CASE
     WHEN number % 3 != 0 AND number % 5 != 0 AND number % 7 != 0
       THEN number
     ELSE
      IIF(number % 3 = 0, 'Pling', '') ||
      IIF(number % 5 = 0, 'Plang', '') ||
      IIF(number % 7 = 0, 'Plong', '')
     END
   )
;
