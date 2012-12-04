#!/usr/bin/python
import os.path
import sys
import glob
import string


domain=sys.argv[1]
sem=sys.argv[2]
version=sys.argv[3]

if len(sys.argv) > 4:
    planner="_" + sys.argv[4]
else:
    planner = ""


problems = []

if [ domain == "hobonav" ]:
    problems = ["2", "4", "8", "16"]


densities = ["0.0", "0.25", "0.5", "0.75", "1.0"]

#print sys.argv

columns="|"
for density in densities:
    columns += "c|"
print "\\begin{table}\\footnotesize\\begin{tabular}{ccc" + columns + "}\\cline{4-" + str(4+len(densities)-1) + "}"

line = " & & "
for density in densities:
    line += "& "+ density + " "
line += "\\\\\\cline{4-" + str(4+len(densities)-1) + "}"
print line
line = " & & "
for density in densities:
    line += "& "+ sem + " "
line += "\\\\\\cline{4-" + str(4+len(densities)-1) + "}"
print line
line = " & & "
p = ""
if planner == "anytime":
    p = "+FF"
else:
    p = "-FF"
for density in densities:
    line += " & " + p 
line += "\\\\\\hline"
print line


algos = {"pode1" : "PI1", "pode2" : "PI2", "pode3" :  "PI3", "jdd" : "OBDD" }
for problem in problems:
    for algorithm in ["pode1", "pode2", "pode3", "jdd"]:
        if algorithm == "pode1":
            print "\\multicolumn{1}{|c|}{\\multirow{12}{*}{\\begin{sideways}" + problem + "\\end{sideways}}}&"
        else:
            print "\multicolumn{1}{|c|}{} &"
        print "\\multicolumn{1}{|c|}{\\multirow{3}{*}{\\begin{sideways}" + algos[algorithm] + "\\end{sideways}}}"
        for levoff  in ["0", "5", "inf"]:
            if levoff == "inf":
                lev = "$\\infty$"
            else:
                lev = levoff
            if lev != "0":
                line = "\multicolumn{1}{|c|}{} & \multicolumn{1}{|c|}{} & " + lev
            else:
                line = "  & " + lev
            for density in densities:
                p = planner
                #                if(planner == "anytime"):
                #                    p = ""
                inFileName = "plot/dat/apr/"+ domain + "_" + version + "_" + algorithm + "_" + problem + "_" + density + "__" + sem + "_" + levoff +  planner + ".apfi"
                #print inFileName
                infile = open(inFileName, "r")
                inline = infile.readlines()[0].split()
                apfi=inline[0]
                mfi=inline[1]
                vapfi=inline[2]
                vmfi=inline[3]
                #                print apfi
                infile.close()                
                line += " & "
                line += '%.2f$\\pm$%.2f (%.2f$\\pm$%.2f)' % (float(apfi), float(vapfi), float(mfi), float(vmfi))
            line += "\\\\"
            print line
        print "\\cline{2-" + str(4+len(densities)-1) + "}"
    print "\\hline\\hline"
print "\\end{tabular}\\caption{\\label{tab:res" + domain + "} APFI Results for " + domain + " Domain.}\\end{table}"


