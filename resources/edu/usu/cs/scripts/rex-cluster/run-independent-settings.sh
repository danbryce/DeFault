#!/bin/bash

for sem in strict flexible
	do
	for algorithm in "pode1" "pode2" "pode3" "jdd"
		do
		./run-dependent-settings.sh $algorithm $sem
	done
done