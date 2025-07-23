       IDENTIFICATION DIVISION.
       PROGRAM-ID. rna-transcription.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-COMPLEMENT PIC X(64).
       01 WS-DNA PIC X(4) VALUE "ACGT".
       01 WS-STRING.
          02 WS-CHAR PIC X(1) OCCURS 64 TIMES.
       01 I PIC 9(2).
       PROCEDURE DIVISION.
       RNA-TRANSCRIPTION.

       MOVE WS-COMPLEMENT TO WS-STRING

       MOVE 0 TO I
       PERFORM UNTIL I >= 64
           EVALUATE WS-CHAR(I)
               WHEN 'G' MOVE 'C' TO WS-CHAR(I)
               WHEN 'C' MOVE 'G' TO WS-CHAR(I)
               WHEN 'T' MOVE 'A' TO WS-CHAR(I)
               WHEN 'A' MOVE 'U' TO WS-CHAR(i)
           END-EVALUATE
           ADD 1 TO I
       END-PERFORM

       MOVE WS-STRING TO WS-COMPLEMENT
