#!/usr/bin/python
import os.path
import sys


#fileName="test.txt"
fileName = sys.argv[1]


def getTimeAndQualityByPlan(file):
    time = []
    nodes = []
    length = []
    fail = []
    for line in file:
        sp = line.split()
        if sp[0] == "time":
            continue
        elif sp[0] == "Incomplete":
            break
        elif sp[0] == "java.lang.OutOfMemoryError:":
            break
        else:
            time.append(float(sp[0]))
            nodes.append(float(sp[1]))
            length.append(float(sp[2]))
            fail.append(float(sp[3]))
#            print str(time[-1]) + " " + str(fail[-1])
    return [time, nodes, length, fail]

def getFeatures(file):
    for line in file:
        col = line.split()
        if col[0] == "Incomplete":
            return col[2]

def getNodes(file):
    for line in file:
        col = line.split()
        if col[0] == "Nodes":
            return col[2]

def getTime(file):
    for line in file:
        col = line.split()
        if col[0] == "Total":
            return col[3]

def getModelCountingTime(file):
    for line in file:
        col = line.split()
        if col[0] == "Model":
            return col[4]

def getEvaluationTime(file):
    for line in file:
        col = line.split()
        if col[0] == "Solution":
            return col[4]        

def getPlan(file):
    plan=[]
    gotPlan=False
    for line in file:
        col = line.split()
        if len(col) == 0:
            continue
        if col[0] == "Plan":
            gotPlan=True
        elif gotPlan:
            plan.append(line.rstrip('\n'))
    return plan


def parseFile(file):
    anytime=getTimeAndQualityByPlan(file)
    features=getFeatures(file)
    nodes=getNodes(file)
    time=getTime(file)
    plan=getPlan(file)
    evalTime=getEvaluationTime(file)
    mcTime=getModelCountingTime(file)
    if len(anytime[0]) > 0:
        mfi=anytime[3][-1]
    else:
        mfi = 1.0        
    return [anytime, features, nodes, time, plan, mcTime, evalTime, mfi]


def computeFailRate(data):
    time=data[0][0]
    fail=data[0][3]
    #print time + fail
    lastTime = 0.0
    lastFail = 1.0
    fr = 0.0
    for i in range(len(time)):
#        print time[i]
#        print fail[i]
        if time[i] <= 1800: #ignore times finishing after 30min
            fr+=(time[i]-lastTime)*(lastFail)
            lastTime=time[i]
            lastFail=fail[i]
    fr+=(1800-lastTime)*(lastFail)
    fr/=(1800)
    return fr


#output raw data as step function plot format
def computeFailRatePlot(data):
    time=data[0][0]
    fail=data[0][3]
    lastTime = 0.0
    lastFail = 1.0
    tp=[0.0]
    fp=[1.0]
    for i in range(len(time)):
        if time[i] <= 1800:
            tp.append(time[i])
            fp.append(lastFail)
            tp.append(time[i])
            fp.append(fail[i])
            lastFail=fail[i]
            lastTime=time[i]
    tp.append(1800)
    fp.append(lastFail)
    return [tp,fp]

def outputFailRatePlotData(failRatePlot, filename):
    file = open("plot/dat/failrate/" + filename + ".fr", "w")
    for i in range(len(failRatePlot[0])):
        file.write(str(failRatePlot[0][i]) + " " + str(failRatePlot[1][i]) + "\n")
    file.close()

def dataOK(lines):
    for line in lines:
        if line.find("Exception") != -1:
            return False
    return True

def outputFailStats(file):
    file.write(str(1.0) + " ? ? ? ? ? " + str(1.0))

print fileName[4:]

fileStats = open("plot/dat/stats/" + fileName[4:], "w")
if os.path.isfile(fileName) == False : 
    print fileName + " does not exist"
    outputFailStats(fileStats)
else:
    file=open(fileName, "r")
    lines = file.readlines()
    file.close()
    if dataOK(lines):
        data = parseFile(lines)
        anytime=str(data[0])
        features = str(data[1])
        nodes = str(data[2])
        time = str(data[3])
        plan = data[4]
        mcTime = str(data[5])
        evalTime = str(data[6])
        mfi = str(data[7])
        failRate=computeFailRate(data)
#        failRatePlot=computeFailRatePlot(data)
#        outputFailRatePlotData(failRatePlot, fileName[4:])
        fileStats.write(str(failRate) + " " + features + " " + nodes + " " + time + " " + mcTime + " " + evalTime + " " + mfi)
    else:
        outputFailStats(fileStats)
fileStats.close()
        

