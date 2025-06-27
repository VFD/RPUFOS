'
' Delete what you don't need to win memory space
'
' Number line 10000 is same size as 1 in memory
'
' 
'
'
'
' VincentD

10000 REM -------------------
10010 REM Usefull Subroutines
10020 REM -------------------
10030 K$="":K$=INKEY$:IF K$="" THEN 10030 ELSE RETURN:REM Wait Key
10040 I=RND(-TIME):RETURN:REM RANDOMIZE
10050 PI=3.141592653:REM Define PI
10060 DEF FN R(D)=D*(PI/180):REM DEG to RAD
10070 DEF FN D(R)=R*(180/PI):REM RAD to DEG
10080 REM DEF FN ACOS(X)=
10090 REM DEF FN ASIN(X)=
10100 REM DEF FN ATAN(X)=
10110 DEF FN SEC(X)=1/COS(X): REM secante
10120 DEF FN CSC(X)=1/SIN(X): REM cosecante
10130 DEF FN COT(X)=1/TAN(X): REM cotangente
10140 DEF FN SINH(X)=(EXP(X)-EXP(-X))/2: REM sinus hyperbolique
10150 DEF FN COSH(X)=(EXP(X)-EXP(-X))/2: REM cosinus hyperbolique
10160 DEF FN TANH(X)=EXP-(-X)/EXP(X)+EXP(-X))*2+1: REM tangente hyperbolique
10170 DEF FN SECH(X)=2/(EXP(X)+EXP(-X): REM secante hyperbolique
10180 DEF FN CSCH(X)=2/(EXP(X)-EXP(-X): REM cosecante hyperbolique
10190 DEF FN COTH(X)=EXP(-X)/(EXP(X)-EXP(-X)*2+1: REM cotangente hyperbolique
10200 DEF FN ARCSINH(X)=LOG(X+SQR(X*X+1): REM inverse sinus hyperbolique
10210 DEF FN ARCCOSH(X)=LOG(X+SQR(X*X-1): REM inverse cosinus hyperbolique
10220 DEF FN ARCTANH(X)=LOG((1+X)/(1-X))/2: REM inverse tangente hyperbolique
10230 DEF FN ARCSECH(X)=LOG((SQR(-X*X+1)+1/X): REM inverse secante hyperbolique
10240 DEF FN ARCCSCH(X)=LOG((SGN(X)*SQR(X*X+1)/X: REM inverse cosecante hyperbolique
10250 DEF FN ARCCOTH(X)=LOG((X+1)/(X-1))/2: REM inverse cotangente hyperbolique
10260 RETURN

10500 REM ----------------------------
10510 REM Memory and Garbage collector
10520 REM ----------------------------
10530 I=FRE(I):RETURN:REM Free bytes in I
10550 I=FRE(I$):I$="":RETURN:REM Free char in I






11000 REM ---SCREEN---
11010 REM 1 to 2 screens
11020 POKE &HFB58,247:POKE &HFB56,1:CLEAR 50,&HF800:RETURN
11030 REM 2 to 1 SCREEN
11040 CLEAR 50,&HE000:POKE &HFB58,223:POKE &HFB56,20:RETURN
11050 REM ------------


12000 REM ------------------------
12010 REM Converts A$ to uppercase
12020 REM ------------------------
12030 FOR I=1 TO LEN(A$)
12040 C$=MID$(A$,I,1)
12050 X=ASC(C$)
12060 IF X>=97 AND X<=122 THEN C$=CHR$(X-32)
12070 A$=LEFT$(A$,I-1)+C$+RIGHT$(A$,LEN(A$)-I)
12080 NEXT I
12090 RETURN
12100 REM ------------------------
12110 REM Converts A$ to lowercase
12120 REM ------------------------
12130 FOR I=1 TO LEN(A$)
12140 C$=MID$(A$,I,1)
12150 X=ASC(C$)
12160 IF X>=65 AND X<=90 THEN C$=CHR$(X+32)
12170 A$=LEFT$(A$,I-1)+C$+RIGHT$(A$,LEN(A$)-I)
12180 NEXT I
12190 RETURN
65535 CONSOLE 0,16:COLOR a,b,c:CLS:END:REM End program return safe

