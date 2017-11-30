REM 変数中の文字列の取りだし
REM %[環境変数]:~[オフセット(位置)],[文字数]%


echo %DATE%
set MY_YEAR=%DATE:~0,4%
set MY_MONTH=%DATE:~5,2%
set MY_DAY=%DATE:~8,2%

REM MY_で始まるのを表示
set MY_


echo %MY_YEAR%ねん %MY_MONTH%がつ %MY_DAY%にち

pause
