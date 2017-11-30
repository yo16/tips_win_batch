rem call‚ðŽg‚¤

set STR=
set ELM=A B C
for %%e in (%ELM%) do (
	call :AddStr %%e
)

echo %STR%
rem -A-B-C

pause
exit 0


:AddStr
set STR=%STR%-%1
exit /b 0
