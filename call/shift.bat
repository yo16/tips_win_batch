
call :test1 1 2 3 4 5
pause
exit




:test1
echo %1
rem 1

echo %2
rem 2

echo %3
rem 3

echo %4
rem 4

echo %5
rem 5



rem %2�������āA%3�ȍ~���P�����炷�B
rem /2���Ȃ��ƁA/1�̈Ӗ��B
shift /2



echo %1
rem 1

echo %2
rem 3
rem �� ����ڍs������Ă���B

echo %3
rem 4

echo %4
rem 5

echo %5
rem ECHO �� <ON> �ł��B



rem ����
rem %*�́Ashift�ɂ�炸�A���ׂĎ擾����B
echo %*
rem 1 2 3 4 5



exit /b 0

