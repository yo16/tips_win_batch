set A=09

rem ����̓G���[
rem 08��09�̓_���炵��
set /a B=%A%*60+%A%
echo %B%



rem �擪��0�̏ꍇ��2�����ڂ����g�p����
if "%A:~0,1%"=="0" set A=%A:~1,1%
set /a B=%A%*60+%A%
echo %B%


pause
