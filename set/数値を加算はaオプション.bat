rem 2011/10/26

set NUM1=5

rem この書き方が正解
set /a NUM2=%NUM1%+3
echo %NUM2%

rem この書き方だと、文字列になっちゃう
set NUM3=%NUM1%+3
echo %NUM3%

pause
