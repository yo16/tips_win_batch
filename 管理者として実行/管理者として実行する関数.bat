@echo off

rem �ŏ��ɏ�����call��������΁A
rem �Ǘ��҂Ƃ��Ď��s����Ă��Ȃ��ꍇ��
rem �Ǘ��Ҍ��������߂čĎ��s����֐�
rem 
rem 2018 (c) yo16


call :RunAsAdmin %0 %*
echo ErrorLevel:%ERRORLEVEL%
if ERRORLEVEL 2 (
	rem �Ǘ��҂Ƃ��Ď��s���Ȃ�����(�ċN�����ꂽ��ɋ��ۂ���)�ꍇ�̏���
	echo 'not-admin...'
	
	pause
	exit 1
)
if ERRORLEVEL 1 (
	rem �ċA�Ăяo���p�̈���RUN_AS_ADMIN_FRAG���t���Ă���̂ŁA
	rem shift���ď������p������
	shift
)

rem �Ǘ��҂ƂĎ��s����鏈��
echo i'm admin!
echo 1:%1
echo 2:%2
echo 3:%3
pause
exit 0



rem �Ǘ��҂Ƃ��Ď��s����
rem �Ǘ��҂łȂ��ꍇ�́Apowershell�ŊǗ��҂Ƃ��čĎ��s����
rem �Ǘ��҂łȂ��ꍇ�́A�ŏI�I�Ɏ��s����ɂ��Ă����Ȃ��ɂ��Ă�
rem �{�֐��̓G���[�ŕԂ�
rem 
rem �߂�l
rem 0:�͂��߂���Ǘ��҂Ƃ��Ď��s����Ă���B
rem 1:�ċA�I�ɌĂяo����A�Ǘ��҂Ƃ��Ď��s����Ă���B
rem   �����Ƃ��āA%RUN_AS_ADMIN_FRAG%���܂܂�Ă���̂ŁA
rem   �ďo�����ŁAshift���P�x�Ăяo���Ă��炤�K�v������B
rem   �܂��A%*�͎g�p���Ă͂����Ȃ��B
rem 2:�ʃv���Z�X�Ŗ{�v���O�������Ǘ��҂Ƃ��čċA�I�ɋN���͂������A
rem   ���̃v���Z�X���͔̂�Ǘ��ҁB
rem   �ċA�I�ɌĂяo���������̌��ʂ́A���̃v���Z�X�͊֗^���Ȃ��B
rem 11:�ċA�I�ɌĂяo���ꂽ�v���Z�X�ŁA"BUILTIN\Administrators"�O���[�v�łȂ����߁A�ُ�I���B
rem 12:�ċA�I�ɌĂяo���ꂽ�v���Z�X�ŁA"Mandatory Label\High Mandatory Level"�O���[�v�łȂ����߁A�ُ�I���B
rem 13:�ċA�I�ɌĂяo�����Ƃ����Ƃ���A�Ǘ��҂Ƃ��Ď��s���Ȃ����I�΂ꂽ�B
:RunAsAdmin
	rem �����̐���
	rem ���֐��ɂ́A���C���֐���%0�����֐���%1�ցA%1��%2�ցE�E�E�Ɛݒ肳��Ă���B
	rem ��ōċA�I�ɌĂяo�����߂ɁA����𕪂���
	set ORIGINAL_PATH=%1
	set FIRST_PARAM=%2
	set ORIGINAL_PARAMS=
	:RunAsAdmin_set_param
	shift
	if "%1" neq "" (
		set ORIGINAL_PARAMS=%ORIGINAL_PARAMS% %1
		goto :RunAsAdmin_set_param
	)
	
	
	rem �Ǘ��҂Ƃ��čċN������Ƃ��Ɏg�p����t���O
	set RUN_AS_ADMIN_FRAG=/__RUN_AS_ADMIN__
	
	rem ���̃v���O�����̖߂�l
	set RUN_AS_ADMIN_RET=0
	
	rem whoami�R�}���h�ŁA
	rem BUILTIN\Administrators�O���[�v������΁AADMIN=yes
	rem Mandatory Label\High Mandatory Level�O���[�v������΁AELEVATED=yes
	rem ���ݒ肳���
	for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
		if "%%~i"=="BUILTIN\Administrators" set ADMIN=yes
		if "%%~i"=="Mandatory Label\High Mandatory Level" set ELEVATED=yes
	)
	
	rem ADMIN=yes�łȂ���΂Ȃ�Ȃ��i���[�U�̖��j
	if "%ADMIN%" neq "yes" (
		echo ���̃t�@�C���͊Ǘ��Ҍ����ł̎��s���K�v�ł�{Administrators�O���[�v�łȂ�}
		rem "%2" neq "%RUN_AS_ADMIN_FRAG%"�̏ꍇ�́A
		rem �{�֐��ōċA�I�Ɏ��s����Ă��Ȃ��̂ŁA
		rem �ċA�I�Ɏ��s���Ċm�F����
		if "%FIRST_PARAM%" neq "%RUN_AS_ADMIN_FRAG%" goto RunAsAdmin_runas
		
		rem "%1" == "%RUN_AS_ADMIN_FRAG%"�̏ꍇ�́A
		rem powershell�Ŏ��s����Ă���̂ɁAADMIN=yes�łȂ��̂ŁA�G���[�R�[�h��Ԃ�
		set RUN_AS_ADMIN_RET=11
		goto RunAsAdmin_exit
	)
	rem ELEVATED=yes�łȂ���΂Ȃ�Ȃ��i�v���Z�X�̖��j
	if "%ELEVATED%" neq "yes" (
		echo ���̃t�@�C���͊Ǘ��Ҍ����ł̎��s���K�v�ł�{�v���Z�X�����i����Ă��Ȃ�}
		rem "%1" neq "%RUN_AS_ADMIN_FRAG%"�̏ꍇ�́A
		rem �{�֐��ōċA�I�Ɏ��s����Ă��Ȃ��̂ŁA
		rem �ċA�I�Ɏ��s���Ċm�F����
		if "%FIRST_PARAM%" neq "%RUN_AS_ADMIN_FRAG%" goto RunAsAdmin_runas
		
		rem "%1" == "%RUN_AS_ADMIN_FRAG%"�̏ꍇ�́A
		rem powershell�Ŏ��s����Ă���̂ɁAELEVATED=yes�łȂ��̂ŁA�G���[�R�[�h��Ԃ�
		set RUN_AS_ADMIN_RET=12
		goto RunAsAdmin_exit
	)
	
	rem �Ǘ��҂Ŏ��s����Ă���̂ŁA�������p�����Ă���
	set RUN_AS_ADMIN_RET=0
	rem OK�����ǁApowershell�ōċA�I�Ɏ��s����Ă���ꍇ��
	rem ������RUN_AS_ADMIN_FRAG�������Ă���̂ŁA�Ăяo������shift������K�v������
	if "%FIRST_PARAM%" == "%RUN_AS_ADMIN_FRAG%" (
		set RUN_AS_ADMIN_RET=1
	)
	goto RunAsAdmin_exit
	
	rem �ʃv���Z�X���Ǘ��҂Ƃ��Ď��s����
	rem ��������%RUN_AS_ADMIN_FRAG%������
:RunAsAdmin_runas
	powershell -Command Start-Process -Verb runas '%ORIGINAL_PATH%' -ArgumentList '%RUN_AS_ADMIN_FRAG% %ORIGINAL_PARAMS%'
	if ERRORLEVEL 1 (
		rem �Ǘ��҂Ƃ��Ď��s���Ȃ����I�΂ꂽ
		set RUN_AS_ADMIN_RET=13
		goto RunAsAdmin_exit
	)
	
	rem ���̃v���Z�X�ł́A���s���Ȃ��̂ŃG���[��Ԃ�
	set RUN_AS_ADMIN_RET=2
	
:RunAsAdmin_exit
	exit /b %RUN_AS_ADMIN_RET%


