10 REM     DUKEDOM-MICROSOFT BASIC
20 REM
30 Q1%=1
40 CLS:PRINT
50 CLEAR 400
60 DEF FNR%(Q1%,Q2%)=RND(1)*(1+Q2%-Q1%)+Q1%
70 DEF FNX%(Q1%)=FNR%(-F3%,F3%)+R(Q1%)
80 KF=2399:GOTO 440:' skip subroutine def
90 REM
100 REM   SUBPROGRAM DEFINITIONS
110 REM
120 DIM P(8),L(3),G(10),S(6),U(6),R(8),P$(8),L$(8),G$(10)
130 REM PARTIALLY GAUSSIAN RANDOM #
140 GOSUB 2440:Q3%=FNR%(Q1%,Q2%)
150 GOSUB 2440:Q3%=FNR%(Q1%,Q2%)
160 IF FNR%(Q1%,Q2%)>5 THEN GO%=(Q3%+FNR%(Q1%,Q2%))/2 ELSE GO%=Q3%
170 RETURN
180 REM
190 REM  READ YES/NO
200 REM
210 LINE INPUT V$:V$=LEFT$(V$,1)
220 IF LEN(V$)=0 THEN V$="N" ELSE IF ASC(V$)>95 THEN V$=CHR$(ASC(V$)-32)
230 IF V$="Y" OR V$="y" THEN RETURN ELSE V$="N":RETURN
240 GOTO 210
250 REM
260 REM  INPUT NUMERIC RESPONSE
270 REM
280 LINE INPUT V$:V=INT(VAL(V$))
290 IF V=>0 THEN RETURN ELSE PRINT "Please enter a non-negative #:";:GOTO 280
310 REM
320 REM  COMMON MESSAGES
330 REM
340 PRINT "But you don't have enough grain!":PRINT "You have";G;"HL. of grain left,"
350 IF X1=>4 THEN PRINT "Enough to buy";INT(G/X1);"HA. of land.":RETURN
360 PRINT "Enough to plant";INT(G/2);"HA. of land.":RETURN
370 PRINT "But you don't have enough land."
380 PRINT "You have only";H;"HA. of land left.":RETURN
390 PRINT "But you don't have enough peasants."
400 PRINT "Your peasants can only plant";4*P;"HA. of land.":RETURN
410 REM
420 REM   INTRO TO THE GAME
430 REM
440 PRINT "D U K E D O M":PRINT:PRINT " SV Microsoft Basic Version"
450 PRINT " Converted by":PRINT "        Bob Anderson"
460 F3%=2:M=1.95:REM ONCE ONLY INIT
470 PRINT:PRINT "Do you want to skip detailed reports? ";:GOSUB 210:R$=V$
480 REM
490 REM   START NEW GAME
500 REM
510 READ Y%,C1,U1,U2,K%,D,P,L,G
520 FOR I%=1 TO 8:READ P(I%):NEXT
530 FOR I%=1 TO 3:READ L(I%):NEXT
540 FOR I%=1 TO 10:READ G(I%):NEXT
550 FOR I%=1 TO 6:READ S(I%):NEXT
560 FOR I%=1 TO 8:READ P$(I%):NEXT
570 FOR I%=1 TO 3:READ L$(I%):NEXT
580 FOR I%=1 TO 10:READ G$(I%):NEXT
590 RESTORE
600 DATA 0,3.95,0,0,0,0,100,600,4177,96,0,0,0,0,0
610 DATA -4,8,600,0,0,5193,-1344,0,-768,0,0,0,1516,-120,-300,216,200,184,0,0,0
620 REM
630 REM   INIT RANDOM BASE TABLE
640 REM
650 Q1%=4:Q2%=7:GOSUB 140:R(1)=GO%:Q2%=8:GOSUB 140:R(3)=GO%:Q2%=6:GOSUB 140
660 R(3)=GO%:Q1%=3:GOSUB 140:R(4)=GO%:Q1%=5:GOSUB 140
670 R(5)=GO%:Q1%=3:Q2%=6:GOSUB 140:R(6)=GO%
680 Q2%=8:GOSUB 140:R(7)=GO%:Q1%=1:GOSUB 140:R(8)=GO%
690 REM
700 REM   DISPLAY LAST YEAR'S RESULTS
710 REM
720 PRINT:PRINT:PRINT "Year"Y%"Peasants"P"Land"L"Grain"G:PRINT
730 IF R$="Y" OR R$="y" THEN 830
740 FOR J1%=1 TO 8:IF P(J1%)<>0 OR J1%=1 THEN PRINT P$(J1%);TAB(25);P(J1%)
750 NEXT J1%:PRINT "Peasants at end";TAB(25);P:PRINT
760 FOR J1%=1 TO 3:IF L(J1%)<>0 OR J1%=1 THEN PRINT L$(J1%);TAB(25);L(J1%)
770 NEXT J1%:PRINT "Land at end of year";TAB(25);L:PRINT
780 PRINT " 100%  80%  60%  40%  20%  Depl":PRINT USING "#####";S(1);
790 FOR J1%=2 TO 6:PRINT USING "#####";S(J1%);:NEXT J1%:PRINT:PRINT
800 FOR J1%=1 TO 10:IF G(J1%)<>0 OR J1%=1 THEN PRINT G$(J1%);TAB(25);G(J1%)
810 NEXT J1%:PRINT "Grain at end of year";TAB(25);G
820 IF Y%<=0 THEN PRINT "(Severe crop damage due to seven":PRINT " year locusts.)"
830 PRINT:Y%=Y%+1
840 FOR I%=1 TO 8:P(I%)=0:NEXT:FOR I%=1 TO 3:L(I%)=0:NEXT
850 FOR I%=1 TO 10:G(I%)=0:NEXT:P(1)=P:L(1)=L:G(1)=G
860 REM
870 REM   TEST FOR END OF GAME
880 REM
890 IF P=>33 THEN 910 ELSE PRINT "You have so few peasants left that"
900 PRINT "the High King has abolished your Ducal":PRINT "right.":GOTO 2430
910 IF L=>199 THEN 920 ELSE PRINT "You have so little land left that":GOTO 930
920 IF U1>88 OR U2>99 THEN 930 ELSE IF G=>429 THEN 950
930 PRINT "The peasants tire of war and starvation."
940 PRINT "You are deposed.":PRINT:GOTO 2430
950 IF Y%>45 AND K=0 THEN PRINT "You have reached the age of retirement.":GOTO 2430
960 U1=0:IF K%>0 THEN PRINT "The King demands twice the royal tax in" ELSE GOTO 1020
970 PRINT "THE HOPE OF PROVOKING WAR.  WILL YOU PAY? ";:GOSUB 210
980 K%=2:IF V$="N" THEN K%=-1
990 REM
1000 REM   FOOD FOR PEASANTS
1010 REM
1020 PRINT "Grain for food ("G/P"max ): ";:GOSUB 280:V=-V*(V=>100)-V*P*(V<100)
1030 IF V>G THEN GOSUB 340:GOTO 1020
1040 IF V/P<11 AND V<>G THEN PRINT "The peasants demonstrate before the":PRINT "castle"
1050 G(2)=-V:G=G+G(2)
1060 X1=V/P
1070 IF X1<13 THEN PRINT "Some peasants have starved.":P(2)=-INT(P-V/13):P=P+P(2)
1080 X1=X1-14:X1=-X1*(X1<=4)-4*(X1>4):U1=U1-3*P(2)-2*X1
1090 IF U>88 THEN 930 ELSE IF P<33 THEN 890
1100 REM
1110 REM   LAND BUY/SELL
1120 REM
1130 C=C1:X1=INT(2*C+FNX%(1)-5):X1=-X1*(X1=>4)-4*(X1<4)
1140 PRINT "Grain:"G" Land to buy at"X1"HL./HA. ("G/X1" max ): ";:GOSUB 280:G(3)=-V*X1
1150 IF -G(3)>G THEN GOSUB 340:GOTO 1140
1160 L(2)=V:S(3)=S(3)+V:IF V>0 THEN 1270 ELSE X2=S(1)+S(2)+S(3)
1170 FOR J1%=1 TO 3:X1=X1-1:PRINT "Grain:"G" Land to sell at"X1"HL./HA.: ";:GOSUB 280
1180 IF V>X2 THEN PRINT "But you only have"X2"HA. of good land!":GOTO 1210
1190 G(3)=V*X1:IF G(3)<=4000 THEN 1220
1200 PRINT "No buyers have that much grain.  Try less."
1210 NEXT J1%:PRINT "Buyers have lost interest.":V=0:G(3)=0
1220 L(2)=-V
1230 FOR J1%=3 TO 1 STEP -1:IF V<=S(J1%) THEN 1260
1240 V=V-S(J1%):S(J1%)=0:NEXT J1%
1250 PRINT "Land selling loop error.":STOP
1260 S(J1%)=S(J1%)-V
1270 L=L+L(2):IF L<10 THEN 910
1280 IF L(2)<0 AND X1<4 THEN 1290 ELSE GOTO 1310
1290 G(3)=INT(G(3)/2):PRINT:PRINT "The High King appropriates half"
1300 PRINT "of your earnings as punishment":PRINT "for selling at such a low price."
1310 G=G+G(3)
1320 REM
1330 REM   WAR WITH THE KING
1340 REM
1350 IF K%<>-2 THEN 1460
1360 PRINT:PRINT "The King's army is about to attack"
1370 PRINT "your duchy.":X1=INT(G/100):PRINT "At 100 HL. each (pay in advance)"
1380 PRINT "you have hired"X1"foreign mercenaries.":FF=8*X1+P:PF=100*(FF/(FF+KF))
1385 PRINT:FOR A=1 TO 10000:NEXT:GOSUB 2440:IF RND*100<PF THEN 1400
1390 PRINT "Your head is placed atop the":PRINT "castle gate.":GOTO 2430
1400 PRINT "Wipe the blood from the crown--you"
1410 PRINT "are High King!  A nearby monarchy"
1420 PRINT "THREATENS WAR;  HOW MANY .........":PRINT:PRINT:PRINT:END
1430 REM
1440 REM   GRAIN PRODUCTION
1450 REM
1460 X1=2:PRINT "Grain:"G" Land to be planted ("G/2" max ): ";:GOSUB 280:IF V>L THEN GOSUB 370:GOTO 1460
1470 G(4)=-2*V:IF -G(4)>G THEN GOSUB 340:GOTO 1460
1480 G(8)=V:G=G+G(4)
1490 FOR I%=1 TO 6:U(I%)=0:NEXT
1500 FOR J1%=1 TO 6:IF V<=S(J1%) THEN 1530
1510 V=V-S(J1%):U(J1%)=S(J1%):S(J1%)=0:NEXT J1%
1520 PRINT "LAND TABLE ERROR":STOP
1530 U(J1%)=V:S(J1%)=S(J1%)-V:S(1)=S(1)+S(2):S(2)=0
1540 FOR J1%=3 TO 6:S(J1%-2)=S(J1%-2)+S(J1%):S(J1%)=0:NEXT J1%
1550 FOR J1%=1 TO 5:S(J1%+1)=S(J1%+1)+U(J1%):NEXT J1%:S(6)=S(6)+U(6)
1560 REM
1570 REM   CROP YIELD AND LOSS
1580 REM
1590 C=FNX%(2)+9:IF INT(Y%/7)=Y% THEN PRINT "Seven year locusts":C=INT(C*.65)
1600 X1=0
1610 FOR J1%=1 TO 5:X1=X1+U(J1%)*(1.2-.2*J1%):NEXT J1%:IF G(8)=0 THEN C1=0:C=0:GOTO 1630
1620 C1=INT((C*(X1/G(8)))*100)/100:C=C1
1630 PRINT "Yield: "C"HL./HA.":X1=FNX%(3)+3:IF X1<9 THEN 1750
1640 G(5)=-INT((X1*G)/83):G=G+G(5)
1650 PRINT "Rats infest the grainery.":IF P<67 OR K%=-1 THEN 1750
1660 X1=FNX%(4):IF X1>P/30 THEN 1750
1670 PRINT:PRINT "The King requires"X1"peasants for":PRINT "his estate and mines.  Will you supply":KF=KF-X1
1680 PRINT "them (Y)es or pay"X1*100"HL. of"
1690 PRINT "grain instead (N)o? ";:GOSUB 210
1700 IF V$="N" THEN G(10)=-100*X1:G=G+G(10):GOTO 1750
1710 P(3)=-X1:P=P+P(3):KF=KF+X1
1720 REM
1730 REM   WAR
1740 REM
1750 IF K%<>-1 THEN 1780
1760 PRINT:PRINT "The High King calls for peasant levies"
1770 PRINT "and hires as many mercenaries":K%=-2:GOTO 2180
1780 X1=INT(11-1.5*C):X1=-X1*(X1=>2)-2*(X1<2)
1790 IF K%<>0 OR P<=109 OR 17*(L-400)+G<=10600 THEN 1820
1800 PRINT:PRINT "The High King grows uneasy and may"
1810 PRINT "be subsidizing wars against you.":X1=X1+2:X2=Y%+5:GOTO 1830
1820 X2=0
1830 X3=FNX%(5):IF X3>X1 THEN 2180
1840 PRINT:PRINT "A nearby Duke threatens war.  ";:X2=INT(X2+85+18*FNX%(6))
1850 X4=1.2-U1/16:X5=INT(P*X4)+13:PRINT "Will you attack first? ";:GOSUB 210
1860 IF V$="N" THEN 1920
1870 IF X2=>X5 THEN 1890 ELSE PRINT "Peace negotiations successful."
1880 P(4)=-X1-1:X2=0:GOTO 1910
1890 PRINT "First strike failed--you need
1900 PRINT "professionals.":P(4)=-X3-X1-2:X2=X2+3+P(4)
1910 P=P+P(4):IF X2<1 THEN U1=U1-2*P(4)-3*P(5):GOTO 2180
1920 PRINT "Grain:"G" How many mercenaries will you hire":PRINT "at 40 HL. each ( you can afford"G/40") ? ";:GOSUB 280:IF V>75 THEN PRINT "There are only 75 available for hire.":GOTO 1920
1930 X2=INT(X2*M):X5=INT(P*X4)+7*V+13:X6=X2-4*V-INT(.25*X5)
1940 X2=X5-X2:L(3)=INT(.8*X2)
1950 IF -L(3)<=.67*L THEN 1970
1960 PRINT "You have been overrun and have lost":PRINT "your entire Dukedom.":GOTO 1390
1970 X1=L(3)
1980 FOR J1%=1 TO 3:X3=INT(X1/(4-J1%)):IF -X3<=S(J1%) THEN X5=X3 ELSE X5=-S(J1%)
1990 S(J1%)=S(J1%)+X5:X1=X1-X5:NEXT J1%
2000 IF L(3)<399 THEN 2050
2010 PRINT:PRINT "You have overrun the enemy and annexed":PRINT "his entire Dukedom."
2020 G(7)=3513:G=G+G(7):X6=-47:X4=.55:IF K%>0 THEN 2090
2030 K%=1:PRINT "The King fears for his throne and"
2040 PRINT "may be planning direct action.":GOTO 2090
2050 GOSUB 2440:PF=100*(X2/2):IF RND*100=>PF THEN 2070
2060 PRINT "You have won the war.":X4=.67:G(7)=INT(1.7*L(3)):G=G+G(7):GOTO 2080
2070 PRINT "You have lost the war.":X4=G(8)/L
2080 IF X6<=9 THEN X6=0 ELSE X6=INT(X6/10)
2090 X6=-X6*(X6<=P)-P*(X6>P):P(4)=P(4)-X6:P=P-X6:G(8)=G(8)+INT(X4*L(3)):X6=40*V
2100 IF X6<=G THEN G(6)=-X6:GOTO 2130
2110 G(6)=-G:P(5)=-INT((X6-G)/7)-1
2120 PRINT "There isn't enough grain to pay the":PRINT "mercenaries!!"
2130 G=G+G(6):P(5)=-P(5)*(-P(5)<=P)+P*(-P(5)>P)
2140 P=P+P(5):L=L+L(3):U1=U1-2*P(4)-3*P(5)
2150 REM
2160 REM   PLAGUE, BIRTH, DEATH
2170 REM
2180 X1=FNX%(8)+1:IF X1>3 THEN 2240
2190 IF X1<>1 THEN 2230
2200 IF D>0 THEN 2240
2210 PRINT "The BLACK PLAGUE has struck the area.":D=13:X2=3
2220 P(6)=-INT(P/X2):P=P+P(6):GOTO 2240
2230 PRINT "A POX EPIDEMIC has broken out.":X2=X1+5:P(6)=-INT(P/X2):P=P+P(6)
2240 X1=FNX%(8)+4:X1=-X1*(P(5)=0)-4.5*(P(5)<>0)
2250 P(8)=INT(P/X1):P(7)=INT(.3-P/22):P=P+P(7)+P(8):D=D-1
2260 G(8)=INT(C*G(8)):G=G+G(8):X1=G(8)-4000
2270 G(9)=-G(9)*(X1<=0)+INT(.1*X1)*(X1>0):G(9)=G(9)-120:G=G+G(9)
2280 IF K%<0 THEN 2360 ELSE X1=-INT(L/2)
2290 X1=-X1*(K%<2)-2*X1*(K%=>2)
2300 IF -X1<=G THEN 2320
2310 PRINT "You have insufficient grain to pay":PRINT "the Royal Tax.":GOTO 2430
2320 G(10)=G(10)+X1:G=G+X1
2330 REM
2340 REM   UPDATE COUNTER AND CONTINUE
2350 REM
2360 U2=INT(U2*.85)+U1:GOTO 720
2370 DATA "Peasants at start","Starvations","King's levy","War casualties"
2380 DATA "Looting victims","Disease victims","Natural deaths","Births"
2390 DATA "Land at start","Bought/sold","Fruits of war"
2400 DATA "Grain at start","Used for food"
2410 DATA "Land deals","Seeding","Rat losses","Mercenary hire"
2420 DATA "Fruits of war","Crop yield","Castle expense","Royal tax"
2430 PRINT "Do you wish to play again? ";:GOSUB 210:IF V$="Y" OR V$="y" THEN 510 ELSE END
2440 RANDOMIZE(VAL(RIGHT$(TIME$,2))):RETURN
