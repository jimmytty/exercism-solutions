-- Schema: CREATE TABLE "kindergarten-garden" ("diagram" TEXT, "student" TEXT, "result" TEXT);
-- Task: update the kindergarten-garden table and set the result based on the diagram and student fields.

DROP TABLE IF EXISTS p;
CREATE TABLE p (c CHAR(1) PRIMARY KEY, n VARCHAR(255));
INSERT INTO p VALUES ('G', 'grass');
INSERT INTO p VALUES ('C', 'clover');
INSERT INTO p VALUES ('R', 'radishes');
INSERT INTO p VALUES ('V', 'violets');

UPDATE "kindergarten-garden"
   SET result = (
     SELECT
       (SELECT n FROM p WHERE c = c1) || ',' ||
       (SELECT n FROM p WHERE c = c2) || ',' ||
       (SELECT n FROM p WHERE c = c3) || ',' ||
       (SELECT n FROM p WHERE c = c4)
       FROM (
         SELECT
           SUBSTR(d,      i + 1, 1) c1,
           SUBSTR(d,      i + 2, 1) c2,
           SUBSTR(d, r2 + i + 1, 1) c3,
           SUBSTR(d, r2 + i + 2, 1) c4
           FROM (
             SELECT
               diagram AS d,
               CASE
               WHEN student = 'Alice'   THEN  0
               WHEN student = 'Bob'     THEN  2
               WHEN student = 'Charlie' THEN  4
               WHEN student = 'David'   THEN  6
               WHEN student = 'Eve'     THEN  8
               WHEN student = 'Fred'    THEN 10
               WHEN student = 'Ginny'   THEN 12
               WHEN student = 'Harriet' THEN 14
               WHEN student = 'Ileana'  THEN 16
               WHEN student = 'Joseph'  THEN 18
               WHEN student = 'Kincaid' THEN 20
               WHEN student = 'Larry'   THEN 22
               END AS i,
               INSTR(diagram, CHAR(10)) AS r2
           )
       )
   );
