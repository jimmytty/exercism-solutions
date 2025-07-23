-- Schema: CREATE TABLE "color_code" ("color1" TEXT, "color2" TEXT, "result" INT);
-- Task: update the color_code table and set the result based on the two colors.

DROP TABLE IF EXISTS dict;
CREATE TABLE dict (
  code  INTEGER,
  color TEXT
);
INSERT INTO dict (code, color)
VALUES
(0, 'black'  ),
(1, 'brown'  ),
(2, 'red'    ),
(3, 'orange' ),
(4, 'yellow' ),
(5, 'green'  ),
(6, 'blue'   ),
(7, 'violet' ),
(8, 'grey'   ),
(9, 'white'  );

UPDATE color_code
   SET result = (SELECT code FROM dict WHERE color = color1) * 10
              + (SELECT code FROM dict WHERE color = color2);
