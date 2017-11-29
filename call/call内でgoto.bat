call :aaaa
echo cc
pause
exit



:aaaa
goto :aaa_end

echo aa
:aaa_end
echo bb
pause
exit /b 0
