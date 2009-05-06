@echo off
setlocal

set antlr3=../lib/antlr-3.1.1.jar
set srcdir=../src/edu/usu/cs/pddl/antlr

cd grammar

java -classpath %antlr3% org.antlr.Tool -o %srcdir% Pddl.g
