
rem %DATE%�A%TIME%�̏�������A�����̗���֕ϊ�����
rem �R���g���[���p�l���̒n��ƌ���̃I�v�V�����ŁA
rem ���̏�����ύX���邱�Ƃ��ł���̂�
rem ��ʓI�Ɏg���ꍇ�͗v���ӁB
rem yyyy/mm/dd (ddd) �Ƃ� yyyy-mm-dd �Ƃ��B
rem 
rem 2018 (c) yo16

set DT=%DATE%
set DT=%DT:/=%
set DT=%DT:-=%
set DT=%DT::=%
set DT=%DT: =0%

echo %DT%

set TM=%TIME%
set TM=%TM::=%
set TM=%TM: =0%
set TM=%TM:~0,6%

echo %TM%

pause

