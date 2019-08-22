@echo off
rem ¡“ú‚ÌƒtƒHƒ‹ƒ_‚ðì‚é
rem 2019/8/22 y.ikeda

set DT=%DATE%
set DT=%DT:/=%

set SUFFIX=0

:TryMakeDir
	set /a SUFFIX=%SUFFIX%+1
	
	set DIR_NAME=%DT%_%SUFFIX%_
	
	set EXIST_FLG=0
	for /f %%A in ('dir /a /b %DIR_NAME%* 2^>nul') do set EXIST_FLG=1
	
	if %EXIST_FLG%==1 goto :TryMakeDir

echo %DIR_NAME%
mkdir %DIR_NAME%

rem pause
