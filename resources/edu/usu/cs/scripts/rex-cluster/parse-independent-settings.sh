#!/bin/bash

export javapath=/usr/bin/java
export DEFAULT_HOME=~/JAIR12_Experiments/default
export outputdir="out"


for sem in strict flexible
  do
  for algorithm in "pode1" "pode2" "pode3" "jdd"
    do
    for levoff  in 5 # 0 5 inf
      do
      for planner in "anytime" "anytime-noff"
	do
#	$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/parse-dependent-settings.sh $algorithm $sem $levoff $planner
	$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/parse-APFI.py $algorithm $sem $levoff $planner 
	$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/parse-APFI.py $algorithm $sem $levoff $planner bridges
	$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/parse-APFI.py $algorithm $sem $levoff $planner hobonav
	$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/parse-APFI.py $algorithm $sem $levoff $planner gripper
	$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/parse-APFI.py $algorithm $sem $levoff $planner parcprinter
      done
    done
  done
done
#echo "All Domains"
$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/make-APFI-table.py 
#echo "Bridges"
$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/make-APFI-table.py bridges
#echo "Hobonav"
$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/make-APFI-table.py hobonav
#echo "Gripper"
$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/make-APFI-table.py gripper
#echo "Parc Printer"
$DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/make-APFI-table.py parcprinter
