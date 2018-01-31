
set DT=%DATE%
set DT=%DT:/=%
set DT=%DT::=%
set DT=%DT: =0%

echo %DT%

set TM=%TIME%
set TM=%TM::=%
set TM=%TM: =0%
set TM=%TM:~0,6%

echo %TM%

pause
