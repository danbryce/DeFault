#!/bin/bash


graphplanner=/home/dbryce/workspace/graphplanner
javapath=$JAVA_HOME/bin/java
searchtest=`pwd`/"graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/blindnav"
problemdir="$graphplanner/testfiles/incomplete/blindnav"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"
numPfiles=10;
algorithms[0]="length"
algorithms[1]="pode1"
algorithms[2]="pode2"
algorithms[3]="pode3"
algorithms[4]="jdd"
extension=".pddl"

for (( gridSize = 2; gridSize <= 32; gridSize*=2 ))
do
  for (( instance = 1; instance <= numPfiles; instance++ ))
    do
    for ((i=0;i<=4;i++))
      do
      algorithm=${algorithms[i]}
    #echo $algorithm
      domainFile=$domaindir"/blindnav_"$gridSize"_"$instance$extension
      if [ -f $domainFile ]
	  then
	  problemFile=$problemdir"/blindnav_problem"$extension
	  if [ -f $problemFile ]
	      then
	      outputFile=$outputdir"/blindnav_"$gridSize"_"$instance"_"$algorithm".txt"
	      echo $outputFile
	      if [ -f $outputFile ]
		  then
		  echo $domainFile" already created - skipping"
	      else
	      script=blindnav_"$gridSize"_"$instance"_"$algorithm".sh"
		  args=$domainFile" "$problemFile" out/output_blindnav.txt "$algorithm" "$j" "$k
		  echo "cd `pwd`" > scripts/${script}.sh
		  echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/${script}.sh
		  qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=1200 -o `pwd`/scripts scripts/${script}.sh
  
	      fi
	  fi
      fi
    done
  done
done

exit 0
