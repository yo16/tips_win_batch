
set ELE=AA
set ELE=%ELE% BB
set ELE=%ELE% CC
set ELE=%ELE% DD
set ELE=%ELE% EE

for %%e in (%ELE%) do (
	echo %%e
)

pause
