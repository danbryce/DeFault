#!/bin/bash

export javapath=/usr/bin/java
export DEFAULT_HOME=~/Documents/workspace/DeFault
export outputdir="out"


for sem in strict flexible
	do
	for algorithm in "pode1" "pode2" "pode3" "jdd"
		do
		for levoff  in 0 5 inf
			do
			./run-dependent-settings.sh $algorithm $sem $levoff
		done
	done
done