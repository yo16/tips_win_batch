set AA=abcdefghijklmn

rem 引数仕様
rem 0から始まるIndex, 取り出す文字数
set BB=%AA:~2,3%
echo %BB%

rem マイナスになると一周するだけで、向きが反転するわけではないが、
rem 後ろから３文字は下記の方法で取得可能
set CC=%AA:~-3,3%
echo %CC%

pause
