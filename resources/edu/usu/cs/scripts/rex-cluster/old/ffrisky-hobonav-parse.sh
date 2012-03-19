#!/bin/bash

ulimit -t 1200 # 20 min
#ulimit -v 2097152 # 2 GB

graphplanner=/home/dbryce/workspace/graphplanner
javapath=$JAVA_HOME/bin/java
searchtest=`pwd`/"graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/hobonav"
problemdir="$graphplanner/testfiles/incomplete/hobonav"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"

scriptIndex=11500;

numPfiles=10;
#algorithms="friskylength friskyriskfirst friskyMSriskfirst friskylengthfirst friskymslengthfirst uniformcost"
algorithms="pode1 pode2 pode3 jdd"

extension=".pddl"

for (( gridSize = 2; gridSize <= 32; gridSize*=2 ))
do
#    for algorithm in $algorithms
  for (( instance = 1; instance <= numPfiles; instance++ ))
    do
    for items in 1 2 4
	do
	for density in 0.0 0.25 0.5 0.75 1.0 
	do
    #echo $algorithm
      domainFile=$domaindir"/hobonav_"$gridSize"_"$density"_"$items"_"$instance$extension
      if [ -f $domainFile ]
	  then
	  problemFile=$problemdir"/hobonav_problem_"$gridSize$extension
	  if [ -f $problemFile ]
	      then
	if [ $density == "1.0" -a $instance != "1" ] 
	then
	 a=""
	else

	LINE=$domainFile
	for algorithm in $algorithms
	  do
#	  algorithm=${algorithms[i]}
	#echo $algorithm
	      outputFile=$outputdir"/hobonav_"$gridSize"_"$instance"_"$density"_"$items"_"$algorithm".txt"
	#      echo $outputFile
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
LINE="$LINE $out"
	  out=""
	  
	done
	echo "$LINE"
	LINE=""
	  fi
      fi
	fi
	done 
#done
    done
  done
done

exit 0
