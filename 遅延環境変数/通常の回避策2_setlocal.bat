rem !�̕ϐ��͒x�����ϐ��Ȃ̂�
rem ���̂悤�ɓW�J����A�Ƃ����錾�B
rem ���ꂪ����΁A�P�Ƃł��x���œW�J�����B
setlocal enabledelayedexpansion

set STR=
set ELM=A B C
for %%e in (%ELM%) do (
	set STR=!STR!-%%e
)

echo %STR%
rem echo -A-B-C

pause
