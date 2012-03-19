#!/bin/bash

graphplanner=~/Documents/workspace/DeFault
outputdir="out"

algorithm=$1
sem=$2

runBridges(){

name=bridges
domaindir="$graphplanner/testfiles/incomplete/"$name
problemdir="$graphplanner/testfiles/incomplete/"$name


for (( p = 2; p <= 32; p*=2 ))
	do
	for j in 0.25 0.5 0.75 1.0
    	do
    	for v in v1 v2 v3
    		do
    		for (( k = 1; k <= 10; k++ ))
	        	do
	        	if [ $j == "1.0" -a $k -gt 1 ]
		    		then
		    		a=1
		    	else
            		domainFile=$domaindir"/"$name"_"$v"_"$p"_"$j"_"$k".pddl"
	        		if [ -f $domainFile ]
		        		then
		        		problemFile=$problemdir"/"$name"_problem.pddl"
		        		if [ -f $problemFile ]
		        			then
		            		outputFile=$outputdir"/"$name"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".txt"
		            		if [ -f $outputFile ]
			        			then
			        			echo $domainFile" already created - skipping"
		            		else
								./run-instance.sh $algorithm $sem $domainFile $problemFile $outputFile $name $p $k $j $v
		            		fi
		        		fi
	            	fi
	        	fi
			done
		done
	done  
done

}	


runHobonav(){
name=hobonav
domaindir="$graphplanner/testfiles/incomplete/"$name
problemdir="$graphplanner/testfiles/incomplete/"$name

for (( p = 2; p <= 64; p*=2 ))
	do
	for j in 0.0 0.25 0.5 0.75 1.0
    	do
    	for v in 1 2 4
    		do
    		for (( k = 1; k <= 10; k++ ))
	        	do
	        	if [ $j == "1.0" -a $k -gt 1 ]
		    		then
		    		a=1
		    	else
            		domainFile=$domaindir"/"$name"_"$p"_"$j"_"$v"_"$k".pddl"
	        		if [ -f $domainFile ]
		        		then
		        		problemFile=$problemdir"/"$name"_problem.pddl"
		        		if [ -f $problemFile ]
		        			then
		            		outputFile=$outputdir"/"$name"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".txt"
		            		if [ -f $outputFile ]
			        			then
			        			echo $domainFile" already created - skipping"
		            		else
								./run-instance.sh $algorithm $sem $domainFile $problemFile $outputFile $name $p $k $j $v
		            		fi
		        		fi
	            	fi
	        	fi
			done
		done
	done  
done

}


runParcprinter(){
name=parcprinter
domaindir="$graphplanner/testfiles/incomplete/"$name
problemdir="$graphplanner/testfiles/incomplete/"$name

v=""

for p in 01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30
	do
	for j in 0.0 0.25 0.5 0.75 1.0
    	do
    	#    	for v in 1 2 4
    		#    		do
    		for (( k = 1; k <= 10; k++ ))
	        	do
	        	if [ $j == "1.0" -a $k -gt 1 ]
		    		then
		    		a=1
		    	else		    	
            		domainFile=$domaindir"/p"$p"_"$k"_"$j"-domain-incomplete.pddl"
	        		if [ -f $domainFile ]
		        		then
		        		problemFile=$problemdir"/p"$p"_"$k"_"$j"-problem-incomplete.pddl"
		        		if [ -f $problemFile ]
		        			then
		            		outputFile=$outputdir"/"$name"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".txt"
		            		if [ -f $outputFile ]
			        			then
			        			echo $domainFile" already created - skipping"
		            		else
								./run-instance.sh $algorithm $sem $domainFile $problemFile $outputFile $name $p $k $j $v
		            		fi
		        		fi
	            	fi
	        	fi
			done
		#		done
	done  
done

}

runGripper(){
name=gripper
domaindir="$graphplanner/testfiles/incomplete/"$name
problemdir="$graphplanner/testfiles/incomplete/"$name
v=""
j=""

for p in 2 4 6 8 10 12 20 
	do
   		for (( k = 1; k <= 10; k++ ))
        	do
       		domainFile=$domaindir"/gripper-domain.pddl"
       		if [ -f $domainFile ]
        		then
        		problemFile=$problemdir"/gripper-"$p".pddl"
        		if [ -f $problemFile ]
        			then
            		outputFile=$outputdir"/"$name"_"$v"_"$algorithm"_"$p"_"$j"_"$k"_"$sem".txt"
            		if [ -f $outputFile ]
	        			then
	        			echo $domainFile" already created - skipping"
            		else
						./run-instance.sh $algorithm $sem $domainFile $problemFile $outputFile $name $p $k $j $v
            		fi
        		fi
           	fi
		done
done

}


#runBridges $algorithm $sem $inst
runParcprinter $algorithm $sem $inst
#runHobonav $algorithm $sem $inst
#runGripper $algorithm $sem $inst
