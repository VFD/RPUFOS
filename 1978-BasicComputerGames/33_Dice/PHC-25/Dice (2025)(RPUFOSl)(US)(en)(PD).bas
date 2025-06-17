10 REM -------------------------
20 REM DICE
30 REM Danny FREIDUS
40 REM David H. AHL
50 REM -------------------------
60 REM Retro Programers United
70 REM For Obscure System
80 REM VincentD
90 REM -------------------------
1000 REM -----
1010 REM BEGIN
1020 REM -----
1030 GOSUB 9030:     REM Title
1040 GOSUB 9730:     REM Rules?
1050 CLS
1060 GOSUB 9530:     REM Init
1070 REM -------------
1080 REM Ask for rolls
1090 REM -------------
1100 INPUT "How many rolls";X
1110 CONSOLE 3,13:CLS
1120 X=ABS(X)
1130 IF X=0 THEN 1110
1140 IF X>=5000 THEN PRINT"It take times..."
1150 REM
1160 REM ------------
1170 REM Random dices
1180 REM ------------
1190 FOR S=1 TO X
1200   LOCATE 0,5:PRINT S;" /";X
1210   A=INT(6*RND(1)+1)
1220   B=INT(6*RND(1)+1)
1230   R=A+B
1240   F(R)=F(R)+1
1250 NEXT S
1260 REM ---------------
1270 REM Display Results
1280 REM ---------------
1290 CLS
1300 PRINT "Total spots","Number of times"
1310 FOR V=2 TO 12
1320   PRINT V,F(V)
1330 NEXT V
1340 GOSUB 9930
1350 CLS
1360 GOSUB 9830
1370 REM -----------------
1380 REM END of simulation
1390 REM -----------------
8000 REM -----------------
8010 REM Simulation rules
8020 REM -----------------
8030 CLS
8040 PRINT"This program simulates the"
8050 PRINT"rolling of a pair of dice."
8060 PRINT""
8070 PRINT"You enter the number of times"
8080 PRINT"you want the computer to 'roll'"
8090 PRINT"the dice."
8100 PRINT""
8110 PRINT"Watch out, very large numbers"
8120 PRINT"take a long time."
8130 PRINT"In particular, numbers over"
8140 PRINT"5000."
8150 PRINT""
8160 PRINT"Press a key to continu.";
8180 GOSUB 9930
8190 RETURN
9000 REM ------------------
9010 REM Game Title
9020 REM ------------------
9030 SCREEN 1,1,1:CLS
9040 COLOR 2,,1:CONSOLE 0,3:CLS
9050 PRINT TAB(14);"DICE"
9060 PRINT TAB(7);"Creative Computing"
9070 PRINT TAB(5);"Morristown, New Jersey";
9080 COLOR 1,,1:CONSOLE 3,13:CLS
9090 RETURN
9500 REM --------
9510 REM Init var
9520 REM --------
9530 DIM F(12)
9540 FOR Q=1 TO 12
9550   F(Q)=0
9560 NEXT Q
9570 I=RND(-TIME): REM TO RANDOMIZE
9580 REM
9590 RETURN
9700 REM -------------
9710 REM Instructions?
9720 REM -------------
9730 LOCATE 4,4:PRINT"Do you want instructions"
9740 LOCATE 13,5:PRINT"(Y/y)"
9750 GOSUB 9930
9760 IF LEFT$(K$,1)="Y" OR LEFT$(K$,1)="y" THEN GOSUB 8030
9770 RETURN
9780 REM 
9790 REM 
9800 REM ---------------------
9810 REM Play again subroutine
9820 REM ---------------------
9830 PRINT"Another Simulation (Y/y)?"
9840 GOSUB 9930
9850 IF LEFT$(K$,1)="Y" OR LEFT$(K$,1)="y" THEN RUN: REM Garbage collector
9860 CONSOLE 0,16:COLOR 1,,1:CLS
9870 PRINT"O.K., hope you had fun!"
9880 GOTO 9999
9890 REM
9900 REM -------------------
9910 REM Key wait subroutine
9920 REM -------------------
9930 K$="":K$=INKEY$:IF k$="" THEN 9930
9940 RETURN
9999 END


