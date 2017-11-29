start /WAIT bat‚Ì–ß‚è’l_ŒÄ‚Î‚ê‚é.bat
echo %ERRORLEVEL%

if ERRORLEVEL 2 (
	echo AAAAAAA
) else if ERRORLEVEL 1 (
	echo BBBBBBB
) else (
	echo CCCCCCC
)
pause
