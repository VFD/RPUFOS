10 REM -------------------------
20 REM NAME
30 REM 
40 REM David H. AHL
50 REM -------------------------
60 REM Retro Programers United
70 REM For Obscure Systems
80 REM VincentD
90 REM -------------------------
1000 REM ------------------
1010 REM START PROGRAM HERE
1020 REM ------------------
1030 GOSUB 9030: REM Title
1040 DIM B$(40)
1050 CLS
1060 PRINT"- Hello.":PRINT"- My name is Creative Computer."
1070 PRINT"- What's your name":PRINT"  (first and last)":INPUT A$
1080 REM -------------
1090 REM Reverse print
1100 REM -------------
1110 L=LEN(A$)
1120 PRINT:PRINT"- Thank you, ";
1130 FOR I=1 TO L
1140   B$(I)=MID$(A$,I,1)
1150 NEXT I
1160 FOR I=L TO 1 STEP -1
1170   PRINT B$(I);
1180 NEXT I
1190 REM ----
1200 REM Next
1210 REM ----
1220 PRINT"."
1230 PRINT"- OOPS!"
1240 PRINT"- I guess I got it backwards."
1250 PRINT"- A smart computer like me"
1260 PRINT"  shouldn't make a mistake like"
1270 PRINT"  that!": GOSUB 9930
1280 PRINT"- But I just noticed your"
1290 PRINT"  letters are out of order."
1300 PRINT"  Let's put them in order like"
1310 PRINT" this: "
1320 REM ---------------
1330 REM Shuffle
1340 REM ---------------
1350 FOR J=2 TO L 
1360   I=J-1
1370   T$=B$(J)
1380   IF T$>B$(I) THEN 1420
1390   B$(I+1)=B$(I)
1400   I=I-1
1410   IF I>0 THEN 1380
1420   B$(I+1)=T$
1430 NEXT J
1440 REM ----------
1450 REM Print name
1460 REM ----------
1470 FOR I=1 TO L: : 
1480   PRINT B$(I);
1490 NEXT I
1500 REM ----
1510 REM Next
1520 REM ----
1530 PRINT:PRINT"- Don't you like that better?"
1540 Print"  (Y/y) or any key if not."
1550 GOSUB 9930
1560 IF K$="y" OR K$="Y" THEN 1600
1570 PRINT"- I'm sorry you don't like"
1580 PRINT"  it that way."
1590 GOTO 1610
1600 PRINT"- I knew you'd agree!!"
1610 PRINT"- I really enjoyed meeting you"
1620 PRINT"  ";A$;"."
1630 PRINT"- Have a nice day!"
1640 GOTO 9999
9000 REM -----
9010 REM Title
9020 REM -----
9030 SCREEN 1,1,1:CLS
9040 COLOR 2,,1:CONSOLE 0,3:CLS
9050 PRINT TAB(14);"NAME"
9060 PRINT TAB(7);"Creative Computing"
9070 PRINT TAB(5);"Morristown, New Jersey";
9080 COLOR 1,,1:CONSOLE 3,13:CLS
9090 RETURN
9900 REM -------------------
9910 REM Key wait subroutine
9920 REM -------------------
9930 K$="":K$=INKEY$:IF k$="" THEN 9930
9940 RETURN
9999 END