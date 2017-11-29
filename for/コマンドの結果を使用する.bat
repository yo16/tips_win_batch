
rem dirの結果を使用する
dir
rem 2017/11/29  08:54    <DIR>          .
rem 2017/11/29  08:54    <DIR>          ..
rem 2017/11/29  08:45                 6 .gitignore
rem 2017/11/29  08:53               284 delimiter.bat
rem 2017/11/29  08:47               200 for_file.bat
rem 2017/11/29  08:47                76 for_一覧.bat
rem 2017/11/29  08:53                14 sample.txt
rem 2017/11/29  08:54                16 コマンドの結果を使用する.bat
rem                6 個のファイル                 596 バイト
rem                2 個のディレクトリ  273,113,378,816 バイトの空き領域


for /F "usebackq tokens=1,2,3 delims=/ " %%a in (`dir`) do (
	echo,%%a--%%b--%%c
)
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29


pause
