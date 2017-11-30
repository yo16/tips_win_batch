@echo off

setlocal enabledelayedexpansion


call :GetTime 1

pause

call :GetTime 1 2

pause

call :GetTime 2 3

pause



:GetTime
rem ˆø”‚P‚Â‚È‚çA‚»‚Ì”Ô†‚ðŽg‚Á‚ÄŽžŠÔ‚ð“o˜^
rem ˆø”‚Q‚Â‚È‚çA‚P‚Â–Ú‚Ì”Ô†‚ðŽg‚Á‚ÄŽžŠÔ‚ð“o˜^B‚»‚±‚©‚ç‚Q‚Â–Ú‚Ì”Ô†‚ðŠJŽnŽžŠÔA‚P‚Â–Ú‚Ì”Ô†‚ðI—¹ŽžŠÔ‚Æ‚µ‚ÄŒo‰ßŽžŠÔ‚ðŽZoE•\Ž¦
	set T[%1]=%TIME%
	for /f "tokens=1-4 delims=:." %%a in ("!T[%1]!") do set /a MT[%1]=%%a0*36000+1%%b*6000+1%%c*100+1%%d-610100
	if "%2" == "" exit /b
	set /a D=MT[%1]-MT[%2]
	set /a D1=%D:~0,-2%0/10,D2=10%D:~-2,2%%%100+100
	echo.
	echo ŠJŽnŽžŠÔF!T[%2]!
	echo I—¹ŽžŠÔF!T[%1]!
	echo Œo‰ßŽžŠÔF%D1%.%D2:~1,2%sec
	pause >nul
	exit /b



