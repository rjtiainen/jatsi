@echo off
dasm ..\jatsi.asm -v1 -ojatsi.prg 
c1541 -format jatsi,16 d64 jatsi.d64 -attach jatsi.d64 -write jatsi.prg jatsi 

