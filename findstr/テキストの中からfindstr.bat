echo,xxaabbcc>sample.txt
echo,xxyyzz>>sample.txt
echo,ddeeaaff>>sample.txt

findstr "aa" sample.txt
rem xxaabbcc
rem ddeeaaff

pause
