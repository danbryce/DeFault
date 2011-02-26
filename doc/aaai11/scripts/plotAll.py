import subprocess
import sys

def makePlannerTable(file, domainString, domainName):
    domains=[] #"bridges", "hobonav", "pathways", "parcprinter"]
    domains.append(domainString)
    densities=["0.25", "0.5", "0.75", "1.0"]
#    amirIndex=[5, 26, 47, 68, 89, 110, 131, 152, 173, 194, 215, 236, 257 ]
#    jddIndex=[15, 36, 57, 78, 99, 120, 141, 162, 183, 204, 225, 246, 267]
#    method=["No? Risky", "No? LookAhead", "All", "All in Plan", "All in PFE", "Cube Impact ?", "Entropy w/Plan", "Entropy w/RP", "Tree w/Plan", "Tree w/RP", "PossPre ?"]
#    amirIndex=[5, 26, 47, 68, 89, 110, 131, 152, 173, 194, 215]
#    jddIndex=[15, 36, 57, 78, 99, 120, 141, 162, 183, 204, 225]
    method=[ "No? LookAhead",   "Entropy w/Plan"]
    amirIndex=[ 26, 131]
    jddIndex=[ 36,  141]
    actionRatios=[]
    timeRatios=[]
    questionRatios=[]
    actionsOffset=2
    timeOffset=4
    questionOffset=6
    data=open(file)
    domainResult=[]
    #initialize
    for d in domains:
        den=[]
        for ds in densities:
            den.append([])
        domainResult.append(den)
    #parse
    for line in data:
        for den in densities:
            if str(line).find("_"+str(den)+"_") > -1:
                domainResult[0][densities.index(den)].append(line)
    #sum results    
    for d in domains:
        for den in densities:
            numInstance = len(domainResult[domains.index(d)][densities.index(den)])
            actionRatios=[]
            timeRatios=[]
            questionRatios=[]
            solvedAmir=[]
            solvedJDD=[]
            bsolved = []
            for i in range(0,len(amirIndex)):
                actionRatios.append(0)
                questionRatios.append(0)
                timeRatios.append(0)
                solvedAmir.append(0)
                solvedJDD.append(0)
                bsolved.append(0)
            for instance in domainResult[domains.index(d)][densities.index(den)]:
#                print(instance)
                for i in range(0,len(amirIndex)):
#                    print i       
                    sinstance = instance.split()
                    timeAmir = sinstance[amirIndex[i]+timeOffset]
                    timeJDD =  sinstance[jddIndex[i]+timeOffset]
                    if timeAmir != "?":
                        solvedAmir[i] += 1
                    if timeJDD != "?":
                        solvedJDD[i] += 1
                    if timeAmir == "?" or timeJDD == "?":
                        continue
                    timeRatio = (float(timeAmir))/(float(timeJDD))
                    timeRatios[i] += timeRatio 
                    
                    actionsAmir = sinstance[amirIndex[i]+actionsOffset]
                    actionsJDD =  sinstance[jddIndex[i]+actionsOffset]
                    actionsRatio = (float(actionsAmir))/(float(actionsJDD))
                    actionRatios[i] += actionsRatio
                     
                    questionsAmir = sinstance[amirIndex[i]+questionOffset]
                    questionsJDD =  sinstance[jddIndex[i]+questionOffset]
                    questionRatio = (float(questionsAmir)+1)/(float(questionsJDD)+1)
                    questionRatios[i] += questionRatio
                    bsolved[i] += 1
            print domainName + "\t" + den + "\t",
            for i in range(0,len(amirIndex)):
                if solvedJDD[i] != 0:
                    #bsolved = min(float(solvedAmir[i]),float(solvedJDD[i]))
                    solved1 = float(solvedAmir[i])/float(solvedJDD[i])
                else:
                    solved1 = 0
                    #solved = 1
                if bsolved[i] == 0:
                    bsolved[i] = 1
                print " & {0:.1f}".format(solved1) + "/{0:.1f}".format(actionRatios[i]/float(bsolved[i])) +  "/{0:.1f}".format(timeRatios[i]/float(bsolved[i]))  + "/{0:.1f}".format(questionRatios[i]/float(bsolved[i])) + " \t",
            print "\\\\ \hline"
