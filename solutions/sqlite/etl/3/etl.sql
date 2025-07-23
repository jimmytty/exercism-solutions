-- Schema: CREATE TABLE "etl" ("input" TEXT, "result" TEXT);
-- Task: update the etl table and set the result based on the input field. The keys in the result object must be sorted alphabetically.

UPDATE etl
   SET result = (
     SELECT '{' || GROUP_CONCAT(pair) || '}'
       FROM (
         SELECT ('"' || LOWER(j.VALUE) || '":' || t.KEY) AS pair
           FROM (
             SELECT j.*
               FROM JSON_EACH(input) j
           ) t, JSON_EACH(t.VALUE) j
          ORDER BY j.VALUE
       ) t
   )
       ;
