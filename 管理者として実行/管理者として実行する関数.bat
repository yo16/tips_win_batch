@echo off

rem 最初に処理をcallさえすれば、
rem 管理者として実行されていない場合に
rem 管理者権限を求めて再実行する関数
rem 
rem 2018 (c) yo16


call :RunAsAdmin %0 %*
echo ErrorLevel:%ERRORLEVEL%
if ERRORLEVEL 2 (
	rem 管理者として実行しなかった(再起動された後に拒否した)場合の処理
	echo 'not-admin...'
	
	pause
	exit 1
)
if ERRORLEVEL 1 (
	rem 再帰呼び出し用の引数RUN_AS_ADMIN_FRAGが付いているので、
	rem shiftして処理を継続する
	shift
)

rem 管理者とて実行される処理
echo i'm admin!
echo 1:%1
echo 2:%2
echo 3:%3
pause
exit 0



rem 管理者として実行する
rem 管理者でない場合は、powershellで管理者として再実行する
rem 管理者でない場合は、最終的に実行するにしてもしないにしても
rem 本関数はエラーで返る
rem 
rem 戻り値
rem 0:はじめから管理者として実行されている。
rem 1:再帰的に呼び出され、管理者として実行されている。
rem   引数として、%RUN_AS_ADMIN_FRAG%が含まれているので、
rem   呼出し元で、shiftを１度呼び出してもらう必要がある。
rem   また、%*は使用してはいけない。
rem 2:別プロセスで本プログラムを管理者として再帰的に起動はしたが、
rem   このプロセス自体は非管理者。
rem   再帰的に呼び出した処理の結果は、このプロセスは関与しない。
rem 11:再帰的に呼び出されたプロセスで、"BUILTIN\Administrators"グループでないため、異常終了。
rem 12:再帰的に呼び出されたプロセスで、"Mandatory Label\High Mandatory Level"グループでないため、異常終了。
rem 13:再帰的に呼び出そうとしたところ、管理者として実行しないが選ばれた。
:RunAsAdmin
	rem 引数の整理
	rem 当関数には、メイン関数の%0が当関数の%1へ、%1が%2へ・・・と設定されている。
	rem 後で再帰的に呼び出すために、それを分ける
	set ORIGINAL_PATH=%1
	set FIRST_PARAM=%2
	set ORIGINAL_PARAMS=
	:RunAsAdmin_set_param
	shift
	if "%1" neq "" (
		set ORIGINAL_PARAMS=%ORIGINAL_PARAMS% %1
		goto :RunAsAdmin_set_param
	)
	
	
	rem 管理者として再起動するときに使用するフラグ
	set RUN_AS_ADMIN_FRAG=/__RUN_AS_ADMIN__
	
	rem このプログラムの戻り値
	set RUN_AS_ADMIN_RET=0
	
	rem whoamiコマンドで、
	rem BUILTIN\Administratorsグループがあれば、ADMIN=yes
	rem Mandatory Label\High Mandatory Levelグループがあれば、ELEVATED=yes
	rem が設定される
	for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
		if "%%~i"=="BUILTIN\Administrators" set ADMIN=yes
		if "%%~i"=="Mandatory Label\High Mandatory Level" set ELEVATED=yes
	)
	
	rem ADMIN=yesでなければならない（ユーザの問題）
	if "%ADMIN%" neq "yes" (
		echo このファイルは管理者権限での実行が必要です{Administratorsグループでない}
		rem "%2" neq "%RUN_AS_ADMIN_FRAG%"の場合は、
		rem 本関数で再帰的に実行されていないので、
		rem 再帰的に実行して確認する
		if "%FIRST_PARAM%" neq "%RUN_AS_ADMIN_FRAG%" goto RunAsAdmin_runas
		
		rem "%1" == "%RUN_AS_ADMIN_FRAG%"の場合は、
		rem powershellで実行されているのに、ADMIN=yesでないので、エラーコードを返す
		set RUN_AS_ADMIN_RET=11
		goto RunAsAdmin_exit
	)
	rem ELEVATED=yesでなければならない（プロセスの問題）
	if "%ELEVATED%" neq "yes" (
		echo このファイルは管理者権限での実行が必要です{プロセスが昇格されていない}
		rem "%1" neq "%RUN_AS_ADMIN_FRAG%"の場合は、
		rem 本関数で再帰的に実行されていないので、
		rem 再帰的に実行して確認する
		if "%FIRST_PARAM%" neq "%RUN_AS_ADMIN_FRAG%" goto RunAsAdmin_runas
		
		rem "%1" == "%RUN_AS_ADMIN_FRAG%"の場合は、
		rem powershellで実行されているのに、ELEVATED=yesでないので、エラーコードを返す
		set RUN_AS_ADMIN_RET=12
		goto RunAsAdmin_exit
	)
	
	rem 管理者で実行されているので、処理を継続していい
	set RUN_AS_ADMIN_RET=0
	rem OKだけど、powershellで再帰的に実行されている場合は
	rem 引数にRUN_AS_ADMIN_FRAGを持っているので、呼び出し元でshiftをする必要がある
	if "%FIRST_PARAM%" == "%RUN_AS_ADMIN_FRAG%" (
		set RUN_AS_ADMIN_RET=1
	)
	goto RunAsAdmin_exit
	
	rem 別プロセスを管理者として実行する
	rem 第一引数に%RUN_AS_ADMIN_FRAG%を入れる
:RunAsAdmin_runas
	powershell -Command Start-Process -Verb runas '%ORIGINAL_PATH%' -ArgumentList '%RUN_AS_ADMIN_FRAG% %ORIGINAL_PARAMS%'
	if ERRORLEVEL 1 (
		rem 管理者として実行しないが選ばれた
		set RUN_AS_ADMIN_RET=13
		goto RunAsAdmin_exit
	)
	
	rem このプロセスでは、実行しないのでエラーを返す
	set RUN_AS_ADMIN_RET=2
	
:RunAsAdmin_exit
	exit /b %RUN_AS_ADMIN_RET%


