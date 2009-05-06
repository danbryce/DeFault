@echo off
setlocal

set pddldir=%~dp0

set antlr3="%pddldir%lib\antlr-3.1.1.jar"

set classp=%antlr3%;"%pddldir%graphplanner.jar"

set logdef=java.util.logging.config.file="%pddldir%logging.properties"

java -classpath %classp% -D%logdef% -Xmx1000m edu.usu.cs.plangraph.GraphSolver %*
