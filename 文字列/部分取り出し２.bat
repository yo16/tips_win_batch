

SET AAA=01234567890
echo %AAA%


rem �擪����R�����ڈȍ~�����ɂ���
set BBB=%AAA:~2%
echo %BBB%
REM 234567890


rem �}�C�i�X����ꂽ�Ƃ�
rem ��납��
set CCC=%AAA:~-2%
echo %CCC%
REM 90


rem ���R�������g����
set DDD=%AAA:~0,-3%
echo %DDD%
REM 01234567


pause
