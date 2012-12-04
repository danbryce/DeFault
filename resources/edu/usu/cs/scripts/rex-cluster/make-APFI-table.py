#!/usr/bin/python
import os.path
import sys
import glob
import string

if len(sys.argv) > 1:
    domain=sys.argv[1]
else:
    domain=""

#print sys.argv
print "\\begin{table}\\begin{sideways}\\begin{tabular}{cc|cc|cc|}\\cline{3-6}"
#line= " & "
line = " & "
for sem in ["strict", "flexible"]:
    line += "& \\multicolumn{2}{c|}{"+ sem + "} "
line += "\\\\\\cline{3-6}"
print line
line = " & "
for sem in ["strict", "flexible"]:
    for planner in ["anytime", "anytime-noff"]:
        p = ""
        if planner == "anytime":
            p = "+FF"
        else:
            p = "-FF"
        line += " & " + p 
line += "\\\\\\hline"
print line

algos = {"pode1" : "PI1", "pode2" : "PI2", "pode3" :  "PI3", "jdd" : "OBDD" }
for algorithm in ["pode1", "pode2", "pode3", "jdd"]:
    print "\\multicolumn{1}{|c|}{\\multirow{3}{*}{\\begin{sideways}" + algos[algorithm] + "\\end{sideways}}}"
    for levoff  in ["0", "5", "inf"]:
        if levoff == "inf":
            lev = "$\\infty$"
        else:
            lev = levoff
        if lev != "0":
            line = "\multicolumn{1}{|c|}{} & " + lev
        else:
            line = " & " + lev
        for sem in ["strict", "flexible"]:
            for planner in ["anytime", "anytime-noff"]:
                p = planner
#                if(planner == "anytime"):
#                    p = ""
                inFileName = "plot/dat/apr/"+ domain + "_" + algorithm + "_"+ sem + "_" + levoff + "_" + p + ".apfi"
#                print inFileName
                infile = open(inFileName, "r")
                inline = infile.readlines()[0].split()
                apfi=inline[0]
                mfi=inline[1]
                vapfi=inline[2]
                vmfi=inline[3]
#                print apfi
                infile.close()
                #'%.17g' % 1.2
                line += " & "
                line += '%.2f$\\pm$%.2f (%.2f$\\pm$%.2f)' % (float(apfi), float(vapfi), float(mfi), float(vmfi))

                #+ "(" + mfi + ") & "
        line += "\\\\"
        print line
    print "\\hline"
print "\\end{tabular}\\end{sideways}\\caption{\\label{tab:res" + domain + "} APFI Results for " + domain + " Domain.}\\end{table}"


