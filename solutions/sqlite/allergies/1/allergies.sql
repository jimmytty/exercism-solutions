-- Schema: CREATE TABLE "allergies" ("task" TEXT, "item" TEXT, "score" INT NOT NULL, "result" TEXT);
-- Task: update the bob allergies and set the result based on the task.
--       - The `allergicTo` task expects `true` or `false` based on the `score` and the `item` fields.
--       - For the `list` task you have to write corresponding items to the result field

DROP TABLE IF EXISTS dict;
CREATE TABLE dict (
  score INTEGER,
  bit   INTEGER,
  item  TEXT
);
INSERT INTO dict(score, bit, item) VALUES
(  1, 0, 'eggs'        ),
(  2, 1, 'peanuts'     ),
(  4, 2, 'shellfish'   ),
(  8, 3, 'strawberries'),
( 16, 4, 'tomatoes'    ),
( 32, 5, 'chocolate'   ),
( 64, 6, 'pollen'      ),
(128, 7, 'cats'        );

UPDATE allergies
   SET result =
       IIF(
         score & ( 1 <<
                  (SELECT bit FROM dict WHERE dict.item = allergies.item)
         ) > 0,
         'true',
         'false'
       );

UPDATE allergies
   SET result = (
     SELECT IIF(items IS NULL, '', items)
       FROM (
         SELECT GROUP_CONCAT(item, ', ') AS items
           FROM dict
          WHERE allergies.score & ( 1 << bit) > 0
       )t
   )
 WHERE task = 'list';
