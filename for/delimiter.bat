
echo,aa/bb>sample.txt
echo,cc/dd>>sample.txt

rem /�ŋ�؂��āA�P���ږڂƂQ���ږڂ��g���Btokens=1,2
rem tokens�̐�������̏ꍇ��tokens=*�ł������B�i���肾�ƃv���O�����������Ȃ�����...�j
rem �P���ږڂ̕ϐ����������w�肵�āA
rem �Q���ږڂ̕ϐ����͎��̃A���t�@�x�b�g�ɂȂ�
for /F "tokens=1,2 delims=/" %%a in (sample.txt) do (
	echo %%a-%%b
)
rem aa-bb
rem cc-dd

pause
