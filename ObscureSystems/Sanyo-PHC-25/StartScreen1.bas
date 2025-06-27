10 REM -------------------------
20 REM name
30 REM David H. AHL
40 REM 
50 REM -------------------------
60 REM Retro Programmers For
70 REM Obscure Systems
80 REM VincentD
90 REM -------------------------
1000 REM ------------------
1010 REM START PROGRAM HERE
1020 REM ------------------
1030 GOSUB 9030: REM Title
1040 GOSUB 9730: REM Instruction?
1050 REM Build Screen
1060 REM Starting point

8000 REM -----------------
8010 REM Instructions here
8020 REM -----------------
8030 CLS
8040 REM 
8050 REM 
8060 REM 
8070 REM 
8080 REM 
8090 RETURN


9000 REM ------------------
9010 REM Screen 1 Title
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


9700 REM ----------------
9710 REM Ask Instructions
9720 REM ----------------
9730 LOCATE x,y:PRINT"Instructions"
9740 LOCATE x,y:PRINT"(Y/y)"
9750 GOSUB 9930
9760 IF K$="Y" OR K$="y" THEN 8030
9770 RETURN
9780 REM
9790 REM
9800 REM ----------
9810 REM Play again
9820 REM ----------
9830 LOCATE x,y:PRINT"Play Another GAME"
9840 LOCATE x,y:PRINT"(Y/y)"
9850 GOSUB 9930
9860 IF K$="Y" OR K$="y" THEN RUN: REM Garbbage collector
9870 GOTO 9999
9880 REM
9890 REM
9900 REM -------------------
9910 REM Key wait subroutine
9920 REM -------------------
9930 K$="":K$=INKEY$:IF k$="" THEN 9930
9940 RETURN
9950 REM ---------
9960 REM Randomize
9970 REM ---------
9980 I=RND(-TIME)
9990 RETURN
9999 CONSOLE 0,16:COLOR a,b,c:END