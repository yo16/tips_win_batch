SET TEST="AABBCC"

rem echo ���g����肩��
ECHO %TEST% | FIND "BB"
IF NOT ERRORLEVEL 1 (
	ECHO ---1--- FOUND
) ELSE (
	ECHO ---1--- NOT FOUND
)



rem echo���Ȃ���肩���i@echo off���Ă�Ƃ��Ƃ��ŏo�������Ȃ��ꍇ�j
rem ...�s��
IF NOT ERRORLEVEL 1 (
	ECHO ---2--- FOUND
) ELSE (
	ECHO ---2--- NOT FOUND
)


PAUSE

