start /WAIT batの戻り値_呼ばれる.bat
echo %ERRORLEVEL%

if ERRORLEVEL 2 (
	echo AAAAAAA
) else if ERRORLEVEL 1 (
	echo BBBBBBB
) else (
	echo CCCCCCC
)
pause
