

SET AAA=01234567890
echo %AAA%


rem 先頭から３文字目以降だけにする
set BBB=%AAA:~2%
echo %BBB%
REM 234567890


rem マイナスを入れたとき
rem 後ろから
set CCC=%AAA:~-2%
echo %CCC%
REM 90


rem 後ろ３文字をトリム
set DDD=%AAA:~0,-3%
echo %DDD%
REM 01234567


pause
