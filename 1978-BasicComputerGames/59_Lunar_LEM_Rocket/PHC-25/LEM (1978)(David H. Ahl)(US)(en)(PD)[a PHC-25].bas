1 SCREEN 1,1,1:CLS
2 PRINT TAB(14);"LEM"
4 PRINT TAB(7);"CREATIVE COMPUTING":PRINT TAB(5);"MORRISTOWN, NEW JERSEY"
7 REM ROCKT2 IS AN INTERACTIVE GAME THAT SIMULATES A LUNAR
8 REM LANDING IS SIMILAR TO THAT OF THE APOLLO PROGRAM.
9 REM THERE IS ABSOLUTELY NO CHANCE INVOLVED
10 Z$="GO"
15 B1=1
20 M=17.95
25 F1=5.25
30 N=7.5
35 R0=926
40 V0=1.29
45 T=0
50 H0=60
55 R=R0+H0
60 A=-3.425
65 R1=0
70 A1=8.84361E-04
75 R3=0
80 A3=0
85 M1=7.45
90 M0=M1
95 B=750
100 T1=0
105 F=0
110 P=0
115 N=1
120 M2=0
125 S=0
130 C=0
135 IF Z$="YES" THEN 1150
140 PRINT
145 PRINT "LUNAR LANDING SIMULATION"
150 PRINT
155 PRINT "HAVE YOU FLOWN AN APOLLO/LEM MISSION BEFORE";
160 PRINT " (YES OR NO)";
165 INPUT Q$
170 IF Q$="YES" THEN 190
175 IF Q$="NO" THEN 205
180 PRINT "JUST ANSWER THE QUESTION, PLEASE, ";
185 GOTO 160
190 PRINT
195 PRINT "INPUT MEASUREMENT OPTION NUMBER";
200 GOTO 225
205 PRINT
210 PRINT "WHICH SYSTEM OF MEASUREMENT DO YOU PREFER?"
215 PRINT " 1=METRIC     0=ENGLISH"
220 PRINT "ENTER THE APPROPRIATE NUMBER";
225 INPUT K
230 PRINT
235 IF K=0 THEN 280
240 IF K=1 THEN 250
245 GOTO 220
250 Z=1852.8
255 M$="METERS"
260 G3=3.6
265 N$=" KILOMETERS"
270 G5=1000
275 GOTO 305
280 Z=6080
285 M$="FEET"
290 G3=.592
295 N$="N.MILES"
300 G5=Z
305 IF B1=3 THEN 670
310 IF Q$="YES" THEN 485
315 PRINT
320 PRINT "  YOU ARE ON A LUNAR LANDING MISSION.  AS THE PILOT OF"
325 PRINT "THE LUNAR EXCURSION MODULE, YOU WILL BE EXPECTED TO"
330 PRINT "GIVE CERTAIN COMMANDS TO THE MODULE NAVIGATION SYSTEM."
335 PRINT "THE ON-BOARD COMPUTER WILL GIVE A RUNNING ACCOUNT"
340 PRINT "OF INFORMATION NEEDED TO NAVIGATE THE SHIP."
345 PRINT
350 PRINT
355 PRINT "THE ATTITUDE ANGLE CALLED FOR IS DESCRIBED AS FOLLOWS."
360 PRINT "+ OR -180 DEGREES IS DIRECTLY AWAY FROM THE MOON"
365 PRINT "-90 DEGREES IS ON A TANGENT IN THE DIRECTION OF ORBIT"
370 PRINT "+90 DEGREES IS ON A TANGENT FROM THE DIRECTION OF ORBIT"
375 PRINT "0 (ZERO) DEGREES IS DIRECTLY TOWARD THE MOON"
380 PRINT
385 PRINT TAB(30);"-180|+180"
390 PRINT TAB(34);"^"
395 PRINT TAB(27);"-90 < -+- > +90"
400 PRINT TAB(34);"!"
405 PRINT TAB(34);"0"
410 PRINT TAB(21);"<<<< DIRECTION OF ORBIT <<<<"
415 PRINT
420 PRINT TAB(20);"------ SURFACE OF MOON ------"
425 PRINT
430 PRINT
435 PRINT "ALL ANGLES BETWEEN -180 AND +180 DEGREES ARE ACCEPTED."
440 PRINT
445 PRINT "1 FUEL UNIT = 1 SEC. AT MAX THRUST"
450 PRINT "ANY DISCREPANCIES ARE ACCOUNTED FOR IN THE USE OF FUEL"
455 PRINT "FOR AN ATTITUDE CHANGE."
460 PRINT "AVAILABLE ENGINE POWER: 0 (ZERO) AND ANY VALUE BETWEEN"
465 PRINT "10 AND 100 PERCENT."
470 PRINT
475 PRINT"NEGATIVE THRUST OR TIME IS PROHIBITED."
480 PRINT
485 PRINT
490 PRINT "INPUT: TIME INTERVAL IN SECONDS ------ (T)"
495 PRINT "       PERCENTAGE OF THRUST ---------- (P)"
500 PRINT "       ATTITUDE ANGLE IN DEGREES ----- (A)"
505 PRINT
510 IF Q$="YES" THEN 535
515 PRINT "FOR EXAMPLE:"
520 PRINT "T,P,A? 10,65,-60"
525 PRINT "TO ABORT THE MISSION AT ANY TIME, ENTER 0,0,0"
530 PRINT
535 PRINT "OUTPUT: TOTAL TIME IN ELAPSED SECONDS"
540 PRINT "        HEIGHT IN ";M$
545 PRINT "        DISTANCE FROM LANDING SITE IN ";M$
550 PRINT "        VERTICAL VELOCITY IN ";M$;"/SECOND"
555 PRINT "        HORIZONTAL VELOCITY IN ";M$;"/SECOND"
560 PRINT "        FUEL UNITS REMAINING"
565 PRINT
570 GOTO 670
575 PRINT
580 PRINT "T,P,A";
585 INPUT T1,F,P
590 F=F/100
595 IF T1<0 THEN 905
600 IF T1=0 THEN 1090
605 IF ABS(F-.05)>1 THEN 945
610 IF ABS(F-.05)<.05 THEN 945
615 IF ABS(P)>180 THEN 925
620 N=20
625 IF T1<400 THEN 635
630 N=T1/20
635 T1=T1/N
640 P=P*3.14159/180
645 S=SIN(P)
650 C=COS(P)
655 M2=M0*T1*F/B
660 R3=-.5*R0*((V0/R)^2)+R*A1*A1
665 A3=-2*R1*A1/R
670 FOR I=1 TO N
675 IF M1=0 THEN 715
680 M1=M1-M2
685 IF M1>0 THEN 725
690 F=F*(1+M1/M2)
695 M2=M1+M2
700 PRINT "YOU ARE OUT OF FUEL."
705 M1=0
710 GOTO 725
715 F=0
720 M2=0
725 M=M-.5*M2
730 R4=R3
735 R3=-.5*R0*((V0/R)^2)+R*A1*A1
740 R2=(3*R3-R4)/2+.00526*F1*F*C/M
745 A4=A3
750 A3=-2*R1*A1/R
755 A2=(3*A3-A4)/2+.0056*F1*F*S/(M*R)
760 X=R1*T1+.5*R2*T1*T1
765 R=R+X
770 H0=H0+X
775 R1=R1+R2*T1
780 A=A+A1*T1+.5*A2*T1*T1
785 A1=A1+A2*T1
790 M=M-.5*M2
795 T=T+T1
800 IF H0<3.287828E-04 THEN 810
805 NEXT I
810 H=H0*Z
815 H1=R1*Z
820 D=R0*A*Z
825 D1=R*A1*Z
830 T2=M1*B/M0
835 PRINT " ";T;TAB(10);H;TAB(23);D;
840 PRINT TAB(37);H1;TAB(49);D1;TAB(60);T2
845 IF H0<3.287828E-04 THEN 880
850 IF R0*A>164.474 THEN 1050
855 IF M1>0 THEN 580
860 T1=20
865 F=0
870 P=0
875 GOTO 620
880 IF R1<-8.21957E-04 THEN 1020
885 IF ABS(R*A1)>4.93174E-04 THEN 1020
890 IF H0<-3.287828E-04 THEN 1020
895 IF ABS(D)>10*Z THEN 1065
900 GOTO 995
905 PRINT
910 PRINT "THIS SPACECRAFT IS NOT ABLE TO VIOLATE THE SPACE-";
915 PRINT "TIME CONTINUUM."
920 GOTO 575
925 PRINT
930 PRINT "IF YOU WANT TO SPIN AROUND, GO OUTSIDE THE MODULE"
935 PRINT "FOR AN E.V.A."
940 GOTO 575
945 PRINT
950 PRINT "IMPOSSIBLE THRUST VALUE ";
955 IF F<0 THEN 985
960 IF F-.05<.05 THEN 975
965 PRINT "TOO LARGE"
970 GOTO 575
975 PRINT "TOO SMALL"
980 GOTO 575
985 PRINT "NEGATIVE"
990 GOTO 575
995 PRINT
1000 PRINT "TRANQUILITY BASE HERE -- THE EAGLE HAS LANDED."
1005 PRINT "CONGRATULATIONS -- THERE WAS NO SPACECRAFT DAMAGE."
1010 PRINT "YOU MAY NOW PROCEED WITH SURFACE EXPLORATION."
1015 GOTO 1100
1020 PRINT
1025 PRINT "CRASH !!!!!!!!!!!!!!!!"
1030 PRINT "YOUR IMPACT CREATED A CRATER";ABS(H);M$;" DEEP."
1035 X1=SQR(D1*D1+H1*H1)*G3
1040 PRINT "AT CONTACT YOU WERE TRAVELING";X1;N$;"/HR"
1045 GOTO 1100
1050 PRINT
1055 PRINT "YOU HAVE BEEN LOST IN SPACE WITH NO HOPE OF RECOVERY."
1060 GOTO 1100
1065 PRINT "YOU ARE DOWN SAFELY - "
1075 PRINT
1080 PRINT "BUT MISSED THE LANDING SITE BY";ABS(D/G5);N$;"."
1085 GOTO 1100
1090 PRINT
1095 PRINT "MISSION ABENDED"
1100 PRINT
1105 PRINT "DO YOU WANT TO TRY IT AGAIN (YES/NO)?"
1110 INPUT Z$
1115 IF Z$="YES" THEN 20
1120 IF Z$="NO" THEN 1130
1125 GOTO 1105
1130 PRINT
1135 PRINT "TOO BAD, THE SPACE PROGRAM HATES TO LOSE EXPERIENCED"
1140 PRINT "ASTRONAUTS."
1145 STOP
1150 PRINT
1155 PRINT "OK, DO YOU WANT THE COMPLETE INSTRUCTIONS OR THE INPUT -"
1160 PRINT "OUTPUT STATEMENTS?"
1165 PRINT "1=COMPLETE INSTRUCTIONS"
1170 PRINT "2=INPUT-OUTPUT STATEMENTS"
1175 PRINT "3=NEITHER"
1180 INPUT B1
1185 Q$="NO"
1190 IF B1=1 THEN 205
1195 Q$="YES"
1200 IF B1=2 THEN 190
1205 IF B1=3 THEN 190
1210 GOTO 1165
1215 END
