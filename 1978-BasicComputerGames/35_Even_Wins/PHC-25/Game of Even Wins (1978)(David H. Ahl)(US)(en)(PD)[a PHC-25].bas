0 GOSUB 9000
1 PRINT TAB(7);"GAME OF EVEN WINS"
2 PRINT TAB(7);"CREATIVE COMPUTING":PRINT TAB(5);"MORRISTOWN, NEW JERSEY"
3 PRINT:PRINT
4 INPUT "DO YOU WANT INSTRUCTIONS (YES OR NO)";A$:PRINT
5 IF A$="NO" THEN 20
6 PRINT "THE GAME IS PLAYED AS FOLLOWS:":PRINT
7 PRINT "AT THE BEGINNING OF THE GAME, A RANDOM NUMBER OF CHIPS ARE"
8 PRINT "PLACED ON THE BOARD.  THE NUMBER OF CHIPS ALWAYS STARTS"
9 PRINT "AS AN ODD NUMBER.  ON EACH TURN, A PLAYER MUST TAKE ONE,"
10 PRINT "TWO, THREE, OR FOUR CHIPS.  THE WINNER IS THE PLAYER WHO"
11 PRINT "FINISHES WITH A TOTAL NUMBER OF CHIPS THAT IS EVEN."
12 PRINT "THE COMPUTER STARTS OUT KNOWING ONLY THE RULES OF THE"
13 PRINT "GAME.  IT GRADUALLY LEARNS TO PLAY WELL.  IT SHOULD BE"
14 PRINT "DIFFICULT TO BEAT THE COMPUTER AFTER TWENTY GAMES IN A ROW."
15 PRINT "TRY IT!!!!": PRINT
16 PRINT "TO QUIT AT ANY TIME, TYPE A '0' AS YOUR MOVE.": PRINT
20 DIM R(1,5)
25 L=0: B=0
30 FOR I=0 TO 5
40 R(1,I)=4
50 R(0,I)=4
60 NEXT I
70 A=0: B=0
90 P=INT((13*RND(1)+9)/2)*2+1
100 IF P=1 THEN 530
110 PRINT "THERE ARE";P;"CHIPS ON THE BOARD."
120 E1=E
130 L1=L
140 E=(A/2-INT(A/2))*2
150 L=INT((P/6-INT(P/6))*6+.5)
160 IF R(E,L)>=P THEN 320
170 M=R(E,L)
180 IF M<=0 THEN 370
190 P=P-M
200 IF M=1 THEN 510
210 PRINT "COMPUTER TAKES";M;"CHIPS LEAVING";P;"... YOUR MOVE";
220 B=B+M
230 INPUT M
240 M=INT(M)
250 IF M<1 THEN 450
260 IF M>4 THEN 460
270 IF M>P THEN 460
280 IF M=P THEN 360
290 P=P-M
300 A=A+M
310 GOTO 100
320 IF P=1 THEN 550
330 PRINT "COMPUTER TAKES";P;"CHIPS."
340 R(E,L)=P
350 B=B+P
360 IF B/2=INT(B/2) THEN 420
370 PRINT "GAME OVER ... YOU WIN!!!": PRINT
390 IF R(E,L)=1 THEN 480
400 R(E,L)=R(E,L)-1
410 GOTO 70
420 PRINT "GAME OVER ... I WIN!!!": PRINT
430 GOTO 70
450 IF M=0 THEN 570
460 PRINT M;"IS AN ILLEGAL MOVE ... YOUR MOVE";
470 GOTO 230
480 IF R(E1,L1)=1 THEN 70
490 R(E1,L1)=R(E1,L1)-1
500 GOTO 70
510 PRINT "COMPUTER TAKES 1 CHIP LEAVING";P;"... YOUR MOVE";
520 GOTO 220
530 PRINT "THERE IS 1 CHIP ON THE BOARD."
540 GOTO 120
550 PRINT "COMPUTER TAKES 1 CHIP."
560 GOTO 340
570 END
9000 SCREEN 1,1,1:CLS
9010 I=RND(-TIME): REM TO RANDOMIZE
9020 RETURN
9030 K$=INKEY$:IF K$="" THEN 9030
9040 RETURN