       IDENTIFICATION DIVISION.
       PROGRAM-ID. LEAP.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-RESULT PIC 9.
       01 WS-YEAR   PIC 9999.
       PROCEDURE DIVISION.
       LEAP.
       MOVE 0 TO WS-RESULT
       IF FUNCTION MOD(WS-YEAR, 100) = 0 THEN
           IF FUNCTION MOD(WS-YEAR, 400) = 0 THEN
               MOVE 1 TO WS-RESULT
           END-IF
       ELSE IF FUNCTION MOD(WS-YEAR, 4) = 0 THEN
           MOVE 1 TO WS-RESULT
       END-IF
       CONTINUE.
       LEAP-EXIT.
       EXIT.
