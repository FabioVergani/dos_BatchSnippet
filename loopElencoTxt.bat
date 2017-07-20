@echo off
cls
setlocal EnableDelayedExpansion
set i=0
for /F %%e in (elenco.txt) do ( 
 set /A i=i+1
 set m!i!= %%e
)
for /L %%x in (1,1,!i!) do (
 echo !m%%x!
)
pause>nul
