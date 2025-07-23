-- Schema: CREATE TABLE "bob" ("input" TEXT, "reply" TEXT);
-- Task: update the bob table and set the reply based on the input.

UPDATE bob
   SET reply = (
     WITH tests AS (
       SELECT (
         IIF(LIKE('%?', TRIM(bob.input)), 1, 0)                      ||
         IIF(
           UPPER(bob.input) = bob.input AND GLOB('*[A-Z]*', bob.input),
           1, 0
         )                                                           ||
         IIF(GLOB('*[a-z]*', bob.input), 1, 0)                       ||
         IIF(REGEXP('^[\t\n\v\t\f\r ]*$', bob.input), 1, 0)
       ) AS tests
     )
     SELECT (
       CASE
       WHEN LIKE('10%', tests) THEN 'Sure.'
       WHEN tests = '0100'     THEN 'Whoa, chill out!'
       WHEN tests = '1100'     THEN 'Calm down, I know what I''m doing!'
       WHEN tests = '0001'     THEN 'Fine. Be that way!'
       ELSE 'Whatever.'
       END
     )
       FROM tests
   );
