@echo off
set TEST1=D:\workspace\batch_SandBox\filename.bat
set TEST2="D:\workspace\batch_SandBox\filename.bat"
set TEST3=grep.exe
echo ���t���p�X
call :GET_FILENAME %TEST1%
echo ��""�ł��������t�@�C���p�X
call :GET_FILENAME %TEST2%
echo ���J�����g�ɂ͂Ȃ��A���ϐ�PATH�ɐݒ肳��Ă�f�B���N�g���ɂ���R�}���h
call :GET_FILENAME %TEST3%
GOTO :END

:GET_FILENAME
echo -�I���W�i��
echo     %1
echo -���ׂĂ̈��p�� (") ���폜���āA���ϐ� ��W�J���܂��B
echo     %~1
echo -���ϐ� �����S�C���p�X���ɓW�J���܂��B
echo     %~f1
echo -���ϐ� ���h���C�u���������ɓW�J���܂��B
echo     %~d1
echo -���ϐ� ���p�X�������ɓW�J���܂��B
echo     %~p1
echo -���ϐ� ���t�@�C���������ɓW�J���܂��B
echo     %~n1
echo -���ϐ� ���t�@�C���g���q�����ɓW�J���܂��B
echo     %~x1
echo -�W�J���ꂽ�p�X�͒Z�����O�������܂݂܂��B
echo     %~s1
echo -���ϐ� ���t�@�C���̑����ɓW�J���܂��B
echo     %~a1
echo -���ϐ� �t�@�C���̓��t/�����ɓW�J���܂��B
echo     %~t1
echo -���ϐ� �t�@�C���̃T�C�Y�ɓW�J���܂��B
echo     %~z1
echo -PATH �����ϐ��Ɏw�肳��Ă���f�B���N�g����  
echo  �������A�ŏ��Ɍ����������S�C������ ���ϐ� ��   
echo  �W�J���܂��B                                 
echo  �����ϐ�������`����Ă��Ȃ��ꍇ�A�܂��͌��� 
echo  ���Ă��t�@�C����������Ȃ������ꍇ�́A���� 
echo  �C���q���w�肷��Ƌ�̕�����ɓW�J����܂��B
echo     %~$PATH:1
echo.
echo �C���q��g�ݍ��킹�āA�������ʂ𓾂邱�Ƃ��ł��܂�:
echo -���ϐ� ���h���C�u�����ƃp�X�����ɓW�J���܂��B
echo     %~dp1
echo -���ϐ� ���t�@�C�����Ɗg���q�����ɓW�J���܂��B
echo     %~nx1
echo -���ϐ� �����S�ȃp�X�ƒZ�����O�����ɓW�J���܂��B
echo     %~fs1
echo -PATH �����ϐ��Ɏw�肳��Ă���f�B���N�g����
echo  �������� ���ϐ� ��T���A�ŏ��Ɍ��������t�@�C��
echo  �̃h���C�u�����ƃp�X�����ɓW�J���܂��B
echo     %~dp$PATH:1
echo ���ϐ� �� DIR �R�}���h�̏o�͍s�̂悤�ɓW�J���܂��B
echo     %~ftza1
echo.
echo.
echo.
pause
