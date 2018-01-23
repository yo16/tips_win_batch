@echo off

rem パスからフォルダを作成
rem 2018 (c) yo16

set TESTPATH=.\a\b\c

call :CreatePathDir "%TESTPATH%"

pause
exit 0



rem 指定されたフォルダパスを作成する
:CreatePathDir
	rem 末尾が\の場合は、\を外して再呼び出し(%~dp1を使いたいため)
	SET INSTR=%~1
	SET INSTR_TAIL=%INSTR:~-1,1%
	SET INSTR_TRIMMED=%INSTR:~0,-1%
	IF "%INSTR_TAIL%" == "\" (
		CALL :CreatePathDir "%INSTR_TRIMMED%"
		EXIT /B 0
	)

	rem 一番下のフォルダ部を除外して、
	rem 存在していなければ、再帰
	SET UPPERDIR=%~dp1
	rem echo %UPPERDIR%
	rem 末尾の\を外す
	SET UPPERDIR_TRIMMED=%UPPERDIR:~0,-1%
	IF NOT EXIST "%UPPERDIR%" (
		rem 最後の\をはずす
		CALL :CreatePathDir "%UPPERDIR_TRIMMED%"
	)

	rem 指定されたフォルダを作成する
	MKDIR "%~1"


	EXIT /b 0
