rem ������ɔ��p�ۊ��ʂ�����ƁA�v���O�����̊ۊ��ʂƂ��ēW�J���Ă��܂��Ή�

set AA="^)"

if 1==1 (
	rem ������Ŋۊ��ʂ�echo����
	echo %AA:"=%
	rem ������͎��s�����
	echo AA
) else (
	rem �����ꂪ���s����邱�Ƃ������
	echo BB
)

echo,
echo,
echo,



rem NG�ȗ�1
set BB=)
if 1==1 (
	rem ������Ŋۊ��ʂ�echo����
	echo %BB%
	rem ������͎��s�����
	echo AA
) else (
	rem �����ꂪ���s����邱�Ƃ������
	echo BB
)

rem NG�ȗ�2
set CC=^)
if 1==1 (
	rem ������Ŋۊ��ʂ�echo����
	echo %CC%
	rem ������͎��s�����
	echo AA
) else (
	rem �����ꂪ���s����邱�Ƃ������
	echo BB
)


pause
