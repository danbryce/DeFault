#!/bin/bash

ulimit -t 1200 # 20 min
#ulimit -v 2097152 # 2 GB

graphplanner=/home/dbryce/workspace/graphplanner
javapath=/usr/java/jdk1.6.0_07/bin/java
searchtest="graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/bridges"
problemdir="$graphplanner/testfiles/incomplete/bridges"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"

numPfiles=10;
#algorithms="friskylength friskyriskfirst friskyMSriskfirst friskylengthfirst friskymslengthfirst uniformcost"
algorithms[0]="length"
algorithms[1]="pode1"
algorithms[2]="pode2"
algorithms[3]="pode3"
algorithms[4]="jdd"

extension=".pddl"

for (( p = 2; p <= 32; p*=2 ))
  do
  for j in 0.25 0.5 0.75 1.0
    do
    for v in v1 v2 v3
      do
      for (( k = 1; k <= numPfiles; k++ ))
	do
	problemFile=$problemdir"/bridges_problem"$extension
	domainFile=$domaindir"/bridges_"$v"_"$p"_"$j"_"$k$extension
	LINE=$domainFile
	out=""
	if [ $j == "1.0" -a $k != "1" ] 
	then
	 a=""
	else

	for ((i=1;i<=4;i++))
	  do
	  algorithm=${algorithms[i]}
	  outputFile=$outputdir"/bridges_"$v"_"$algorithm"_"$p"_"$j"_"$k".txt"
	  if [ -f $outputFile ]
	      then
		
	      time=`grep "Elapsed time" $outputFile | cut -f 2 -d ":" | cut -f 1 -d "m"`

	      if [ $time ] 
		  then
		  risks=`grep "Features" $outputFile | cut -f 2 -d ":"`
		  solvable=`grep "%Domains" $outputFile | cut -f 2 -d ":"`
		  total=`grep "#Plans" $outputFile | cut -f 2 -d ":"`
#	  echo $time
		if [ $solvable ] 
		then
		  out="$time $risks $solvable $total "
	    	else
		  out="$time ? ? ?"
		fi
		  else
		  risks=`grep "Features" $outputFile | cut -f 2 -d ":"`
		if [ $risks ]
		then
		  out="? "$risks" ? ?"
		else
		#echo "GOT IT"
		 out="? ? ? ?"
		fi
	      fi
	  else

	      out="? ? ? ?"
	  fi
#	  echo $out
	  LINE="$LINE $out"
	  out=""
	  
	done
	echo "$LINE"
	LINE=""
	fi
      done
    done
  done
done
exit 0