#            print "Method: \t\t\t",
#            for i in range(0,len(amirIndex)):
#                print method[i] + "\t",
#            print ""
#            print "Num solved:\t" + d + "\t" + den + "\t",
#            for i in range(0,len(amirIndex)):
#                if solvedJDD[i] != 0:
#                    solved = float(solvedAmir[i])/float(solvedJDD[i])
#                else:
#                    solved = 0
#                print "{0:5.3f}".format(solved) + "\t",
#            print ""
#            print "actionRatios:\t" + d + "\t" + den + "\t",
#            for i in range(0,len(amirIndex)):
#                if solvedJDD[i] != 0 and solvedAmir[i] != 0:
#                    solved = min(float(solvedAmir[i]),float(solvedJDD[i]))
#                else:
#                    solved = 1
#                print "{0:5.3f}".format(actionRatios[i]/float(solved)) + "\t",
#            print ""
#            print "timeRatios:\t" + d + "\t" + den + "\t",
#            for i in range(0,len(amirIndex)):
#                if solvedJDD[i] != 0 and solvedAmir[i] != 0:
#                    solved = min(float(solvedAmir[i]),float(solvedJDD[i]))
#                else:
#                    solved = 1
#                print("{0:5.3f}".format(timeRatios[i]/float(solved)) + "\t"),
#            print ""
#            print "questionRatios:\t" + d + "\t" + den + "\t",
#            for i in range(0,len(amirIndex)):
#                if solvedJDD[i] != 0 and solvedAmir[i] != 0:
#                    solved = min(float(solvedAmir[i]),float(solvedJDD[i]))
#                else:
#                    solved = 1
#                print "{0:5.3f}".format(questionRatios[i]/float(solved)) + "\t",
#            print "\n"
   
def makeQuestionTable(file, domainString, jddIndex, domainName):
    domains=[] #"bridges", "hobonav", "pathways", "parcprinter"]
    domains.append(domainString)
    densities=["0.25", "0.5", "0.75", "1.0"]
#    amirIndex=[5, 26, 47, 68, 89, 110, 131, 152, 173, 194, 215, 236, 257 ]
#    jddIndex=[15, 36, 57, 78, 99, 120, 141, 162, 183, 204, 225, 246, 267]
    method=[ "No? LookAhead", "All", "All in Plan", "All in PFE", "Cube Impact ?", "Entropy w/Plan", "Tree w/Plan",  "PossPre ?"]
#    amirIndex=[5, 26, 47, 68, 89, 110, 131, 152, 173, 194, 215]
#    method=[ "No? LookAhead",   "Entropy w/Plan"]
#    amirIndex=[ 26, 131]
#    jddIndex=[ 36,  141]
    actionRatios=[]
    timeRatios=[]
    questionRatios=[]
    actionsOffset=2
    timeOffset=4
    questionOffset=6
    data=open(file)
    domainResult=[]
    #initialize
    for d in domains:
        den=[]
        for ds in densities:
            den.append([])
        domainResult.append(den)
    #parse
    for line in data:
        for den in densities:
            if str(line).find("_"+str(den)+"_") > -1:
                domainResult[0][densities.index(den)].append(line)
    #sum results    
    for d in domains:
        for den in densities:
            numInstance = len(domainResult[domains.index(d)][densities.index(den)])
            actionRatios=[]
            timeRatios=[]
            questionRatios=[]
            solvedAmir=[]
            solvedJDD=[]
            bsolved = []
            best = []
            for i in range(0,len(jddIndex)):
                actionRatios.append(0)
                questionRatios.append(0)
                timeRatios.append(0)
                solvedAmir.append(0)
                solvedJDD.append(0)
                bsolved.append(0)   
                            
            for instance in domainResult[domains.index(d)][densities.index(den)]:
#                print(instance)
                for i in range(0,len(jddIndex)):
#                    print i       
                    sinstance = instance.split()
                    #timeAmir = sinstance[amirIndex[i]+timeOffset]
                    timeJDD =  sinstance[jddIndex[i]+timeOffset]
