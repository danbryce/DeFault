#!/bin/bash

ulimit -t 1200 # 20 min
#ulimit -v 2097152 # 2 GB

graphplanner=/home/dbryce/workspace/graphplanner
javapath=/usr/java/jdk1.6.0_07/bin/java
searchtest="graphplanner-ncr.jar"
domaindir="$graphplanner/testfiles/incomplete/pathways"
problemdir="$graphplanner/testfiles/classical/pathways"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"

numPfiles=10;
#algorithms="friskylength friskyriskfirst friskyMSriskfirst friskylengthfirst friskymslengthfirst uniformcost"

algorithms="pode1 pode2 pode3 jdd"
extension=".pddl"
problemNums="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
  p="p"
  if [ $i -lt 10 ] ; then
      p=$p"0"
  fi
  p=$p$i

  for j in  0.25 0.5 0.75 1.0
    do
      for (( k = 1; k <= 10; k++ ))
	do
	if [ $j == "1.0" -a $k != "1" ] 
	then
	 a=""
	else
	domainFile=$domaindir"/domain_"$p"_"$j"_"$k$extension
	#echo $domainFile
	if [ -f $domainFile ]
	    then
	    problemFile=$problemdir"/"$p$extension
	#echo $problemFile
	    if [ -f $problemFile ]
		then
    LINE=$domainFile

    for algorithm in $algorithms
	do
#      algorithm=${algorithms[i]}#
#echo $algorithm
		outputFile=$outputdir"/pathways_"$p"_"$j"_"$algorithm"_"$k".txt"
#echo $outputFile	
   if [ -f $outputFile ]
	  then
#	  echo $outputFile
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
fi
fi
  done
done
done

exit 0
