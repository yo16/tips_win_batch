@echo off

setlocal enabledelayedexpansion


call :GetTime 1

pause

call :GetTime 1 2

pause

call :GetTime 2 3

pause



:GetTime
rem �����P�Ȃ�A���̔ԍ����g���Ď��Ԃ�o�^
rem �����Q�Ȃ�A�P�ڂ̔ԍ����g���Ď��Ԃ�o�^�B��������Q�ڂ̔ԍ����J�n���ԁA�P�ڂ̔ԍ����I�����ԂƂ��Čo�ߎ��Ԃ��Z�o�E�\��
	set T[%1]=%TIME%
	for /f "tokens=1-4 delims=:." %%a in ("!T[%1]!") do set /a MT[%1]=%%a0*36000+1%%b*6000+1%%c*100+1%%d-610100
	if "%2" == "" exit /b
	set /a D=MT[%1]-MT[%2]
	set /a D1=%D:~0,-2%0/10,D2=10%D:~-2,2%%%100+100
	echo.
	echo �J�n���ԁF!T[%2]!
	echo �I�����ԁF!T[%1]!
	echo �o�ߎ��ԁF%D1%.%D2:~1,2%sec
	pause >nul
	exit /b



