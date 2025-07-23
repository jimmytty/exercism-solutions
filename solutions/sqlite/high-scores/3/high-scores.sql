-- Schema:
--   CREATE TABLE "scores" ("game_id" TEXT, "score" INT);
--   CREATE TABLE "results" ("game_id" TEXT, "property" TEXT, "result" TEXT);

-- Task: Given the data in the "scores" table, update the "result" field in the "results" table.

UPDATE results AS r
   SET result = (
     CASE
     WHEN property = 'scores'
       THEN (
         SELECT GROUP_CONCAT(score, ',')
           FROM scores s
          WHERE s.game_id = r.game_id
       )
     WHEN property = 'latest'
       THEN (
         WITH hs AS (
           SELECT score
             FROM scores AS s JOIN results AS r
            WHERE s.game_id = r.game_id
         )
         SELECT score
           FROM hs
          LIMIT 1 OFFSET (SELECT COUNT(*) FROM hs) -1
       )
     WHEN property = 'personalBest'
       THEN (
         SELECT MAX(score)
           FROM scores AS s
          WHERE s.game_id = r.game_id
       )
     WHEN property = 'personalTopThree'
       THEN (
         SELECT GROUP_CONCAT(score, ',')
           FROM (
             SELECT score
               FROM scores s
              WHERE s.game_id = r.game_id
              ORDER BY score DESC
              LIMIT 3
           )t
       )
     END
   );
