#!/bin/bash


#DEFAULT_HOME=~/Documents/workspace/DeFault
searchtest=$DEFAULT_HOME/default.jar
export CLASSPATH=$searchtest:.:$DEFAULT_HOME/resources
javaopts="-Xmx2048M -Xms256M"

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
levoff=$2

if [ -d "scripts" ]
	then
	a=1
else
	mkdir scripts
fi

script=$d"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem"_"$levoff".sh"
args=$domainFile" "$problemFile" out/output_bridges.txt "$algorithm" anytime "$sem $levoff
#echo "cd `pwd`" > scripts/${script}.sh
#echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/${script}.sh
#qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=3600 -o `pwd`/scripts scripts/${script}.sh

#$javapath $javaopts "-cp "$DEFAULT_HOME  -jar $searchtest $args
echo $args 
$javapath $javaopts  -cp $DEFAULT_HOME/resources -jar $searchtest $args
#echo $args" "$outputFile $script
