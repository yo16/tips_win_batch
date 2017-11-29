
echo,aa/bb>sample.txt
echo,cc/dd>>sample.txt

rem /で区切って、１項目目と２項目目を使う。tokens=1,2
rem tokensの数が未定の場合はtokens=*でもいい。（未定だとプログラムを書けないけど...）
rem １項目目の変数名だけを指定して、
rem ２項目目の変数名は次のアルファベットになる
for /F "tokens=1,2 delims=/" %%a in (sample.txt) do (
	echo %%a-%%b
)
rem aa-bb
rem cc-dd

pause
