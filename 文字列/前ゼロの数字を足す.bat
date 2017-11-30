set A=09

rem これはエラー
rem 08と09はダメらしい
set /a B=%A%*60+%A%
echo %B%



rem 先頭が0の場合は2文字目だけ使用する
if "%A:~0,1%"=="0" set A=%A:~1,1%
set /a B=%A%*60+%A%
echo %B%


pause
