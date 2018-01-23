rem フォルダの存在チェック
rem 2018 (c) yo16

rem EXISTで存在チェックはできるが
rem フォルダ or ファイルの区別なく、存在有無を得る。
rem フォルダに限定したければ、最後に\をつける。

if EXIST "c:\temp\" (
	echo exist!
) else (
	echo not exist!
)

pause
