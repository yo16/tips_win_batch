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
echo check1:�Ȃ��I�u%STR%�v
) else (
echo check1:����I�u%STR%�v
)


exit /b 0



rem �P���ɔ�r
rem ����łł���̂ɁA�Ȃ�replace�����̂��o���ĂȂ��E�E�E
:check2
set STR=%1
set STRTAIL=%STR:~-1,1%

if "%STRTAIL1%" == "\" (
	echo check2:����
) else (
	echo check2:�Ȃ�
)
exit /b 0
