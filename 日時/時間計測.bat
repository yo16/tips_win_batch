@echo off

setlocal enabledelayedexpansion


call :GetTime 1

pause

call :GetTime 1 2

pause

call :GetTime 2 3

pause



:GetTime
rem 引数１つなら、その番号を使って時間を登録
rem 引数２つなら、１つ目の番号を使って時間を登録。そこから２つ目の番号を開始時間、１つ目の番号を終了時間として経過時間を算出・表示
	set T[%1]=%TIME%
	for /f "tokens=1-4 delims=:." %%a in ("!T[%1]!") do set /a MT[%1]=%%a0*36000+1%%b*6000+1%%c*100+1%%d-610100
	if "%2" == "" exit /b
	set /a D=MT[%1]-MT[%2]
	set /a D1=%D:~0,-2%0/10,D2=10%D:~-2,2%%%100+100
	echo.
	echo 開始時間：!T[%2]!
	echo 終了時間：!T[%1]!
	echo 経過時間：%D1%.%D2:~1,2%sec
	pause >nul
	exit /b



