rem 2005/09/30

:set PPP=1

if defined PPP (
	echo 123
) else (
	echo 321
)

pause

rem Notも使えるかな？
:if not defined PPP (
:	echo 123
:) else (
:	echo 321
:)
rem notは使えないらしい

rem ↓回避策
if defined PPPQ else (
	echo 321
)


pause
