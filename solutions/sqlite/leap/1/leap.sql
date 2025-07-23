-- Schema: CREATE TABLE "leap" ( "year" INT, "is_leap" BOOL);
-- Task: update the leap table and set the is_leap based on the year field.

UPDATE leap
   SET is_leap = IIF(
         year % 100 == 0,
     IIF(year % 400 == 0, 1, 0),
     IIF(year %   4 == 0, 1, 0)
   )
;