#                    if timeAmir != "?":
#                        solvedAmir[i] += 1
                    if timeJDD != "?":
                        solvedJDD[i] += 1
                    else:
                        continue
                    timeRatio = (float(timeJDD))
                    timeRatios[i] += timeRatio 
                    
                    #actionsAmir = sinstance[amirIndex[i]+actionsOffset]
                    actionsJDD =  sinstance[jddIndex[i]+actionsOffset]
                    actionsRatio = (float(actionsJDD))
                    actionRatios[i] += actionsRatio
                     
                   # questionsAmir = sinstance[amirIndex[i]+questionOffset]
                    questionsJDD =  sinstance[jddIndex[i]+questionOffset]
                    questionRatio = (float(questionsJDD))
                    questionRatios[i] += questionRatio
                    bsolved[i] += 1
            #get best results
            best.append( 0) #solved problems
            best.append( 10000) #num steps
            best.append( 100000000) #time
            best.append( 100000) #questions
            for i in range(0,len(jddIndex)):
                if float(solvedJDD[i]) > best[0]:
                    best[0] = float(solvedJDD[i])
                if bsolved[i] != 0:
                    if actionRatios[i]/float(bsolved[i]) < best[1]:
                        best[1] = actionRatios[i]/float(bsolved[i])
                    if timeRatios[i]/float(bsolved[i]) < best[2]:
                        best[2] = timeRatios[i]/float(bsolved[i])
                    if questionRatios[i]/float(bsolved[i]) < best[3]:
                        best[3] = questionRatios[i]/float(bsolved[i])
            #print results
            print domainName + "\t" + den + "\t",
            for i in range(0,len(jddIndex)):
                
                if solvedJDD[i] != 0:
                    #bsolved = min(float(solvedAmir[i]),float(solvedJDD[i]))
                    solved1 = float(solvedJDD[i])
                else:
                    solved1 = 0
                    bsolved[i] = 1
                sys.stdout.write("&")
                if solved1 == best[0]:
                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.0f}".format(solved1))  
                if solved1 == best[0]:
                    sys.stdout.write( "}")
                sys.stdout.write( "/")
                if actionRatios[i]/float(bsolved[i]) == best[1]:
                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.1f}".format(actionRatios[i]/float(bsolved[i])))   
                if actionRatios[i]/float(bsolved[i]) == best[1]:
                    sys.stdout.write( "}")
                sys.stdout.write( "/")
                if timeRatios[i]/float(bsolved[i]) == best[2]:
                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.1f}".format(timeRatios[i]/float(bsolved[i])))   
                if timeRatios[i]/float(bsolved[i]) == best[2]:
                    sys.stdout.write( "}")
                sys.stdout.write( "/")
                if questionRatios[i]/float(bsolved[i]) == best[3]:
                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.1f}".format(questionRatios[i]/float(bsolved[i])))   
                if questionRatios[i]/float(bsolved[i]) == best[3]:
                    sys.stdout.write( "}")
                sys.stdout.write( " \t")
            sys.stdout.write( "\\\\ \hline\n")   
    
def makeRPTable(file, domainString, domainName):
    domains=[] #"bridges", "hobonav", "pathways", "parcprinter"]
    domains.append(domainString)
    densities=["0.25", "0.5", "0.75", "1.0"]
#    amirIndex=[5, 26, 47, 68, 89, 110, 131, 152, 173, 194, 215, 236, 257 ]
#    planIndex=[141, 183]
#    rplanIndex=[162, 204]
    planIndex=[141]
    rplanIndex=[162]
#    method=[ "No? LookAhead", "All", "All in Plan", "All in PFE", "Cube Impact ?", "Entropy w/Plan", "Tree w/Plan",  "PossPre ?"]
#    amirIndex=[5, 26, 47, 68, 89, 110, 131, 152, 173, 194, 215]
#    method=[ "No? LookAhead",   "Entropy w/Plan"]
#    amirIndex=[ 26, 131]
#    jddIndex=[ 36,  141]
    actionRatios=[]
    timeRatios=[]
    questionRatios=[]
    actionsOffset=2
    timeOffset=4
    questionOffset=6
    data=open(file)
    domainResult=[]
    #initialize
    for d in domains:
        den=[]
        for ds in densities:
            den.append([])
        domainResult.append(den)
    #parse
    for line in data:
        for den in densities:
            if str(line).find("_"+str(den)+"_") > -1:
                domainResult[0][densities.index(den)].append(line)
    #sum results    
    for d in domains:
        for den in densities:
            numInstance = len(domainResult[domains.index(d)][densities.index(den)])
            actionRatios=[]
            timeRatios=[]
            questionRatios=[]
            solvedPlan=[]
            solvedRPlan=[]
            bsolved = []
            best = []
            for i in range(0,len(jddIndex)):
                actionRatios.append(0)
                questionRatios.append(0)
                timeRatios.append(0)
                solvedPlan.append(0)
                solvedRPlan.append(0)
                bsolved.append(0)   
                            
            for instance in domainResult[domains.index(d)][densities.index(den)]:
