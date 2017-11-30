call :check cc\cc\

pause
exit /b 0




:check
set STR=%1
rem set STRRM1=%STR:~0,-1%
rem set STRDEL=%STR:\=%

set STRTAIL1=%STR:~-1,1%
set STRTAIL1_REP=%STRTAIL1:\=%

if "%STRTAIL1%" == "%STRTAIL1_REP%" (
echo ない！「%STR%」
) else (
echo ある！「%STR%」
)

echo %STR%

exit /b 0

