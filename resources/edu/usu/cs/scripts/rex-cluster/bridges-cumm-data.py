#!/usr/bin/python
import os.path
import sys


print sys.argv

#   $DEFAULT_HOME/resources/edu/usu/cs/scripts/rex-cluster/bridges-cumm-data.py $v $algorithm $j $sem
v=sys.argv[1]
algorithm=sys.argv[2]
p=sys.argv[3]
j=sys.argv[4]
sem=sys.argv[5]
levoff=sys.argv[6]

outfileName="bridges_" + v +"_"+algorithm + "_" + p +  "_"+ j + "_" + sem + "_" + levoff +".dat"

outfile = open("plot/dat/cummapr/" + outfileName, "w")

r=10
if j=="1.0":
    r=1

avapr = 0
outfile.write(str(avapr) + "\n")
for k in range(1,r):
    infileName = "bridges_" + v + "_" + algorithm + "_" + str(p) + "_" + j + "_" + str(k) + "_" + sem + "_"  + levoff + ".txt"
    infile = open("plot/dat/stats/" + infileName, "r")
    apr = float(infile.readlines()[0].split()[0])
    avapr += apr
outfile.write(str(avapr/r) + "\n")
outfile.close()
