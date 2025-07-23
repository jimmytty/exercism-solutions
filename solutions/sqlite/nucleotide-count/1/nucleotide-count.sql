-- Task:  - Update the "nucleotide-count" table and set the result based on the input field.
--        - Update table creation with constraints.

DROP TABLE IF EXISTS "nucleotide-count";
CREATE TABLE "nucleotide-count" (
    "strand" TEXT,
    "result" TEXT CHECK(TRIM(strand, 'ACGT') = '')
);

-- Please don't change the following two import lines. Feel free to edit the previous lines, though.
.mode csv
.import ./data.csv "nucleotide-count"

-- Write your code below. Feel free to edit the CREATE TABLE above, too!

UPDATE "nucleotide-count"
   SET result = (
     WITH RECURSIVE
       rcte(s, c) AS (
         VALUES(strand, '')
         UNION ALL
         SELECT SUBSTRING(s, 2),
         SUBSTRING(s, 1, 1)
         FROM rcte
         WHERE LENGTH(s) > 0
       )
     SELECT
       FORMAT(
         '{"A":%d,"C":%d,"G":%d,"T":%d}',
         nc->>'A', nc->>'C', nc->>'G', nc->>'T'
       )
       FROM (
         SELECT JSON_INSERT(
           JSON_GROUP_OBJECT(c, v),
           '$.A',0, '$.C',0, '$.G',0, '$.T',0
         ) AS nc
           FROM (
             SELECT c, COUNT(*) v
               FROM rcte
              WHERE c <> ''
              GROUP BY c
           )t
       )t
   )
       ;
