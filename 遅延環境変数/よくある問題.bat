rem �悭������

set STR=
set ELM=A B C
for %%e in (%ELM%) do (
	set STR=%STR%-%%e
)

echo %STR%
rem -C

rem ����
rem for����()�̒��̕ϐ��́Afor���Ăяo���ꂽ�Ƃ��ɂ��ׂēW�J�����B
rem �܂�for���������Ƃ��ɂ́A%STR%��""�Ȃ̂ŁA
rem for %%e in (A B C) do (set STR=-%%e )
rem �Ƃ��ē��삷��B
rem 
rem %STR%�́A���̓s�x�]�����ė~�����A�Ƃ������e��
rem ���̖��̔��[�B

pause



