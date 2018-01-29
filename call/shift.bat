
call :test1 1 2 3 4 5
pause
exit




:test1
echo %1
rem 1

echo %2
rem 2

echo %3
rem 3

echo %4
rem 4

echo %5
rem 5



rem %2を消して、%3以降を１つずつずらす。
rem /2がないと、/1の意味。
shift /2



echo %1
rem 1

echo %2
rem 3
rem ※ これ移行がずれている。

echo %3
rem 4

echo %4
rem 5

echo %5
rem ECHO は <ON> です。



rem 注意
rem %*は、shiftによらず、すべて取得する。
echo %*
rem 1 2 3 4 5



exit /b 0

