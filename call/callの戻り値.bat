call :test1
echo %ERRORLEVEL%

pause

exit /b 0



:test1
exit /b 1

