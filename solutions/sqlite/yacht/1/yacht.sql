-- Schema: CREATE TABLE "yacht" ("dice_results" TEXT, "category" TEXT, "result" INT);
-- Task: update the yacht table and set the result based on the dice_results and category fields.


UPDATE yacht
   SET result =
       CASE
       WHEN category = 'ones'
       THEN (LENGTH(dice_results) - LENGTH(REPLACE(dice_results, '1', ''))) * 1
       WHEN category = 'twos'
       THEN (LENGTH(dice_results) - LENGTH(REPLACE(dice_results, '2', ''))) * 2
       WHEN category = 'threes'
       THEN (LENGTH(dice_results) - LENGTH(REPLACE(dice_results, '3', ''))) * 3
       WHEN category = 'fours'
       THEN (LENGTH(dice_results) - LENGTH(REPLACE(dice_results, '4', ''))) * 4
       WHEN category = 'fives'
       THEN (LENGTH(dice_results) - LENGTH(REPLACE(dice_results, '5', ''))) * 5
       WHEN category = 'sixes'
       THEN (LENGTH(dice_results) - LENGTH(REPLACE(dice_results, '6', ''))) * 6
       ELSE ''
       END
       ;

UPDATE yacht
   SET result = (
     WITH RECURSIVE
       rcte(digits, digit, i) AS (
         VALUES(
           REPLACE(REPLACE(dice_results, ',', ''), ' ', ''),
           NULL,
           1
         )
         UNION ALL
         SELECT digits, SUBSTRING(digits, i, 1) + 0, i + 1
         FROM rcte
         WHERE i <= LENGTH(digits)
       )
     SELECT
       CASE
       WHEN category = 'choice' THEN SUM(digit)
       WHEN category = 'little straight' AND STRING_AGG(digit, '') = '12345'
         THEN 30
       WHEN category = 'big straight'    AND STRING_AGG(digit, '') = '23456'
         THEN 30
       ELSE ''
       END
       FROM (
         SELECT digit
           FROM rcte
          WHERE digit IS NOT NULL
          ORDER BY digit
       ) AS d
   )
 WHERE result = ''
       ;

UPDATE yacht
   SET result = (
     WITH RECURSIVE
       rcte(digits, digit, i) AS (
         VALUES(
           REPLACE(REPLACE(dice_results, ',', ''), ' ', ''),
           NULL,
           1
         )
         UNION ALL
         SELECT digits, SUBSTRING(digits, i, 1) + 0, i + 1
         FROM rcte
         WHERE i <= LENGTH(digits)
       )
     SELECT
       CASE
       WHEN category = 'full house' AND  STRING_AGG(c, '') = '32'
         THEN SUBSTRING(STRING_AGG(digit, ''), 1, 1)
             * SUBSTRING(STRING_AGG(c, ''), 1, 1)
             + SUBSTRING(STRING_AGG(digit, ''), 2, 1)
             * SUBSTRING(STRING_AGG(c, ''), 2, 1)
       WHEN category = 'four of a kind'
        AND SUBSTRING(STRING_AGG(c, ''), 1, 1) + 0 >= 4
         THEN SUBSTRING(STRING_AGG(digit, ''), 1, 1) * 4
       WHEN category = 'yacht' AND LENGTH(STRING_AGG(c, '')) = 1
         THEN 50
       ELSE 0
       END
       FROM (
         SELECT COUNT(*) AS c, digit
           FROM (
             SELECT digit
               FROM rcte
              WHERE digit IS NOT NULL
              ORDER BY digit
           ) AS d
          GROUP BY digit
          ORDER BY c DESC
       ) t
   )
 WHERE result = ''
       ;
