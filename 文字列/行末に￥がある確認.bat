@echo off

call :check cc\cc\
call :check2 cc\cc\

call :check cc\cc
call :check2 cc\cc

pause
exit /b 0




:check
set STR=%1
rem set STRRM1=%STR:~0,-1%
rem set STRDEL=%STR:\=%

set STRTAIL1=%STR:~-1,1%
set STRTAIL1_REP=%STRTAIL1:\=%

if "%STRTAIL1%" == "%STRTAIL1_REP%" (
echo check1:ない！「%STR%」
) else (
echo check1:ある！「%STR%」
)


exit /b 0



rem 単純に比較
rem これでできるのに、なぜreplaceしたのか覚えてない・・・
:check2
set STR=%1
set STRTAIL=%STR:~-1,1%

if "%STRTAIL1%" == "\" (
	echo check2:ある
) else (
	echo check2:ない
)
exit /b 0
