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
set pointsize 5
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
set zero 1e-08
set lmargin -1
set bmargin -1
set rmargin -1
set tmargin -1
set locale "C"
seed = 1317
seed = rand(seed)
###########################################

#set key bmargin horizontal samplen 0
set key top left

set output "hobonavTime.eps"
#set terminal x11
set xlabel "FF"
set ylabel "BDD"
#set logscale y


#set logscale x
#set logscale y

unset key
set size square

#set boxwidth .05
set logscale x
set logscale y

set title "Total Time (s)"
plot [0.01:5000] [.01:5000] \
"all.dat.sed" using 8:20 pt 0 title "Time-Opt", \
x with line  notitle
#"all.dat.sed" using 27:39  pt 0 title "Time-Pess", \



set output "hobonavSteps.eps"
set title "Actions Applied"
plot [] [] \
"all.dat.sed" using 6:18  pt 0 title "Actions-Opt", \
x with line  notitle
#"all.dat.sed" using 25:37 pt 0 title "Actions-Pess", \


set output "hobonavPlans.eps"
set title "Plans Generated"
plot [] [] \
"all.dat.sed" using 5:17 pt 0  title "Plans-Opt",\
x with line  notitle
#"all.dat.sed" using 24:36 pt 0 title "Plans-Pess",\



set output "hobonavLearning.eps"
set title "# Interpretations After/Before "
plot [1e-20:1] [1e-20:1] \
"all.dat.sed" using ($9/$2):($21/$2) pt 0  title "LearningOpt", \
x with line  notitle
#"all.dat.sed" using ($28/$2):($40/$2) pt 0 title "Learning-Pess", \



#    EOF
