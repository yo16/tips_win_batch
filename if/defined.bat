rem 2005/09/30

:set PPP=1

if defined PPP (
	echo 123
) else (
	echo 321
)

pause

rem Not���g���邩�ȁH
:if not defined PPP (
:	echo 123
:) else (
:	echo 321
:)
rem not�͎g���Ȃ��炵��

rem �������
if defined PPPQ else (
	echo 321
)


pause
