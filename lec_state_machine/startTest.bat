@ECHO OFF
%1 < %2 > %2.out
FC %2.out %2.res
