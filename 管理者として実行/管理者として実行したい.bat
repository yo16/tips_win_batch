@echo off

rem http://www.atmarkit.co.jp/ait/articles/1002/05/news097.html


REM HINT=http://qiita.com/usagi/items/2623145f22faf54b99e0

cd %~dp0

:checkMandatoryLevel
REM ���Ǘ��҂Ƃ��Ď��s����Ă��邩�m�F START
for /f "tokens=1 delims=," %%i in ('whoami /groups /FO CSV /NH') do (
    if "%%~i"=="BUILTIN\Administrators" set ADMIN=yes
    if "%%~i"=="Mandatory Label\High Mandatory Level" set ELEVATED=yes
)

if "%ADMIN%" neq "yes" (
    echo ���̃t�@�C���͊Ǘ��Ҍ����ł̎��s���K�v�ł�{Administrators�O���[�v�łȂ�}
   if "%1" neq "/R" goto runas
   goto exit1
)
if "%ELEVATED%" neq "yes" (
    echo ���̃t�@�C���͊Ǘ��Ҍ����ł̎��s���K�v�ł�{�v���Z�X�����i����Ă��Ȃ�}
   if "%1" neq "/R" goto runas
   goto exit1
)
REM ���Ǘ��҂Ƃ��Ď��s����Ă��邩�m�F END


:admins
    REM ���Ǘ��҂Ƃ��Ď��s�������R�}���h START

    whoami /groups /FO CSV /NH
    pause

    REM ���Ǘ��҂Ƃ��Ď��s�������R�}���h END
    goto exit1

:runas
    REM ���Ǘ��҂Ƃ��čĎ��s
    powershell -Command Start-Process -Verb runas "%0" -ArgumentList "/R" 

:exit1