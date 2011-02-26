#!/usr/local/bin/gnuplot -persist
#
#    
#    	G N U P L O T
#    	Linux version 3.7
#    	patchlevel 1
#    	last modified Fri Oct 22 18:00:00 BST 1999
#    
#    	Copyright(C) 1986 - 1993, 1998, 1999
#    	Thomas Williams, Colin Kelley and many others
#    
#    	Type `help` to access the on-line reference manual
#    	The gnuplot FAQ is available from
#    	<http://www.ucc.ie/gnuplot/gnuplot-faq.html>
#    
#    	Send comments and requests for help to <info-gnuplot@dartmouth.edu>
#    	Send bugs, suggestions and mods to <bug-gnuplot@dartmouth.edu>
#    
#set terminal postscript eps color 28#30
set terminal postscript eps monochrome 28#30
set noclip points
set clip one
set noclip two
set bar 1.000000
set border 31 lt -1 lw 1.000
set xdata
set ydata
set zdata
set x2data
set y2data
set boxwidth
set dummy x,y
set format x "%g"
set format y "%g"
set format x2 "%g"
set format y2 "%g"
set format z "%g"
set angles radians
set nogrid
set key title ""
set key right top Right noreverse box linetype -2 linewidth 1.000 samplen 4 spacing 1 width 0
set nolabel
set noarrow
#set nolinestyle
set nologscale
set offsets 0, 0, 0, 0
set pointsize .5
set encoding default
set nopolar
set noparametric
set view 60, 30, 1, 1
set samples 100, 100
set isosamples 10, 10
set surface
set nocontour
set clabel '%8.3g'
set mapping cartesian
set nohidden3d
set cntrparam order 4
set cntrparam linear
set cntrparam levels auto 5
set cntrparam points 5
set size ratio 0 1,1
set origin 0,0
#set data style points
#set function style lines
set xzeroaxis lt -2 lw 1.000
set x2zeroaxis lt -2 lw 1.000
set yzeroaxis lt -2 lw 1.000
set y2zeroaxis lt -2 lw 1.000
set tics in
set ticslevel 0.5
set tics scale 1
set mxtics default
set mytics default
set mx2tics default
set my2tics default
set xtics border mirror norotate autofreq 
set ytics border mirror norotate autofreq 
set ztics border nomirror norotate autofreq 
set nox2tics
set noy2tics
#set title "" 0.000000,0.000000  ""
#set timestamp "" bottom norotate 0.000000,0.000000  ""
set rrange [ * : * ] noreverse nowriteback  # (currently [-0.00000:10.0000] )
set trange [ * : * ] noreverse nowriteback  # (currently [-5.00000:5.00000] )
set urange [ * : * ] noreverse nowriteback  # (currently [-5.00000:5.00000] )
set vrange [ * : * ] noreverse nowriteback  # (currently [-5.00000:5.00000] )
#set xlabel "" 0.000000,0.000000  ""
#set x2label "" 0.000000,0.000000  ""
set timefmt "%d/%m/%y\n%H:%M"
#set xrange [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
#set x2range [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
#set ylabel "" 0.000000,0.000000  ""
#set y2label "" 0.000000,0.000000  ""
set yrange [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
set y2range [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
#set zlabel "" 0.000000,0.000000  ""
set zrange [ * : * ] noreverse nowriteback  # (currently [-10.0000:10.0000] )
set zero 1e-11
set lmargin -1
set bmargin -1
set rmargin -1
set tmargin -1
set locale "C"
seed = 1317
seed = rand(seed)
###########################################

set key bmargin horizontal samplen 0
#set key outside top left

set output "../plot/timeAndQ.eps"
#set terminal x11
set xlabel "Questions Asked"
set ylabel "Total Time (s)"
#set logscale y


#set logscale x
#set logscale y

#unset key
#set size square

#set boxwidth .05
set logscale x
set logscale y

set title "Total Time (s) and Questions"
plot [] [] \
"../plot/sample.dat" using ($106+1e-1):($104+1e-10)  title "JDD All PFE", \
"../plot/sample.dat" using ($127+1e-1):($125+1e-10)  title "JDD Cube", \
"../plot/sample.dat" using ($148+1e-1):($146+1e-10)  title "JDD SEP", \
"../plot/sample.dat" using ($180+1e-1):($178+1e-10)  title "JDD TP", \
"../plot/sample.dat" using ($243+1e-1):($241+1e-10)  title "JDD NPP"


#"../plot/sample.dat" using 64:62  title "JDD All", \
#"../plot/sample.dat" using 85:83  title "JDD All Plan", \

#"../plot/sample.dat" using 12:10  title "Amir RG None", \
#"../plot/sample.dat" using 22:20  title "JDD RG None", \
#"../plot/sample.dat" using 33:31  title "Amir CL None", \
#"../plot/sample.dat" using 43:41  title "JDD CL None", \
#"../plot/sample.dat" using 54:52  title "Amir All", \
#"../plot/sample.dat" using 64:62  title "JDD All", \
#"../plot/sample.dat" using 75:73  title "Amir All Plan", \
#"../plot/sample.dat" using 85:83  title "JDD All Plan", \
#"../plot/sample.dat" using 96:94  title "Amir All PFE", \
#"../plot/sample.dat" using 106:104  title "JDD All PFE", \
#"../plot/sample.dat" using 117:115  title "Amir Cube", \
#"../plot/sample.dat" using 127:125  title "JDD Cube", \
#"../plot/sample.dat" using 138:136  title "Amir SEP", \
#"../plot/sample.dat" using 148:146  title "JDD SEP", \
#"../plot/sample.dat" using 149:147  title "Amir SERP", \
#"../plot/sample.dat" using 159:157  title "JDD SERP", \
#"../plot/sample.dat" using 170:168  title "Amir TP", \
#"../plot/sample.dat" using 180:178  title "JDD TP", \
#"../plot/sample.dat" using 191:189  title "Amir TRP", \
#"../plot/sample.dat" using 201:199  title "JDD TRP", \
#"../plot/sample.dat" using 212:210  title "Amir NPC", \
#"../plot/sample.dat" using 222:220  title "JDD NPC", \
#"../plot/sample.dat" using 233:229  title "Amir NPP", \
#"../plot/sample.dat" using 243:241  title "JDD NPP", \
#"../plot/sample.dat" using 254:252  title "Amir NPRP", \
#"../plot/sample.dat" using 264:262  title "JDD NPRP"

set output "../plot/actionsAndQ.eps"
set xlabel "Questions Asked"
set ylabel "Actions Taken"
set logscale y

set title "Actions and Questions"
plot [] [] \
"../plot/sample.dat" using 85:81 every 10  title "JDD All Plan", \
"../plot/sample.dat" using 106:102 every 10  title "JDD All PFE", \
"../plot/sample.dat" using 127:123 every 10  title "JDD Cube", \
"../plot/sample.dat" using 148:144 every 10  title "JDD SEP", \
"../plot/sample.dat" using 180:176 every 10  title "JDD TP", \
"../plot/sample.dat" using 243:239 every 10  title "JDD NPP"


set output "../plot/Q.eps"
set ylabel "Questions Asked"
set xlabel "Instance"
set logscale y

set title "Questions"
plot [] [] \
"../plot/sample.dat" using 64  every 10 title "JDD All", \
"../plot/sample.dat" using 85  every 10 title "JDD All Plan", \
"../plot/sample.dat" using 106 every 10 title "JDD All PFE", \
"../plot/sample.dat" using 127 every 10  title "JDD Cube", \
"../plot/sample.dat" using 148 every 10  title "JDD SEP", \
"../plot/sample.dat" using 180 every 10  title "JDD TP"


#    EOF
