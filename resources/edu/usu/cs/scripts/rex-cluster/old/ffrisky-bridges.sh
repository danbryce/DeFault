#!/bin/bash

graphplanner=/home/dbryce/workspace/graphplanner
javapath=$JAVA_HOME/bin/java
searchtest=`pwd`/"graphplanner.jar"
domaindir="$graphplanner/testfiles/incomplete/bridges"
problemdir="$graphplanner/testfiles/incomplete/bridges"
outputdir="out"
javaopts="-Xmx2048M -Xms256M"
numPfiles=10;
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
      for sem in strict flexible
        do
	    for ((i=1;i<=4;i++))
	      do
	      algorithm=${algorithms[i]}
	      for (( k = 1; k <= 10; k++ ))
	        do
	        if [ $j == "1.0" -a $k -gt 1 ]
		      then
		      echo skip
		    else
              domainFile=$domaindir"/bridges_"$v"_"$p"_"$j"_"$k$extension
	          if [ -f $domainFile ]
		        then
		        problemFile=$problemdir"/bridges_problem"$extension
		        if [ -f $problemFile ]
		          then
		            outputFile=$outputdir"/bridges_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".txt"
		            if [ -f $outputFile ]
			          then
			          echo $domainFile" already created - skipping"
		            else
                      script=bridges_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".sh"
			          args=$domainFile" "$problemFile" out/output_bridges.txt "$algorithm" anytime "$sem
		              echo "cd `pwd`" > scripts/${script}.sh
		              echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/${script}.sh
		              qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=3600 -o `pwd`/scripts scripts/${script}.sh
			          echo $args" "$outputFilels
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
