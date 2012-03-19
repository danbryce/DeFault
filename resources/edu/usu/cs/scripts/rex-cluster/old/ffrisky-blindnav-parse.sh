#!/bin/bash

ulimit -t 1200 # 20 min
#ulimit -v 2097152 # 2 GB

graphplanner=/home/dbryce/workspace/graphplanner
javapath=/usr/java/jdk1.6.0_07/bin/java
searchtest="graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/blindnav"
problemdir="$graphplanner/testfiles/incomplete/blindnav"
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

for (( gridSize = 2; gridSize <= 32; gridSize*=2 ))
do
#    for algorithm in $algorithms
  for (( instance = 1; instance <= numPfiles; instance++ ))
    do
    problemFile=$problemdir"/blindnav_problem"$extension
    domainFile=$domaindir"/blindnav_"$gridSize"_"$instance$extension

    LINE=$domainFile
    for ((i=0;i<=4;i++))
      do
      algorithm=${algorithms[i]}
    outputFile=$outputdir"/blindnav_"$gridSize"_"$instance"_"$algorithm".txt"
    #echo $algorithm
	#  echo $outputFile
      if [ -f $outputFile ]
	  then

	  time=`grep "Elapsed time" $outputFile | cut -f 2 -d ":" | cut -f 1 -d "m"`

	  if [ $time ] 
	      then
	      length=`grep "Plan length" $outputFile | cut -f 2 -d ":" `
	      nodes=`grep "Nodes expanded" $outputFile | cut -f 2 -d ":" `
	      risks=`grep "Incomplete Features" $outputFile | cut -f 2 -d ":"`
	      solvable=`grep "Solvable" $outputFile | cut -f 2 -d ":"`
	      total=`grep "Total Domains" $outputFile | cut -f 2 -d ":"`
	      pr=`grep "Probability" $outputFile | cut -f 2 -d ":"`

#	  echo $time

	      out="$time $length $nodes $risks $solvable $total $pr"
	  else
	        out="? ? ? ? ? ? ?"
	  fi
      else
	  out="? ? ? ? ? ? ?"
      fi
#	  echo $out
	  LINE="$LINE $out"
	  out=""

    done
    echo $LINE
    LINE=""
  done
done

exit 0
