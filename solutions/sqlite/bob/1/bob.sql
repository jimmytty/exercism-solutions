-- Schema: CREATE TABLE "bob" ("input" TEXT, "reply" TEXT);
-- Task: update the bob table and set the reply based on the input.

UPDATE bob
   SET reply = (
     WITH tests AS (
       SELECT CONCAT(
         LIKE('%?', TRIM(bob.input)),
         UPPER(bob.input) = bob.input AND GLOB('*[A-Z]*', bob.input),
         GLOB('*[a-z]*', bob.input),
         regexp('^[\t\n\v\t\f\r ]*$', bob.input)
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
