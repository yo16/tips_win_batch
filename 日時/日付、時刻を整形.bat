
rem %DATE%、%TIME%の書式から、数字の羅列へ変換する
rem コントロールパネルの地域と言語のオプションで、
rem 元の書式を変更することができるので
rem 一般的に使う場合は要注意。
rem yyyy/mm/dd (ddd) とか yyyy-mm-dd とか。
rem 
rem 2018 (c) yo16

set DT=%DATE%
set DT=%DT:/=%
set DT=%DT:-=%
set DT=%DT::=%
set DT=%DT: =0%

echo %DT%

set TM=%TIME%
set TM=%TM::=%
set TM=%TM: =0%
set TM=%TM:~0,6%

echo %TM%

pause

