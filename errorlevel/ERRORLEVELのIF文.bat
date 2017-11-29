rem 要注意！
rem ERRORLEVELのif文は、下記の仕様のため、
rem かならず大きい数値からIF文を書かないといけない。
rem Cmd.exe によって実行されている直前のプログラムから number よりも
rem 大きいかまたは等しい終了コードが返されたときに、条件が真であることを指定します。 


call :test1
if ERRORLEVEL 2 (
	echo 2222222
) else if ERRORLEVEL 1 (
	echo 11111111
) else (
	echo eeeee
)



pause
exit 0



:test1

exit /B 2

