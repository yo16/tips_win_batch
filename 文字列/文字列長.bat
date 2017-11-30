
set AA=987654321

call :strlen %AA%
set L=%ERRORLEVEL%
echo ********************** %L%
exit /b 0

:strlen
echo %~1
set LEN=0

set S=%1
:LOOP_HEAD
if defined S (
	set S=%S:~1%
	set /A LEN+=1
	goto :LOOP_HEAD
)

exit /b %LEN%
