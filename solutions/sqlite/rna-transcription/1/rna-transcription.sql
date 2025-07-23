-- Schema: CREATE TABLE "rna-transcription" ("dna" TEXT, "result" TEXT);
-- Task: update the rna-transcription table and set the result based on the dna field.

UPDATE "rna-transcription"
   SET result = (
     REPLACE(
       REPLACE(
         REPLACE(
           REPLACE(
             HEX(dna), '47', 'C'), '43', 'G' ), '54', 'A'), '41', 'U')
     );