#                print(instance)
                for i in range(0,len(planIndex)):
#                    print i       
                    sinstance = instance.split()
                    timeRPlan = sinstance[rplanIndex[i]+timeOffset]
                    timePlan =  sinstance[planIndex[i]+timeOffset]
                    if timeRPlan != "?":
                        solvedRPlan[i] += 1
                    if timePlan != "?":
                        solvedPlan[i] += 1
                    if timePlan == "?" or timeRPlan == "?":
                        continue
                    timeRatio = (float(timePlan)/float(timeRPlan))
                    timeRatios[i] += timeRatio 
                    
                    actionsRPlan = sinstance[rplanIndex[i]+actionsOffset]
                    actionsPlan =  sinstance[planIndex[i]+actionsOffset]
                    actionsRatio = (float(actionsPlan)/float(actionsRPlan))
                    actionRatios[i] += actionsRatio
                     
                    questionsRPlan = sinstance[rplanIndex[i]+questionOffset]
                    questionsPlan =  sinstance[planIndex[i]+questionOffset]
                    questionRatio = (float(questionsPlan)+1)/(float(questionsRPlan)+1)
                    questionRatios[i] += questionRatio
                    bsolved[i] += 1
#            #get best results
#            best.append( 0) #solved problems
#            best.append( 10000) #num steps
#            best.append( 100000000) #time
#            best.append( 100000) #questions
#            for i in range(0,len(jddIndex)):
#                if float(solvedJDD[i]) > best[0]:
#                    best[0] = float(solvedJDD[i])
#                if bsolved[i] != 0:
#                    if actionRatios[i]/float(bsolved[i]) < best[1]:
#                        best[1] = actionRatios[i]/float(bsolved[i])
#                    if timeRatios[i]/float(bsolved[i]) < best[2]:
#                        best[2] = timeRatios[i]/float(bsolved[i])
#                    if questionRatios[i]/float(bsolved[i]) < best[3]:
#                        best[3] = questionRatios[i]/float(bsolved[i])
            #print results
            print domainName + "\t" + den + "\t",
            for i in range(0,len(planIndex)):
                
                if solvedRPlan[i] != 0 and solvedPlan[i] != 0:
                    bsolved[i] = min(float(solvedPlan[i]),float(solvedRPlan[i]))
                    solved1 = float(solvedPlan[i])/float(solvedRPlan[i])
                else:
                    solved1 = 0
                    bsolved[i] = 1
                sys.stdout.write("&")
#                if solved1 == best[0]:
#                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.0f}".format(solved1))  
#                if solved1 == best[0]:
#                    sys.stdout.write( "}")
                sys.stdout.write( "/")
#                if actionRatios[i]/float(bsolved[i]) == best[1]:
#                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.1f}".format(actionRatios[i]/float(bsolved[i])))   
#                if actionRatios[i]/float(bsolved[i]) == best[1]:
#                    sys.stdout.write( "}")
                sys.stdout.write( "/")
#                if timeRatios[i]/float(bsolved[i]) == best[2]:
#                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.1f}".format(timeRatios[i]/float(bsolved[i])))   
#                if timeRatios[i]/float(bsolved[i]) == best[2]:
#                    sys.stdout.write( "}")
                sys.stdout.write( "/")
#                if questionRatios[i]/float(bsolved[i]) == best[3]:
#                    sys.stdout.write( "{\\bf ")
                sys.stdout.write( "{0:.1f}".format(questionRatios[i]/float(bsolved[i])))   
#                if questionRatios[i]/float(bsolved[i]) == best[3]:
#                    sys.stdout.write( "}")
                sys.stdout.write( " \t")
            sys.stdout.write( "\\\\ \hline\n")       
    
