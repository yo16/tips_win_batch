


call GetIni.bat :RED_INI_VAL "section1" "NAME1" HEN1 test.ini
echo %HEN1%
rem → AA

call GetIni.bat :RED_INI_VAL "section2" "NAME2" HEN2 test.ini
echo %HEN2%
rem → ERR
rem スペースが入ってるから。

pause
