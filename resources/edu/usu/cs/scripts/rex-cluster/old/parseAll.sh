#!/bin/bash

domains="blindnav bridges hobonav parcprinter pathways"

for i in $domains; 
do
	./ffrisky-$i-parse.sh > plot/$i.dat
done
