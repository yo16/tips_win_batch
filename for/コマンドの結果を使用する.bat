
rem dir�̌��ʂ��g�p����
dir
rem 2017/11/29  08:54    <DIR>          .
rem 2017/11/29  08:54    <DIR>          ..
rem 2017/11/29  08:45                 6 .gitignore
rem 2017/11/29  08:53               284 delimiter.bat
rem 2017/11/29  08:47               200 for_file.bat
rem 2017/11/29  08:47                76 for_�ꗗ.bat
rem 2017/11/29  08:53                14 sample.txt
rem 2017/11/29  08:54                16 �R�}���h�̌��ʂ��g�p����.bat
rem                6 �̃t�@�C��                 596 �o�C�g
rem                2 �̃f�B���N�g��  273,113,378,816 �o�C�g�̋󂫗̈�


for /F "usebackq tokens=1,2,3 delims=/ " %%a in (`dir`) do (
	echo,%%a--%%b--%%c
)
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29
rem 2017--11--29


pause
