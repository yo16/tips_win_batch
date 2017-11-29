
echo,aa>sample.txt
echo,bb>>sample.txt
echo,cc>>sample.txt


rem /Fで、ファイルを開いてその中を１行ずつループ
for /F %%f in (sample.txt) do (
	echo %%f
)
rem aa
rem bb
rem cc

pause

