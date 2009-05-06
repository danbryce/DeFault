@echo off
setlocal

set pddldir=%~dp0

set antlr3="%pddldir%lib\antlr-3.1.1.jar"

set classp=%antlr3%;"%pddldir%build"

set logdef=java.util.logging.config.file="%pddldir%logging.properties"

java -classpath %classp% -D%logdef% edu.usu.cs.plangraph.test.RunANTLR %*
