#!/usr/bin/python
import os.path
import sys
import math

#make table with rows as instances and columns as heuristic

v=sys.argv[1]
j=sys.argv[2]
sem=sys.argv[3]
levoff=sys.argv[4]

outfileName="bridges_" + v + "_" +  j + "_" + sem + "_" + levoff + ".tab"
outfile=open("plot/dat/" + outfileName, "w")


for p in [2, 4, 8, 16, 32]:
#    outfile.write(str(p) + " ")
    for algorithm in ["pode1", "pode2", "pode3", "jdd"]:
        infileName="bridges_" + v +"_"+algorithm + "_" + str(p) +  "_"+ j + "_" + sem + "_" + levoff +".dat"

        infile = open("plot/dat/apr/" + infileName, "r")
        outfile.write(str(math.log(float(infile.readlines()[0].split()[0]))) + " ")
        infile.close()
    outfile.write("\n")
outfile.close()
