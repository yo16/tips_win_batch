@echo off

rem �C�ӂ̒����̈���������

call :test1 1 2 3 4 5

pause
exit



rem -------------------------
:test1
rem �܂Ƃ߂Ĉ����ꍇ
set ARG=%*
echo %ARG%
rem 1 2 3 4 5


rem �P�������ꍇ�@���̂P
for %%e in (%*) do (
	echo %%e
)
rem 1
rem 2
rem 3
rem 4
rem 5


rem �P�������ꍇ�@���̂Q
:test1_3_start
if "%1" == "" goto :test1_3_end
echo %1
shift
goto :test1_3_start

:test1_3_end


exit /b 0
