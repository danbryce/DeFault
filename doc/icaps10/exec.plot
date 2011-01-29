#!/usr/bin/gnuplot -persist
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
set nolinestyle
set nologscale
set offsets 0, 0, 0, 0
set pointsize 4 #1
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
set data style points
set function style lines
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
set timestamp "" bottom norotate 0.000000,0.000000  ""
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

set xtics ("0.0" 1.3, "0.01" 2.3, "0.25" 3.3, "0.5" 4.3, "0.75" 5.3, "1.0" 6.3)
#set ytics ("1e1" 1e1, "1e2" 1e2, "1e3" 1e3, "1e4" 1e4, "1e5" 1e5, "1e6" 1e6)
set ytics ("0" 0.1, "1" 1e0, "10" 1e1, "100" 1e2, "1000" 1e3, "10000" 1e4, "1e5" 1e5, "1e6" 1e6)

#set ytics autofreq
#set key top left samplen 0
set key bmargin horizontal samplen 0


set output "myfile_time.eps"
set xlabel "Incompleteness"
set ylabel "Total Time (s)"
set logscale y

set title "Problem p01"

plot [1:7] [0.1:1200] \
 'myfile.dat' using ($1+0.1):($8/1000):($9/1000):($10/1000) with yerrorbars  pt 2 lt 1 title "FF",\
 'myfile.dat' using ($1+0.1):($8/1000) with lines  notitle,\
 'myfile.dat' using ($1+0.3):($20/1000):($21/1000):($22/1000) with yerrorbars  pt 4 lt 1 title "FFR-RL",\
 'myfile.dat' using ($1+0.3):($20/1000) with lines lt 1   notitle,\
 'myfile.dat' using ($1+0.5):($32/1000):($33/1000):($34/1000) with yerrorbars  pt 6 lt 1  title "FFR-LR",\
 'myfile.dat' using ($1+0.5):($32/1000) with lines  lt 1 notitle,\
 'myfile.dat' using 1:($2/1000):($3/1000):($4/1000) with yerrorbars  pt 1 lt 1 title "POND",\
 'myfile.dat' using 1:($2/1000) with lines lt 1 notitle

# 'myfile.dat' using ($1+0.2):14:15:16 with yerrorbars  pt 3 lt 1 title "FFR-SS-RL",\
# 'myfile.dat' using ($1+0.2):14 with lines lt 1   notitle,\
# 'myfile.dat' using ($1+0.4):26:27:28 with yerrorbars  pt 5 lt 1  title "FFR-SS-LR",\
# 'myfile.dat' using ($1+0.4):26 with lines  lt 1 notitle,\
# 'myfile.dat' using ($1+0.7):($38/1000):($39/1000):($40/1000) with yerrorbars  pt 7 lt 1 title "FFR-UCS",\
# 'myfile.dat' using ($1+0.7):($38/1000) with lines  lt 1 notitle,\



#POND FFRISKY(Length) FFRIKSY(Risk First, Single Support) FFRISKY(Risk First, Multiple Support) FFRIKSY(Length First, Single Support) FFRIKSY(Length First, Multiple Support)

#unset logscale y
#set ytics autofreq

set output "myfile_risks.eps"
set ylabel "Critical Risks"

plot [1:7] [0.1:1000]   \
 'myfile.dat' using ($1+0.1):11:12:13 with yerrorbars  pt 2 lt 1 title "FF",\
 'myfile.dat' using ($1+0.1):11 with lines  lt 1 notitle,\
 'myfile.dat' using ($1+0.3):23:24:25 with yerrorbars  pt 4 lt 1 title "FFR-RL",\
 'myfile.dat' using ($1+0.3):23 with lines  lt 1 notitle,\
 'myfile.dat' using ($1+0.5):35:36:37 with yerrorbars  pt 6 lt 1 title "FFR-LR",\
 'myfile.dat' using ($1+0.5):35 with lines  lt 1 notitle,\
 'myfile.dat' using 1:5:6:7 with yerrorbars  pt 1 lt 1 title "POND",\
 'myfile.dat' using 1:5 with lines  lt 1 notitle,\
 'myfile.dat' using 1:44 with linespoints pt 8  lt 1 title "MAX"

# 'myfile.dat' using 1:17:18:19 with yerrorbars  pt 3 lt 1 title "FFR-SS-RL",\
# 'myfile.dat' using 1:17 with lines  notitle,\
# 'myfile.dat' using 1:29:30:31 with yerrorbars  pt 5 lt 1 title "FFR-SS-LR",\
# 'myfile.dat' using 1:29 with lines  notitle,\
# 'myfile.dat' using ($1+0.7):41:42:43 with yerrorbars  pt 7 lt 1 title "FFR-UCS",\
# 'myfile.dat' using ($1+0.7):41 with lines  lt 1 notitle,\




#    EOF
