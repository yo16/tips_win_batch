
echo,aa>sample.txt
echo,bb>>sample.txt
echo,cc>>sample.txt


rem /F�ŁA�t�@�C�����J���Ă��̒����P�s�����[�v
for /F %%f in (sample.txt) do (
	echo %%f
)
rem aa
rem bb
rem cc

pause

