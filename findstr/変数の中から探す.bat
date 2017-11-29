SET TEST="AABBCC"

rem echo を使うやりかた
ECHO %TEST% | FIND "BB"
IF NOT ERRORLEVEL 1 (
	ECHO ---1--- FOUND
) ELSE (
	ECHO ---1--- NOT FOUND
)



rem echoしないやりかた（@echo offしてるときとかで出したくない場合）
rem ...不明
IF NOT ERRORLEVEL 1 (
	ECHO ---2--- FOUND
) ELSE (
	ECHO ---2--- NOT FOUND
)


PAUSE

