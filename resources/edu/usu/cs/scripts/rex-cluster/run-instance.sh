#!/bin/bash

searchtest=`pwd`/"graphplanner.jar"

algorithm=$1
sem=$2
domainFile=$3
problemFile=$4
outputFile=$5


#domain name
d=$6
#problem name
p=$7
#random instance
k=$8
#incompleteness density
j=$9
shift 10
#version of domain
v=$1


if [ -d "scripts" ]
	then
	a=1
else
	mkdir scripts
fi

script=$d"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".sh"
args=$domainFile" "$problemFile" out/output_bridges.txt "$algorithm" anytime "$sem
#echo "cd `pwd`" > scripts/${script}.sh
#echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/${script}.sh
#qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=3600 -o `pwd`/scripts scripts/${script}.sh
echo $args" "$outputFile $script
