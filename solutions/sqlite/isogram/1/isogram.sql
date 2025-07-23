-- Schema: CREATE TABLE "isogram" ("phrase" TEXT, "is_isogram" INT);
-- Task: Given a phrase, determine if it is an isogram.

UPDATE isogram
   SET is_isogram = (
     WITH RECURSIVE
       rcte(s, c) AS (
         VALUES(REPLACE(LOWER(phrase), ' ', ''), '')
         UNION ALL
         SELECT SUBSTRING(s, 2), SUBSTRING(s, 1, 1)
         FROM rcte
         WHERE LENGTH(s) > 0
       )
     SELECT COUNT(*) = SUM(s) FROM (
       SELECT COUNT(*)s, c
         FROM rcte
        WHERE  TRIM(c, 'abcdefghijklmnopqrstuvwxyz') = ''
        GROUP BY c
     )t
   );
