       IDENTIFICATION DIVISION.
       PROGRAM-ID. YACHT.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 WS-RESULT   PIC 99 VALUE 0.
       01 WS-CATEGORY PIC X(15).
       01 WS-DICE     PIC 9(5).
       01 WS-DIGITS.
          05 D1       PIC 9(1).
          05 D2       PIC 9(1).
          05 D3       PIC 9(1).
          05 D4       PIC 9(1).
          05 D5       PIC 9(1).
       01 N           PIC 9(1).
       01 WS-COUNT.
          02 C        PIC 9(1) OCCURS 6 TIMES.
       01 I           PIC 9(1).
       01 TMP         PIC 9(1).
       PROCEDURE DIVISION.
       YACHT.

       MOVE WS-DICE TO WS-DIGITS
       MOVE 000000 TO WS-COUNT

       ADD 1 TO C(D1)
       ADD 1 TO C(D2)
       ADD 1 TO C(D3)
       ADD 1 TO C(D4)
       ADD 1 TO C(D5)

       MOVE 0 TO N
       EVALUATE TRUE
           WHEN WS-CATEGORY = 'ones'   MOVE 1 TO N
           WHEN WS-CATEGORY = 'twos'   MOVE 2 TO N
           WHEN WS-CATEGORY = 'threes' MOVE 3 TO N
           WHEN WS-CATEGORY = 'fours'  MOVE 4 TO N
           WHEN WS-CATEGORY = 'fives'  MOVE 5 TO N
           WHEN WS-CATEGORY = 'sixes'  MOVE 6 TO N
       END-EVALUATE

       MOVE 0 TO WS-RESULT
       IF N > 0 THEN
           IF D1 = N THEN ADD N TO WS-RESULT END-IF
           IF D2 = N THEN ADD N TO WS-RESULT END-IF
           IF D3 = N THEN ADD N TO WS-RESULT END-IF
           IF D4 = N THEN ADD N TO WS-RESULT END-IF
           IF D5 = N THEN ADD N TO WS-RESULT END-IF
       ELSE IF WS-CATEGORY = 'choice' THEN
           COMPUTE WS-RESULT = D1 + D2 + D3 + D4 + D5
       ELSE IF WS-CATEGORY = 'yacht' THEN
           IF D1 = D2 AND D1 = D3 AND D1 = D4 AND D1 = D5 THEN
               MOVE 50 TO WS-RESULT
           END-IF
       ELSE IF WS-CATEGORY = 'little straight' THEN
            IF C(1) = 1 AND C(2) = 1 AND C(3) = 1
               AND C(4) = 1 AND C(5) = 1 THEN
                MOVE 30 TO WS-RESULT
            END-IF
       ELSE IF WS-CATEGORY = 'big straight' THEN
            IF C(2) = 1 AND C(3) = 1 AND C(4) = 1
               AND C(5) = 1 AND C(6) = 1 THEN
                MOVE 30 TO WS-RESULT
            END-IF
       ELSE IF WS-CATEGORY = 'four of a kind' THEN
           MOVE 1 TO I
           PERFORM UNTIL I >= 7
               IF C(I) >= 4 THEN
                   COMPUTE WS-RESULT = 4 * I
                   MOVE 6 TO I
               END-IF
               ADD 1 TO I
           END-PERFORM
       ELSE IF WS-CATEGORY = 'full house' THEN
           MOVE 0 TO TMP
           MOVE 1 TO I
           PERFORM UNTIL I >= 7
               IF C(I) = 3 THEN
                   ADD 1 TO TMP
                   COMPUTE WS-RESULT = WS-RESULT + 3 * I
                   MOVE 6 TO I
               END-IF
               ADD 1 TO I
           END-PERFORM
           MOVE 1 TO I
           PERFORM UNTIL I >= 7
               IF C(I) = 2 THEN
                   ADD 1 TO TMP
                   COMPUTE WS-RESULT = WS-RESULT + 2 * I
                   MOVE 6 TO I
               END-IF
               ADD 1 TO I
           END-PERFORM
           IF TMP IS NOT = 2 THEN MOVE 0 TO WS-RESULT
       END-IF

       CONTINUE.
       YACHT-EXIT.
       EXIT.
