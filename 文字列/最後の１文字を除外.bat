@echo off

rem 最後の１文字を除外
rem 2018 (c) yo16

set STR1=1234

set STR2=%STR1:~0,-1%

echo %STR2%

pause
