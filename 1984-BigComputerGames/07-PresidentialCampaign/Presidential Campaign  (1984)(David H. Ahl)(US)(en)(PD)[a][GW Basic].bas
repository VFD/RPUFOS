10 REM *****************************
20 REM * THE PRESIDENTIAL CAMPAIGN *
30 REM *    in Microsoft BASIC     *
40 REM *****************************
50 CLEAR 500:DIM ST(10,15)
60 M$(1)="February":M$(2)="March":M$(3)="April":M$(4)="May"
70 M$(5)="June":M$(6)="July":M$(7)="August":M$(8)="September":M$(9)="October"
80 A$="Your campaign fund has $###,###,###.##"
90 B$="$###,###,###.##       $###,###,###.##"
100 D$="Contributions = $$###,###.##            Expenditures = $$###,###.##"
110 FOR I=1 TO 6:ST(5,I)=50:ST(5,I)=50:NEXT I
120 FOR I=1 TO 13:ST(2,I)=50:ST(4,I)=50:NEXT I
130 FOR I=1 TO 7:ST(3,I)=50:ST(6,I)=50:NEXT I
140 F=0:A#=500000!
150 CLS:PRINT TAB(198);"*** THE PRESIDENTIAL CAMPAIGN ***"
160 PRINT:PRINT:INPUT "Please enter a number from 1 to 500";N
170 IF N<1 OR N>500 THEN 160
180 FOR I=1 TO N:GOSUB 4000:R=RND(1):NEXT I
190 FOR I=1 TO 2000:NEXT I
200 GOSUB 2900
210 CLS
220 PRINT "Conditions":PRINT:PRINT
230 PRINT "Choose the conditions that you wish to be true."
240 PRINT "In what year do you wish the election":INPUT " to take place";EY:EY=ABS(EY):IF EY=0 THEN 240
250 IF EY/4=INT(EY/4) THEN 270
260 PRINT "That is not an election year.":GOTO 240
270 LINE INPUT "Enter your name: ";N$
280 LINE INPUT "Enter your opponent's name: ";O$
290 INPUT "Do you want to be  1) the incumbent, or 2) the challenger";P1
300 IF P1<0 OR P1>2 THEN 290
310 PRINT:INPUT "Are you  1) a Democrat, or 2) a Republican";P2
320 IF P2<1 OR P2>2 THEN 310
330 GOSUB 4000:PR=INT(RND(1)*100)
340 IF PR<30 THEN PA=-8
350 IF PR=>30 AND PR<40 THEN PA=-5
360 IF PR=>40 AND PR<55 THEN PA=2
370 IF PR=>55 AND PR<65 THEN PA=6
380 IF PR=>65 THEN PA=10
390 IF P1=2 THEN PA=-PA
400 FOR I=1 TO 6:C(I)=PA:NEXT I
410 GOSUB 1380
420 C(1)=-8:C(2)=10:C(3)=-15:C(4)=12:C(5)=6:C(6)=-9
430 IF P2=1 THEN 450
440 FOR I=1 TO 6:C(I)=-C(I):NEXT I
450 GOSUB 1380
460 CLS:PRINT TAB(13);"I S S U E S":PRINT
470 PRINT "1) Unemployment  4) Social Adjustments"
480 PRINT "2) Inflation     5) Defense"
490 PRINT "3) Energy        6) Foreign Affairs"
500 PRINT:INPUT "Which is most important to your campaign";I1
510 IF I1<1 OR I1>6 OR INT(I1)<>I1 THEN 500
520 INPUT "Which is least important";I2
530 IF I2<1 OR I2>6 OR INT(I2)<>I2 THEN 520
540 FOR T=1 TO 9
550 CLS:PRINT "Date: ";M$(T):PRINT (10-T);"Months before election"
560 CM#=0:TS#=0
570 PRINT USING A$;A#:AB#=A#:MD=0:PRINT
580 INPUT "What state do you wish to visit";V$
590 PRINT "You have";(30-MD);"unscheduled days":PRINT " left this month."
600 INPUT "How many days do you wish to stay there";DV
610 IF MD+DV>30 THEN 600
620 MD=MD+DV
630 PRINT "How many of the";DV;"days will be":INPUT " for fundraising";DF
640 INPUT "How many days for campaigning";DC
650 IF DV<DC+DF THEN 630
660 RESTORE
670 READ ST$,EV,I,J
680 IF ST$<>"end" THEN 710
690 PRINT "You didn't spell the state correctly."
700 MD=MD-DV:GOTO 580
710 IF ST$<>V$ THEN 670
720 CC#=INT(EV*1600*(DF/30)):CE=DV*1100:A#=A#+CC#-CE:CM#=CM#+CC#:TS#=TS#+CE
730 ST(I,J)=ST(I,J)+INT((100-ST(I,J))*DC/30)
740 IF MD=>30 THEN 780
750 INPUT "Do you wish to visit another state";C$
760 UY$=LEFT$(C$,1):IF UY$="Y" OR UY$="y" THEN 580
770 IF UY$<>"N" AND UY$<>"n" THEN 580
780 CLS
790 INPUT "Spend campaign money in which state";SP$
800 PRINT USING A$;A#
810 PRINT:INPUT "How much do you wish to spend";AS
820 IF AS<=50000! THEN 840
830 PRINT "The most you can spend at a single time is $50,000.":GOTO 810
840 IF AS>50000! THEN 810
850 IF AS>A# AND AS>0 THEN 800
860 A#=A#-AS:TS#=TS#+AS
870 RESTORE
880 READ ST$,EV,I,J
890 IF ST$<>"end" THEN 920
900 PRINT "You didn't spell the state correctly."
910 A#=A#+AS:GOTO 790
920 IF ST$<>SP$ THEN 880
930 ST(I,J)=ST(I,J)+INT((100-ST(I,J))*AS/1000000!*(1/EV))
940 IF A#<=0 THEN 980
950 INPUT "Do you wish to spend money in another state";C$
960 YU$=LEFT$(C$,1):IF YU$="Y" OR YU$="y" THEN 790
970 IF YU$<>"N" AND YU$<>"n" THEN 950
980 CLS:PRINT "Monthly Report to the Election Committee:":PRINT
990 PRINT "Beginning of Month              End"
1000 PRINT USING B$;AB#;A#:PRINT
1010 PRINT USING D$;CM#,TS#
1020 GOSUB 4000:PL=INT((RND(1)/2)*100):IF PL=0 THEN 1020
1030 RESTORE:FOR Z=1 TO PL:READ ST$,EV,I,J:NEXT Z
1040 IF ST(I,J)>50 THEN 1080
1050 IF ST(I,J)<50 THEN 1100
1060 PRINT:PRINT "Polls show you are even with ";O$;" in ";ST$;".":GOTO 1120
1080 PRINT:PRINT "Polls show you are ahead of ";O$;" in ";ST$;"."
1090 PRINT " You have";STR$(ST(I,J));"% of the vote.":GOTO 1120
1100 PRINT:PRINT "Polls show ";O$;" ahead of you in ";ST$;"."
1110 PRINT " He has";STR$(100-ST(I,J));"% of the vote."
1120 PRINT:LINE INPUT "Press <ENTER> to begin next month";Z$
1130 CLS:GOSUB 1420
1140 FOR Y=1 TO 6:ST(1,Y)=ST(1,Y)-2:ST(5,Y)=ST(5,Y)-2:NEXT Y
1150 FOR Y=1 TO 13:ST(2,Y)=ST(2,Y)-2:ST(4,Y)=ST(4,Y)-2:NEXT Y
1160 FOR Y=1 TO 7:ST(3,Y)=ST(3,Y)-2:ST(6,Y)=ST(6,Y)-2:NEXT Y
1170 LINE INPUT "Press <ENTER> ";Z$
1180 NEXT T
1190 CLS:PRINT TAB(9);"Election Night Results"
1200 PRINT TAB(13);"Electoral Votes":PRINT:PRINT TAB(25);"Your";TAB(31);"Opponent";
1210 PRINT "State";TAB(15);"You";TAB(20);"Opp.";:PRINT
1220 PRINT TAB(25);"Total";TAB(31);"Total"
1230 RESTORE
1240 FOR K=1 TO 51
1250 READ ST$,EV,I,J
1260 IF ST(I,J)>50 THEN 1280
1270 OT=OT+EV:X=20:GOTO 1290
1280 YT=YT+EV:X=15
1290 PRINT ST$;TAB(X);EV;TAB(25);YT;TAB(31);OT
1300 FOR TM=1 TO 750:NEXT TM
1310 NEXT
1320 IF YT>OT THEN 1340
1330 W$=O$:L$=N$:WT=OT:WWW=YT:GOTO 1350
1340 W$=N$:L$=O$:WT=YT:WWW=OT
1350 PRINT:PRINT W$;" is the winner of the";EY:PRINT "presidential election."
1360 PRINT W$;" has";WT;"electoral votes,";WT-WWW;"more":PRINT "than his opponent, ";L$;"."
1370 END
1380 FOR I=1 TO 6:ST(1,I)=ST(1,I)+C(1):ST(5,I)=ST(5,I)+C(5):NEXT I
1390 FOR I=1 TO 13:ST(2,I)=ST(2,I)+C(2):ST(4,I)=ST(4,I)+C(4):NEXT I
1400 FOR I=1 TO 7:ST(3,I)=ST(3,I)+C(3):ST(6,I)=ST(6,I)+C(6):NEXT I
1410 RETURN
1420 GOSUB 4000:PE=INT(RND(1)*10):IF PE>8 THEN 1420
1430 IF PE>1 THEN 1530
1440 PRINT "The U.S. is the target of":PRINT "demonstrations in several Middle East"
1450 PRINT "countries.  Several European countries":PRINT "have also been critical of":PRINT "our foreign policy.":C=0
1460 IF P1=1 THEN C=C-1
1470 IF P1=2 THEN C=C+1
1480 IF I1=6 THEN C=C+1
1490 IF I2=2 THEN C=C-1
1500 FOR Y=1 TO 6:C(Y)=C:NEXT Y
1510 GOSUB 1380
1520 GOTO 2370
1530 IF PE>2 THEN 1670
1540 IN=1:GOSUB 4000:IF INT(RND(1)*10)>5 THEN IN=2
1550 PRINT "The rate of inflation has ";
1560 IF IN=1 THEN IN$="dropped.":GOTO 1580
1570 IN$="risen."
1580 PRINT IN$:C=0
1590 IF P1=1 THEN 1630
1600 IF I1=1 THEN C=C+1
1610 IF I2=1 THEN C=C+1
1620 IF IN=1 THEN C=C+1
1630 IF IN=1 THEN C=C+1
1640 IF IN=2 THEN C=C-1
1650 FOR Y=1 TO 6:C(Y)=6:NEXT Y
1660 GOTO 2370
1670 IF PE>3 THEN 1760
1680 PRINT "There is a shortage of all petroleum":PRINT "products, especially gasoline.  The"
1690 PRINT "reasons for the shortage are unclear":PRINT "at this time.":C=1
1700 IF I1=3 THEN C=C+1
1710 IF I2=3 THEN C=C-1
1720 IF P1=1 THEN C=-C
1730 FOR Y=1 TO 6:C(Y)=C:NEXT Y
1740 GOSUB 1380
1750 GOTO 2370
1760 IF PE>4 THEN 1850
1770 GOSUB 4000:PB=INT(RND(1)*10000)+3000
1780 PRINT "A political boss promises to":PRINT "contribute";PB;"dollars to your":PRINT "campaign if you will appoint some of"
1790 PRINT "his friends to powerful positions if":PRINT "you win.  This contribution is not legal."
1800 INPUT "Will you accept his offer";C$
1810 YU$=LEFT$(C$,1):IF YU$="N" OR YU$="n" THEN 2370
1820 IF YU$<>"Y" AND YU$<>"y" THEN 1800
1830 F=F+1:A#=A#+PB
1840 GOTO 2370
1850 IF PE>5 THEN 1960
1860 PRINT "Allegations have been made that you":PRINT "have accepted illegal campaign funds.":PRINT "You are presently under investigation."
1870 IF F=0 THEN 1950
1880 IF F>5 THEN 1900
1890 PRINT "You have been found guilty and you lose":PRINT STR$(INT(100/(G-F)));"% of your support in each state.":GOTO 1910
1900 PRINT "You have been found guilty and thrown":PRINT "into the federal penitentiary at":PRINT "Leavenworth, Kansas for twenty years!":END
1910 FOR Y=1 TO 6:ST(1,Y)=INT((1/(G-F))*ST(1,Y)):ST(5,Y)=INT((1/(G-F))*ST(5,Y)):NEXT Y
1920 FOR Y=1 TO 13:ST(2,Y)=INT((1/(G-F))*ST(5,Y)):ST(4,Y)=INT((1/(G-F))*ST(4,Y)):NEXT Y
1930 FOR Y=1 TO 7:ST(3,Y)=INT((1/(G-F))*ST(3,Y)):ST(6,Y)=INT((1/(G-F))*ST(6,Y)):NEXT Y
1940 GOTO 2370
1950 PRINT "You have been found innocent.":GOTO 2370
1960 IF PE>6 THEN 2190
1970 PRINT "You and ";O$;" agree to a televised debate."
1980 IF I1>1 THEN 2000
1990 FOR Y=1 TO 12
1995 ST(2,Y)=ST(2,Y)+INT(.07*(100-ST(2,Y)))
1997 NEXT Y
1998 REM  ***  THIS PART OF PROGRAM PATCHED UP OCTOBER 1988  ***
2000 IF I1<>5 THEN 2020
2010 FOR Y=1 TO 13:ST(4,Y)=ST(4,Y)+INT(.06*(100-ST(4,Y))):NEXT Y
2020 IF I2>1 THEN 2040
2030 FOR Y=1 TO 12:ST(2,Y)=ST(2,Y)-INT(.05*ST(2,Y)):NEXT Y
2040 IF I2<>5 THEN 2060
2050 FOR Y=1 TO 13:ST(4,Y)=ST(4,Y)-INT(.02*ST(2,Y)):NEXT Y
2060 GOSUB 4000:DB=INT(RND(1)/3*10):IF DB=0 THEN 2060
2070 IF DB=2 THEN 2160
2080 IF DB=1 THEN 2120
2090 FOR Y=1 TO 6:ST(1,Y)=ST(1,Y)+INT(.02*(100-ST(1,Y))):ST(5,Y)=ST(5,Y)+INT(.02*(100-ST(5,Y))):NEXT Y
2100 FOR Y=1 TO 7:ST(3,Y)=ST(3,Y)+INT(.01*(100-ST(3,Y))):ST(6,Y)=ST(6,Y)+INT(.01*(100-ST(6,Y))):NEXT Y
2110 GOTO 2150
2120 FOR Y=1 TO 6:ST(1,Y)=ST(1,Y)-INT(.02*ST(1,Y)):ST(5,Y)=ST(5,Y)-INT(.02*ST(5,Y)):NEXT Y
2130 FOR Y=1 TO 13:ST(2,Y)=ST(2,Y)-INT(.01*ST(2,Y)):ST(4,Y)=ST(4,Y)-INT(.01*ST(4,Y)):NEXT Y
2140 FOR Y=1 TO 7:ST(3,Y)=ST(3,Y)-INT(.01*ST(3,Y)):ST(6,Y)=ST(6,Y)-INT(.01*ST(6,Y)):NEXT Y
2150 IF DB=1 THEN PRINT "You lost the debate."
2160 IF DB=2 THEN PRINT "The debate was a draw."
2170 IF DB=3 THEN PRINT "You won the debate."
2180 GOTO 2370
2190 IF PE>7 THEN 2290
2200 PRINT "The president of a large union promises":PRINT "the support of the union's members if"
2210 PRINT "you make some pro-union campaign speeches."
2220 INPUT "Will you accept his help";C$
2230 YU$=LEFT$(C$,1):IF YU$="Y" OR YU$="y" THEN 2250
2240 IF YU$<>"N" AND YU$<>"n" THEN 2220
2250 C(1)=0:C(2)=2:C(3)=-2:C(4)=-1:C(5)=1:C(6)=-1:GOSUB 1380
2260 GOTO 2370
2270 C(1)=0:C(2)=-2:C(3)=3:C(4)=1:C(5)=0:C(6)=0:GOSUB 1380
2280 GOTO 2370
2290 PRINT "Farmers and ranchers want you to":PRINT "campaign that they should receive":PRINT "higher prices for their products."
2300 PRINT "Keep in mind that consumers will not like this.":C=0
2310 INPUT "Will you support the farmers and ranchers";C$
2320 YU$=LEFT$(C$,1):IF YU$="Y" OR YU$="y" THEN 2340
2330 IF YU$<>"N" AND YU$<>"n" THEN 2310
2340 C(1)=-1:C(2)=-1:C(3)=3:C(4)=2:C(5)=-1:C(6)=2:GOTO 2360
2350 C(1)=2:C(2)=3:C(4)=-2:C(5)=1:C(6)=-2
2360 GOSUB 1380
2370 RETURN
2380 DATA Alabama,9,4,9
2390 DATA Alaska,3,5,4
2400 DATA Arizona,10,6,4
2410 DATA Arkansas,6,4,12
2420 DATA California,55,5,6
2430 DATA Colorado,9,6,7
2440 DATA Conneticut,7,1,5
2450 DATA Delaware,3,2,3
2460 DATA D.C.,3,2,12
2470 DATA Florida,27,4,7
2480 DATA Georgia,15,4,8
2490 DATA Hawaii,4,5,5
2500 DATA Idaho,4,5,1
2510 DATA Illinois,21,2,9
2520 DATA Indiana,11,2,8
2530 DATA Iowa,7,3,2
2540 DATA Kansas,6,3,5
2550 DATA Kentucky,8,4,3
2560 DATA Louisiana,9,4,11
2570 DATA Maine,4,1,1
2580 DATA Maryland,10,2,5
2590 DATA Massachusetts,12,1,5
2600 DATA Michigan,17,2,7
2610 DATA Minnesota,10,2,11
2620 DATA Mississippi,6,4,10
2630 DATA Missouri,11,4,13
2640 DATA Montana,3,3,6
2650 DATA Nebraska,4,3,4
2660 DATA Nevada,5,6,5
2670 DATA New Hampshire,4,1,2
2680 DATA New Jersey,15,2,4
2690 DATA New Mexico,5,6,3
2700 DATA New York,31,2,1
2710 DATA North Carolina,15,4,5
2720 DATA North Dakota,3,3,1
2730 DATA Ohio,20,2,6
2740 DATA Oklahoma,7,6,2
2750 DATA Oregon,7,5,3
2760 DATA Pennsylvania,21,2,2
2770 DATA Rhode Island,4,1,6
2780 DATA South Carolina,8,4,6
2790 DATA South Dakota,3,3,3
2800 DATA Tennessee,11,4,4
2810 DATA Texas,34,6,1
2820 DATA Utah,5,6,6
2830 DATA Vermont,3,1,3
2840 DATA Virginia,13,4,2
2850 DATA Washington,11,5,2
2860 DATA West Virginia,5,4,1
2870 DATA Wisconsin,10,2,10
2880 DATA Wyoming,3,3,7
2890 DATA end,0,0,0
2900 CLS:PRINT TAB(11);"S C E N A R I O":PRINT
2910 PRINT "     You have decided to run for president and have won your"
2920 PRINT "party's nomination.  The campaign begins nine months before"
2930 PRINT "the election.  You have the options of deciding which states"
2940 PRINT "to visit each month, how many days you wish to spend in the"
2950 PRINT "states you visit, and whether the visit is for campaigning"
2960 PRINT "(which wins popular votes) or fundraising (which wins no"
2970 PRINT "popular votes but brings in contributions to meet expenses"
2980 PRINT "and finance campaign activities in other states).  The money"
2990 PRINT "that is in the campaign treasury can be spent as you wish in"
3000 PRINT "any state."
3010 PRINT "     At the beginning of the campaign, you are allowed to make"
3020 PRINT "some political decisions.  These will reflect the initial att-"
3030 PRINT "itudes of the voters with respect to you and your opponent."
3040 PRINT "Throughout the campaign, you will have to make additional pol-"
3050 PRINT "itical decisions that will influence voter opinion.  As with"
3060 PRINT "all political decisions, whatever you decide will not please"
3070 PRINT "everyone.  In addition, some of your decisions will be compared"
3080 PRINT "to those made earlier to determine your sincerity.  Therefore,"
3090 PRINT "try to weigh the condtions of each decision carefully.  In some"
3100 PRINT "cases, changing position during a campaign can be the best str-"
3110 PRINT "ategy, while at other times it may be disastrous."
3120 LINE INPUT "     Press <ENTER> to continue";Z$:CLS
3130 PRINT "     At the end of each month, you will receive a report of the"
3140 PRINT "finances of the treasury.  You will be shown the balance at the"
3150 PRINT "beginning and at the end of the month, total contributions and"
3160 PRINT "total expenditures during the month.  Campaigning is expensive"
3170 PRINT "not only because of advertising in states but also for your"
3180 PRINT "actual visits.  It is helpful to spend some time fundraising.":PRINT
3200 PRINT "     There are a few campaign laws to consider:"
3210 PRINT "  1) You can not put the campaign treasury into debt."
3220 PRINT "  2) A $50,000 maximum is placed on each transaction."
3230 PRINT "  3) Unreported campaign contributions are illegal.":PRINT "     You may be tempted to accept some, but you may"
3240 PRINT "     get caught.  It may cost you the election or":PRINT "     merely a few votes."
3250 PRINT "  4) You may campai n as many days per month as you":PRINT "     wish and visit as many states as you wish."
3260 PRINT "     Each month is considered to have thirty days."
3270 PRINT:LINE INPUT "Press <ENTER> to continue";Z$:CLS
3280 PRINT "     At the end of each month, you will be shown your status"
3290 PRINT "in one state as of the end of the month.  This is the only"
3300 PRINT "indication that you will receive on your progress."
3310 PRINT "     At the end of the campaign, the election is held and you"
3320 PRINT "will be shown the number of electoral college votes awarded by"
3330 PRINT "each state, to whom they were awarded, and the totals of votes"
3340 PRINT "that you and your opponent received."
3350 PRINT "     Be sure to spell each state correctly.  Do not use a"
3360 PRINT "dollar sign when entering amounts of money and do not use"
3370 PRINT "commas between number digits.":PRINT:LINE INPUT "Press <ENTER> to begin the campaign";Z$:CLS
3380 RETURN
4000 RANDOMIZE(VAL(RIGHT$(TIME$,2))):RETURN