print "\\begin{table}\\begin{tabular}{|l|cc|}\hline"
#print "Domain & Act & AskAllPlan & AskAll $d(\pi)$ & AskCube $d(\pi)$ & AskEnt $d(\pi)$ & AskMinMax $d(\pi)$ & AskPre\\\\ \hline"
print "Domain & Act  & AskEnt $d(\pi)$ \\\\ \hline"
makePlannerTable("../plot/bridges.dat", "bridges", "Br")
print "\hline"
makePlannerTable("../plot/pathways.dat", "pathways", "Pw")
print "\hline"
makePlannerTable("../plot/parcprinter.dat", "parcprinter", "Pp")
print "\hline"
makePlannerTable("../plot/hobonav.dat", "hobonav", "Ba")
print "\end{tabular}\caption{\label{tab:plannerComp} Planner Performance with Question Asking (Num Solved/Num Steps/Time/Questions)}\end{table}"
print ""

# "All in Plan", "All in PFE", "Cube Impact ?", "Entropy w/Plan", "Tree w/Plan",  "PossPre ?"
#jddIndex=[ 78, 99, 120, 141, 183, 225]
jddIndex=[ 78, 99, 120, 141]
#print "\\begin{table*}\\small\\begin{tabular}{|@{}l@{}|@{}c@{ }c@{ }c@{ }c@{ }c@{ }c@{}|}\hline"
print "\\begin{table*}\\centering\\begin{tabular}{|@{}l@{}|@{}c@{ }c@{ }c@{ }c@{}|}\hline"
#print "Domain & Act & AskAllPlan & AskAll $d(\pi)$ & AskCube $d(\pi)$ & AskEnt $d(\pi)$ & AskMinMax $d(\pi)$ & AskPre\\\\ \hline"
print "Domain & AllPlan  &All $d(\pi)$ & Cube $d(\pi)$ & Ent $d(\pi)$ \\\\ \hline"
makeQuestionTable("../plot/bridges.dat", "bridges", jddIndex, "Br")
print "\hline"
makeQuestionTable("../plot/pathways.dat", "pathways", jddIndex, "Pw")
print "\hline"
makeQuestionTable("../plot/parcprinter.dat", "parcprinter",jddIndex, "Pp")
print "\hline"
makeQuestionTable("../plot/hobonav.dat", "hobonav", jddIndex, "Ba")
print "\end{tabular}\caption{\label{tab:questionComp1} Planner Performance with Question Asking (Num Solved/Num Steps/Time/Questions)}\end{table*}"
print ""

jddIndex=[ 36, 57]
print "\\begin{table}\\begin{tabular}{|l|cc|}\hline"
#print "Domain & Act & AskAllPlan & AskAll $d(\pi)$ & AskCube $d(\pi)$ & AskEnt $d(\pi)$ & AskMinMax $d(\pi)$ & AskPre\\\\ \hline"
print "Domain & Act  & AskAll ${\sf F}$ \\\\ \hline"
makeQuestionTable("../plot/bridges.dat", "bridges", jddIndex, "Br")
print "\hline"
makeQuestionTable("../plot/pathways.dat", "pathways", jddIndex, "Pw")
print "\hline"
makeQuestionTable("../plot/parcprinter.dat", "parcprinter", jddIndex,"Pp")
print "\hline"
makeQuestionTable("../plot/hobonav.dat", "hobonav", jddIndex, "Ba")
print "\end{tabular}\caption{\label{tab:questionComp2} Planner Performance with Question Asking (Num Solved/Num Steps/Time/Questions)}\end{table}"


print "\\begin{table}\\begin{tabular}{|l|c|}\hline"
#print "Domain & Act & AskAllPlan & AskAll $d(\pi)$ & AskCube $d(\pi)$ & AskEnt $d(\pi)$ & AskMinMax $d(\pi)$ & AskPre\\\\ \hline"
print "Domain & Ent $d(\pi)$  \\\\ \hline"
makeRPTable("../plot/bridges.dat", "bridges", "Br")
print "\hline"
makeRPTable("../plot/pathways.dat", "pathways",  "Pw")
print "\hline"
makeRPTable("../plot/parcprinter.dat", "parcprinter", "Pp")
print "\hline"
makeRPTable("../plot/hobonav.dat", "hobonav",  "Ba")
print "\end{tabular}\caption{\label{tab:rpComp} Ratio of Performance with Question Asking using Plans versus Relaxed Plans (Num Solved/Num Steps/Time/Questions)}\end{table}"

subprocess.Popen("./goalie.plot")