rem �R�����g�ɔ������Ă��܂��̂ŃX�L�b�v
goto :start
rem ���L�̓w���v���
rem        %~1         - ���ׂĂ̈��p�� (") ���폜���āA%1 ��W�J���܂��B
rem        %~f1        - %1 �����S�C���p�X���ɓW�J���܂��B
rem        %~d1        - %1 ���h���C�u���������ɓW�J���܂��B
rem        %~p1        - %1 ���p�X�����ɓW�J���܂��B
rem        %~n1        - %1 ���t�@�C���������ɓW�J���܂��B
rem        %~x1        - %1 ���t�@�C���g���q�����ɓW�J���܂��B
rem        %~s1        - �W�J���ꂽ�p�X�́A�Z�����O�������܂݂܂��B
rem        %~a1        - %1 ���t�@�C�������ɓW�J���܂��B
rem        %~t1        - %1 ���t�@�C���̓��t/�����ɓW�J���܂��B
rem        %~z1        - %1 ���t�@�C���̃T�C�Y�ɓW�J���܂��B
rem        %~$PATH:1   - PATH ���ϐ��Ɏw�肳��Ă���f�B���N�g�����������A
rem                       �ŏ��Ɍ����������S�C������ %1 ��W�J���܂��B
rem                       ���ϐ�������`����Ă��Ȃ��ꍇ�A�܂���
rem                       �������Ă��t�@�C����������Ȃ������ꍇ�́A
rem                       ���̏C���q���w�肷��Ƌ�̕�����ɓW�J����܂��B
rem
rem    �C���q��g�ݍ��킹�āA�������ʂ𓾂邱�Ƃ��ł��܂�:
rem
rem        %~dp1       - %1 ���h���C�u�����ƃp�X�����ɓW�J���܂��B
rem        %~nx1       - %1 ���t�@�C�����Ɗg���q�����ɓW�J���܂��B
rem        %~dp$PATH:1 - PATH ���ϐ��Ɏw�肳��Ă���f�B���N�g����
rem                       �������� %1 ��T���A�ŏ��Ɍ��������t�@�C��
rem                       �̃h���C�u�����ƃp�X�����ɓW�J���܂��B
rem        %~ftza1     - %1 �� DIR �̏o�͍s�̂悤�ɓW�J���܂��B
rem
rem    ��̗�� %1 �� PATH �́A���̗L���Ȓl�Œu�������邱�Ƃ��ł�
rem    �܂��B%~ �\���͗L���Ȉ����̐��ɂ���ċ�؂��܂��B%~ �C���q
rem    �� %* �Ɠ����ɂ͎g�p�ł��܂���B
:start

CALL :fileNameTest "c:\temp\aa\b.txt"
pause

exit


:fileNameTest
	set FILE_NAME=%~nx1
	set DRIVE=%~d1
	set PARENT_DIR=%~p1
	
	
	ECHO %FILE_NAME%
	rem �� b.txt
	
	ECHO %DRIVE%
	rem �� c:
	
	ECHO %PARENT_DIR%
	rem �� \Temp\aa\
	
	exit /b 0
