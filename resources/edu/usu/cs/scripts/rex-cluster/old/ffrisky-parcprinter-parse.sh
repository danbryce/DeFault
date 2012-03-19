#!/bin/bash

ulimit -t 1200 # 20 min
#ulimit -v 2097152 # 2 GB

graphplanner=/home/dbryce/workspace/graphplanner
javapath=/usr/java/jdk1.6.0_07/bin/java
searchtest="graphplanner-ncr.jar"
domaindir="$graphplanner/testfiles/incomplete/parcprinter"
problemdir="$graphplanner/testfiles/incomplete/parcprinter"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"

numPfiles=10;
#algorithms="friskylength friskyriskfirst friskyMSriskfirst friskylengthfirst friskymslengthfirst uniformcost"

algorithms="pode1 pode2 pode3 jdd"
extension=".pddl"
problemNums="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30"
for problemNum in $problemNums
  do
 for prob in 0.25 0.5 0.75 1.0
	do
#    for algorithm in $algorithms
  for (( instance = 1; instance <= numPfiles; instance++ ))
    do
    #problemFile=$problemdir"/blindnav_problem"$extension
    #domainFile=$domaindir"/blindnav_"$gridSize"_"$instance$extension
    domainFile=$domaindir"/p"$problemNum"_"$instance"_"$prob"-domain-incomplete"$extension
    problemFile=$problemdir"/p"$problemNum"_"$instance"_"$prob"-problem-incomplete"$extension
    LINE=$domainFile
	if [ $prob == "1.0" -a $instance != "1" ] 
	then
	 a=""
	else

    for algorithm in $algorithms
      do
      outputFile=$outputdir"/parcprinter_"$algorithm"_"$problemNum"_"$instance"_"$prob".txt"
      #outputFile=$outputdir"/blindnav_"$gridSize"_"$instance"_"$algorithm".txt"
    #echo $algorithm
	#  echo $outputFile
      if [ -f $outputFile ]
	  then
	  time=`grep "Elapsed time" $outputFile | cut -f 2 -d ":" | cut -f 1 -d "m"`

              if [ $time ]
                  then
                  risks=`grep "Features" $outputFile | cut -f 2 -d ":"`
                  solvable=`grep "%Domains" $outputFile | cut -f 2 -d ":"`
                  total=`grep "#Plans" $outputFile | cut -f 2 -d ":"`
#         echo $time
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

exit 0
