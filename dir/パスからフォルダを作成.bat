@echo off

rem �p�X����t�H���_���쐬
rem 2018 (c) yo16

set TESTPATH=.\a\b\c

call :CreatePathDir "%TESTPATH%"

pause
exit 0



rem �w�肳�ꂽ�t�H���_�p�X���쐬����
:CreatePathDir
	rem ������\�̏ꍇ�́A\���O���čČĂяo��(%~dp1���g����������)
	SET INSTR=%~1
	SET INSTR_TAIL=%INSTR:~-1,1%
	SET INSTR_TRIMMED=%INSTR:~0,-1%
	IF "%INSTR_TAIL%" == "\" (
		CALL :CreatePathDir "%INSTR_TRIMMED%"
		EXIT /B 0
	)

	rem ��ԉ��̃t�H���_�������O���āA
	rem ���݂��Ă��Ȃ���΁A�ċA
	SET UPPERDIR=%~dp1
	rem echo %UPPERDIR%
	rem ������\���O��
	SET UPPERDIR_TRIMMED=%UPPERDIR:~0,-1%
	IF NOT EXIST "%UPPERDIR%" (
		rem �Ō��\���͂���
		CALL :CreatePathDir "%UPPERDIR_TRIMMED%"
	)

	rem �w�肳�ꂽ�t�H���_���쐬����
	MKDIR "%~1"


	EXIT /b 0
