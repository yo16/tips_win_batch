call :test1 abc
echo %ERRORLEVEL%

pause

exit /b 0



:test1
echo %1

exit /b 123

