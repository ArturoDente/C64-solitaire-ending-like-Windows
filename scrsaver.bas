10 k1=49152:sysk1+138:poke53281,1:gosub2000
20 dim mz(52):fort=1to52:mz(t)=t:next:rem created card deck
25 print"press a key"
28 geta$:ifa$="" then 28
29 print"{clear}"
30 x=34:y=0:ym=2:d=1:dx=rnd(.)/2:jp=0
40 for t=52 to 1 step -1
50 y=y+0.5*d:x=x-dx
60 if y>=16 and (x<=12 or jp>=6) then goto 80
65 if y>=16  then d=-d
68 if d=-1 and y<=ym then d=-d:ym=ym+2:jp=jp+1
70 gosub 1000
75 goto 50
80 x=34:y=0:ym=2:d=1:dx=rnd(.)/2:jp=0:next
999 end
1000 rem print card from x,y and t as index of mz
1010 sm=int(mz(t-1)/13)
1020 cd=mz(t)-sm*13
1022 if y>16 then y=16
1023 if y<0 then y=0
1024 if x<0then x=0
1025 card x,y,cd,sm
1030 return
2000 rem intro
2010 print"{clear}'windows' solitaire ending"
2020 print"{down}a little demo using carlo and lorenzo's barazzetta card lib"
2030 print"{down}by arturo dente{down}"
2035 print"****************************************";
2038 print"* notice:warp mode strongly recommended*";
2039 print"****************************************"
2040 return