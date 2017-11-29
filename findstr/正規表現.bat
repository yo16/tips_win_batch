rem 一般的な正規表現がすべて使えるというわけではないことに注意
rem よく使うもの
rem 有効（使えるもの）
rem .+*^$
rem 無効（使えないもの）
rem [a-z]、[0-9]を含む、[]

echo,aa>sample.txt
echo,bb>>sample.txt
echo,cc>>sample.txt
echo,xxaa>>sample.txt
echo,xxbb>>sample.txt
echo,xxc>>sample.txt
echo,>>sample.txt
echo,yyaa>>sample.txt
echo,zzbb>>sample.txt
echo,abcdefg>>sample.txt
echo,abc>>sample.txt
echo,abceee>>sample.txt
echo,>>sample.txt
echo,abc1234>>sample.txt
echo,>>sample.txt
echo,>>sample.txt
echo,aaa\bbb\ccc>>sample.txt


findstr /r "b.c" sample.txt
rem aaa\bbb\ccc
	rem .は有効

findstr /r "c.f" sample.txt
rem （なし）
	rem abcdefgがヒットするのか確認。
	rem .は１文字だけなので「cdef」はヒットしない。ok。

findstr /r "c.+f" sample.txt
rem （なし）
	rem +は無効

findstr /r "c.*f" sample.txt
rem abcdefg
	rem *はn回

findstr /r "cx*1" sample.txt
rem abc1234
	rem *は0回でもヒット。ok。

findstr /r "[a-z]+" sample.txt
rem （なし）
	rem [a-z]は無効

findstr /r "[0-9]+" sample.txt
rem （なし）
	rem [0-9]は無効

findstr /r "[abc]+" sample.txt
rem （なし）
	rem []自体が無効らしい

findstr /r "^a" sample.txt
rem aa
rem abcdefg
rem abc
rem abceee
	rem yyaaはヒットしていない。
	rem ^は有効

findstr /r "a$" sample.txt
rem aa
rem xxaa
rem yyaa
	rem $は有効

pause
