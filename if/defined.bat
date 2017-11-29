rem 2005/09/30

:set PPP=1

if defined PPP (
	echo 123
) else (
	echo 321
)

pause

rem Not‚àg‚¦‚é‚©‚ÈH
:if not defined PPP (
:	echo 123
:) else (
:	echo 321
:)
rem not‚Íg‚¦‚È‚¢‚ç‚µ‚¢

rem «‰ñ”ğô
if defined PPPQ else (
	echo 321
)


pause
