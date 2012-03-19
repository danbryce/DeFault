#!/bin/bash

graphplanner=/home/dbryce/workspace/graphplanner
javapath=$JAVA_HOME/bin/java
searchtest=`pwd`/"graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/hobonav"
problemdir="$graphplanner/testfiles/incomplete/hobonav"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"
numPfiles=10;
algorithms="length pode1 pode2 pode3 jdd"
extension=".pddl"

for (( gridSize = 2; gridSize <= 64; gridSize*=2 ))
  do
  for (( instance = 1; instance <= numPfiles; instance++ ))
    do
    for items in 1 2 4
 	  do
	  for density in 0.0 0.25 0.5 0.75 1.0 
	    do
        for sem in strict flexible 
          do
          for algorithm in $algorithms 
            do
            echo $algorithm
            domainFile=$domaindir"/hobonav_"$gridSize"_"$density"_"$items"_"$instance$extension
            if [ $density == "1.0" -a $instance -gt 1 ] 
	          then
		      echo Skip
            else   
              if [ -f $domainFile ]
	            then
	            problemFile=$problemdir"/hobonav_problem_"$gridSize$extension
	            if [ -f $problemFile ]
	              then
	              outputFile=$outputdir"/hobonav_"$gridSize"_"$instance"_"$density"_"$items"_"$algorithm"_"$sem".txt"
 	              echo $outputFile
	              if [ -f $outputFile ]
		            then
		            echo $domainFile" already created - skipping"
	              else
		            args=$domainFile" "$problemFile" out/output_hobonav.txt "$algorithm" anytime "$sem
		            #echo $args
		            script=hobonav_"$gridSize"_"$instance"_"$density"_"$items"_"$algorithm"_"$sem".sh"
		            echo "cd `pwd`" > scripts/${script}.sh
		            echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/${script}.sh
		            qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=3600 -o `pwd`/scripts scripts/${script}.sh
	              fi
	            fi
              fi
	        fi
	      done 
        done
      done
    done
  done
done
exit 0
