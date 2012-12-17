#!/bin/bash

export javapath=/usr/bin/java
export DEFAULT_HOME=~/JAIR12_Experiments/default
export outputdir="out"


for sem in strict flexible
  do
  for algorithm in "pode1" "pode2" "pode3" "jdd"
    do
    for levoff  in 0 5 inf    
      do
      for planner in "anytime" "anytime-noff"
	do
      $DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/run-dependent-settings.sh $algorithm $sem $levoff $planner
      done
    done
  done
done