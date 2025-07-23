-- Schema: CREATE TABLE "matching-brackets" ("input" TEXT "result" BOOLEAN);
-- Task: update the matching-brackets table and set the result based on the input field.

UPDATE "matching-brackets"
   SET result = TRUE
 WHERE input = ''
       ;

UPDATE "matching-brackets"
   SET result = (
     WITH RECURSIVE
       rcte(string, s, i) AS (
         WITH RECURSIVE
           brackets(s, c) AS (
             VALUES(SUBSTRING(input, 2), SUBSTRING(input, 1, 1))
             UNION
             SELECT SUBSTRING(s, 2), SUBSTRING(s, 1, 1)
               FROM brackets
              WHERE LENGTH(s) > 0
           )
         SELECT GROUP_CONCAT(c, '') AS string, GROUP_CONCAT(c, '') AS s, 0
           FROM brackets
          WHERE c IN ('{','}','[',']','(',')')
          UNION
         SELECT string,
                REPLACE(REPLACE(REPLACE(s, '()', ''), '[]', ''), '{}', ''),
                i + 1
           FROM rcte
          WHERE LENGTH(s) >= 2 AND INSTR(s, '{}') + INSTR(s, '[]') + INSTR(s, '()') > 0
       )
     SELECT CASE
            WHEN i > 0 AND s = '' THEN true
            ELSE FALSE
            END
       FROM rcte
      ORDER BY i DESC
      LIMIT 1
   )
 WHERE result = ''
       ;
