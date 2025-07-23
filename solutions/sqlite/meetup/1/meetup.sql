-- Schema: CREATE TABLE "meetup" ( "year" INTEGER, "month" INTEGER, "week" TEXT, "dayofweek" TEXT, "result" TEXT);
-- Task: update the meetup table and set the result based on the other fields.

CREATE TEMPORARY TABLE lookup (k, v);
INSERT INTO lookup VALUES
('Sunday'   , 'weekday 0'),
('Monday'   , 'weekday 1'),
('Tuesday'  , 'weekday 2'),
('Wednesday', 'weekday 3'),
('Thursday' , 'weekday 4'),
('Friday'   , 'weekday 5'),
('Saturday' , 'weekday 6'),
('first'    , '+0 days'  ),
('second'   , '+7 days'  ),
('third'    , '+14 days' ),
('fourth'   , '+21 days' );

UPDATE meetup
   SET result =
       DATE(
         FORMAT('%d-%02d-%02d', year, month, 13),
         (SELECT v FROM lookup WHERE k = dayofweek)
       )
 WHERE week = 'teenth'
       ;

UPDATE meetup
   SET result =
       DATE(
         FORMAT('%d-%02d-%02d', year, month, 1),
         (SELECT v FROM lookup WHERE k = week),
         (SELECT v FROM lookup WHERE k = dayofweek)
       )
 WHERE week NOT IN ('teenth', 'last')
       ;

UPDATE meetup
   SET result =
       DATE(
         FORMAT('%d-%02d-%02d', year, month, 1),
         '+1 month',
         '-7 days',
         (SELECT v FROM lookup WHERE k = dayofweek)
       )
 WHERE week = 'last'
       ;
