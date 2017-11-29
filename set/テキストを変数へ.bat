rem テキストファイルを変数へ格納

echo,testaaa>sample.txt
echo,testbbb>>sample.txt

set /p AAA=<sample.txt

echo %AAA%
rem testaaa
rem １行目しか出ない

pause
