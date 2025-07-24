-- Schema: CREATE TABLE "roman-numerals" ("number" INT, "result" TEXT);
-- Task: update the roman-numerals table and set the result based on the number.

UPDATE "roman-numerals"
   SET result = (
     SELECT
       CASE
       WHEN n / 1000 = 1 THEN 'M'
       WHEN n / 1000 = 2 THEN 'MM'
       WHEN n / 1000 = 3 THEN 'MMM'
       ELSE ''
       END ||
       CASE
       WHEN n / 100 % 10 = 1 THEN 'C'
       WHEN n / 100 % 10 = 2 THEN 'CC'
       WHEN n / 100 % 10 = 3 THEN 'CCC'
       WHEN n / 100 % 10 = 4 THEN 'CD'
       WHEN n / 100 % 10 = 5 THEN 'D'
       WHEN n / 100 % 10 = 6 THEN 'DC'
       WHEN n / 100 % 10 = 7 THEN 'DCC'
       WHEN n / 100 % 10 = 8 THEN 'DCCC'
       WHEN n / 100 % 10 = 9 THEN 'CM'
       ELSE ''
       END ||
       CASE
       WHEN n / 10 % 10 = 1 THEN 'X'
       WHEN n / 10 % 10 = 2 THEN 'XX'
       WHEN n / 10 % 10 = 3 THEN 'XXX'
       WHEN n / 10 % 10 = 4 THEN 'XL'
       WHEN n / 10 % 10 = 5 THEN 'L'
       WHEN n / 10 % 10 = 6 THEN 'LX'
       WHEN n / 10 % 10 = 7 THEN 'LXX'
       WHEN n / 10 % 10 = 8 THEN 'LXXX'
       WHEN n / 10 % 10 = 9 THEN 'XC'
       ELSE ''
       END ||
       CASE
       WHEN n % 10 = 1 THEN 'I'
       WHEN n % 10 = 2 THEN 'II'
       WHEN n % 10 = 3 THEN 'III'
       WHEN n % 10 = 4 THEN 'IV'
       WHEN n % 10 = 5 THEN 'V'
       WHEN n % 10 = 6 THEN 'VI'
       WHEN n % 10 = 7 THEN 'VII'
       WHEN n % 10 = 8 THEN 'VIII'
       WHEN n % 10 = 9 THEN 'IX'
       ELSE ''
       END
       FROM (SELECT number AS n)
   );
