rem �v���ӁI
rem ERRORLEVEL��if���́A���L�̎d�l�̂��߁A
rem ���Ȃ炸�傫�����l����IF���������Ȃ��Ƃ����Ȃ��B
rem Cmd.exe �ɂ���Ď��s����Ă��钼�O�̃v���O�������� number ����
rem �傫�����܂��͓������I���R�[�h���Ԃ��ꂽ�Ƃ��ɁA�������^�ł��邱�Ƃ��w�肵�܂��B 


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

