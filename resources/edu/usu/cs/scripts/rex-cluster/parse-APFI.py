#!/usr/bin/python
import os.path
import sys
import glob
import math

#print sys.argv

algorithm=sys.argv[1]
sem=sys.argv[2]
levoff=sys.argv[3]
planner=sys.argv[4]

if len(sys.argv) > 5:
    domain=sys.argv[5]
else:
    domain=""

globstr=""

if planner == "anytime":
    globstr = "plot/dat/stats/"+ domain +"*"+ algorithm + "*"+ sem + "*" + levoff + ".txt"
else:
    globstr = "plot/dat/stats/" + domain + "*" + algorithm + "*"+ sem + "*" + levoff + "_*.txt"


files = glob.glob(globstr)
#print files
#print globstr
avgapfi = 0
varapfi = 0
avgmfi = 0
varmfi = 0
numfiles=0
for fileName in files:
#    print fileName
    file = open(fileName, "r")
    lines = file.readlines()
#    print lines
    numfiles += 1

    if len(lines) == 0:
        apfi = 1
        mfi = 1
    else:
        line=lines[0].split()
        apfi=float(line[0])
        mfi=float(line[6])
    avgapfi += apfi
    avgmfi += mfi
#    print avgapfi
    file.close()   
if numfiles > 0:
    avgapfi /= numfiles
    avgmfi /= numfiles

for fileName in files:
    file = open(fileName, "r")
    lines = file.readlines()
    if len(lines) == 0:
        apfi = 1
        mfi = 1
    else:
        line=lines[0].split()
        apfi=float(line[0])
        mfi=float(line[6])
    varapfi += pow(apfi-avgapfi, 2)
    varmfi += pow(mfi-avgmfi,2)
    file.close()

if numfiles > 0:
    varapfi /= numfiles
    varmfi /= numfiles
devapfi=math.sqrt(varapfi)
devmfi=math.sqrt(varmfi)

#print avgapfi    
out = open("plot/dat/apr/" + domain + "_" + algorithm + "_"+ sem + "_" + levoff + "_" + planner + ".apfi", "w")
out.write(str(avgapfi) + " " + str(avgmfi) + " " + str(varapfi) + " " + str(varmfi) + " " + str(devapfi) + " " + str(devmfi))
print str(avgapfi) + " " + str(avgmfi) + " " + str(varapfi) + " " + str(varmfi) + " " + str(devapfi) + " " + str(devmfi)
out.close()
