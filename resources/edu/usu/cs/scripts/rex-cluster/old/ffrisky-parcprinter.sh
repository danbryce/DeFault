#!/bin/bash

graphplanner=/home/dbryce/workspace/graphplanner
javapath=$JAVA_HOME/bin/java
searchtest="graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/parcprinter"
problemdir="$graphplanner/testfiles/incomplete/parcprinter"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"
algorithms="length pode1 pode2 pode3 jdd"
problemNums="01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30"
problemIndices="1 2 3 4 5 6 7 8 9 10"
extension=".pddl"

for algorithm in $algorithms
do
  for problemNum in $problemNums
    do
    for problemIndex in $problemIndices
      do
      for sem in flexible strict
        do
  	    for prob in 0.25 0.5 0.75 1.0
	      do
	      if [ $prob == "1.0" -a $problemIndex != "1" ]
	then
	 echo Skip
        else
      domainFile=$domaindir"/p"$problemNum"_"$problemIndex"_"$prob"-domain-incomplete"$extension
      if [ -f $domainFile ]
	  then
	  problemFile=$problemdir"/p"$problemNum"_"$problemIndex"_"$prob"-problem-incomplete"$extension
	  if [ -f $problemFile ]
	      then
	      outputFile=$outputdir"/parcprinter_"$algorithm"_"$problemNum"_"$problemIndex"_"$prob".txt"
	      if [ -f $outputFile ]
		  then
		  echo $domainFile" already created - skipping"
	      else
		  args=$domainFile" "$problemFile" out/output_parcprinter.txt "$algorithm" cover"
  echo "cd `pwd`" > scripts/s_${scriptIndex}.sh
		  echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/s_${scriptIndex}.sh
		  qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=1200 -o `pwd`/scripts scripts/s_${scriptIndex}.sh
		  scriptIndex=`expr $scriptIndex + 1`
		 # $javapath $javaopt -jar $searchtest $args 2>&1 | tee $outputFile
	      fi
	  else
	      echo $problemFile" doesn't exist!!!"
	  fi
      else
	  echo $domainFile" doesn't exist!!!"
      fi
fi
    done
  done
done
done
exit 0

