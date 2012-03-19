#!/bin/bash

ulimit -t 1200 # 20 min
#ulimit -v 2097152 # 2 GB

graphplanner=/home/dbryce/workspace/graphplanner
javapath=$JAVA_HOME/bin/java
searchtest="graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/pathways"
problemdir="$graphplanner/testfiles/classical/pathways"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"
scriptIndex=5500;

numPfiles=10;
algorithms[0]="length"
algorithms[1]="pode1"
algorithms[2]="pode2"
algorithms[3]="pode3"
algorithms[4]="jdd"

extension=".pddl"

for i in 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
do
  p="p"
  if [ $i -lt 10 ] ; then
      p=$p"0"
  fi
  p=$p$i

  for j in 0.0 0.01 0.25 0.5 0.75 1.0
    do
    for ((i=1;i<=4;i++))
      do
      algorithm=${algorithms[i]}
      for (( k = 1; k <= 10; k++ ))
	do
	domainFile=$domaindir"/domain_"$p"_"$j"_"$k$extension
	if [ -f $domainFile ]
	    then
	    problemFile=$problemdir"/"$p$extension
	    if [ -f $problemFile ]
		then
		outputFile=$outputdir"/pathways_"$p"_"$j"_"$algorithm"_"$k".txt"
		if [ -f $outputFile ]
		    then
		    echo $outputFile" already created - skipping"
		else
		    args=$domainFile" "$problemFile" out/output_pathways.txt "$algorithm" cover"
  echo "cd `pwd`" > scripts/s_${scriptIndex}.sh
		  echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/s_${scriptIndex}.sh
		  qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=1200 -o `pwd`/scripts scripts/s_${scriptIndex}.sh
		  scriptIndex=`expr $scriptIndex + 1`
		   # $javapath $javaopts -jar $searchtest $args 2>&1 | tee $outputFile
                     echo $args
		fi
	    fi
	fi
      done
    done
  done
done

exit 0
