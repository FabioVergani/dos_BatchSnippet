@echo off
cls
setlocal EnableDelayedExpansion
set n=0
for /F %%e in (elenco.txt) do ( 
 set /A n=n+1
 set m!n!=%%e
)
set p=%~dp0
for /L %%i in (1,1,!n!) do (
 copy /-Y !p!template.txt !p!!m%%i!.txt
)
pause>nul
