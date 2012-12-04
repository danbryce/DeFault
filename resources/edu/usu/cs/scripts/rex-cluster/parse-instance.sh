#!/bin/bash


#DEFAULT_HOME=~/Documents/workspace/DeFault
searchtest=$DEFAULT_HOME/default.jar
export CLASSPATH=$searchtest:.:$DEFAULT_HOME/resources
javaopts="-Xmx2048M -Xms256M"

ar=("$@")
algorithm=${ar[0]}
sem=${ar[1]}
domainFile=${ar[2]}
problemFile=${ar[3]}
outputFile=${ar[4]}


#domain name
d=${ar[5]}
#problem name
p=${ar[6]}
#random instance
k=${ar[7]}
#incompleteness density
j=${ar[8]}
#shift 10
#version of domain
v=${ar[9]}
levoff=${ar[10]}



if [ -d "scripts" ]
	then
	a=1
else
	mkdir scripts
fi

script=$d"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem"_"$levoff".sh"
args=$domainFile" "$problemFile" out/output_bridges.txt "$algorithm" anytime "$sem" "$levoff 
#echo "cd `pwd`" > scripts/${script}.sh
#echo "$javapath $javaopts -cp `pwd` -jar $searchtest $args 2>&1 | tee $outputFile" >> scripts/${script}.sh
#qsub -q mpi_small -lnodes=1:ppn=2,mem=2gb,walltime=3600 -o `pwd`/scripts scripts/${script}.sh

#$javapath $javaopts "-cp "$DEFAULT_HOME  -jar $searchtest $args

if [ -f $outputFile ] ; then
 echo ""
else
echo $args 
 java $javaopts  -cp default.jar edu/usu/cs/Default $args 2>&1 | tee $outputFile
fi 
#echo $args" "$outputFile $script
