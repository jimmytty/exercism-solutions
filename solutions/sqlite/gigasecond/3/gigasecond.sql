-- Schema: CREATE TABLE "gigasecond" ("moment" TEXT, "result" TEXT);
-- Task: update the gigasecond table and set the result based on the moment.

UPDATE gigasecond
   SET RESULT = STRFTIME(
     '%Y-%m-%dT%H:%M:%S',
     DATETIME(UNIXEPOCH(moment) + 1000000000, 'unixepoch')
   )
;
