10 REM -------------------------
20 REM 
30 REM BAGLES number guessing game
40 REM Original source unknown but suspected to be
50 REM Lawrence HALL of science, U.C. Berkely
60 REM  
70 REM 
80 REM USE 10-90 for informations
90 REM -------------------------
1000 REM ------------------
1010 REM START PROGRAM HERE
1020 REM ------------------
1030 GOSUB 9030:GOSUB 9730
1040 REM Starting point
8000 REM -----------------
8010 REM Informations here
8020 REM -----------------
8030 CLS
8040 REM 
8050 REM 
8060 REM 
8070 REM 
8080 REM 
8090 REM RETURN
9000 REM ------------------
9010 REM Screen Preparation
9020 REM ------------------
9030 SCREEN 1,1,1:CLS
9040 COLOR a,b,c:CONSOLE 0,3:CLS
9050 PRINT TAB(11),"GAME  NAME"
9060 PRINT TAB(7);"Creative Computing"
9070 PRINT TAB(5);"Morristown, New Jersey"
9080 COLOR a,b,c:CONSOLE 3,13:CLS
9090 RETURN
9100 REM -----------------------
9110 REM Screen GAME
9120 REM -----------------------
9130 REM IF needed
9140 REM 
9150 REM 
9160 REM 
9170 REM 
9180 REM 
9190 REM RETURN
9700 REM -----------------------
9710 REM Instructions Subroutine
9720 REM -----------------------
9730 LOCATE x,y:PRINT""
9740 K$="":INPUT"(Y/N)",K$
9750 IF LEFT$(K$,1)="Y" OR LEFT$(K$,1)="y" GOTO 8030
9760 RETURN
9770 REM 
9780 REM 
9790 REM 
9800 REM ---------------------
9810 REM Play again subroutine
9830 REM ---------------------
9840 CLS
9850 LOCATE x,y:PRINT"Another GAME"
9860 K$="":INPUT"(Y/N)",K$
9870 IF LEFT$(K$,1)="Y" OR LEFT$(K$,1)="y" THEN 
9880 GOTO 9999
9890 REM
9900 REM -------------------
9910 REM Key wait subroutine
9920 REM -------------------
9930 K$="":K$=INKEY$:IF k$="" THEN 9930
9940 RETURN
9999 END
