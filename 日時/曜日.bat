cscript /b —j“úŽæ“¾.vbs
if %errorlevel%==7 set WDAY=SAT
if %errorlevel%==6 set WDAY=FRI
if %errorlevel%==5 set WDAY=THU
if %errorlevel%==4 set WDAY=WED
if %errorlevel%==3 set WDAY=TUE
if %errorlevel%==2 set WDAY=MON
if %errorlevel%==1 set WDAY=SUN

echo %WDAY%

pause
