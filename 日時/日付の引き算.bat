
:getolddt_start
rem �Q�T�ԑO�̓��t���擾
rem �e�X�g
rem input      ���Ғl     ���l
rem ---------- ---------- ------------------------------------
rem 2013/01/01 2012/12/18 �N�E���̌J�艺��������p�^�[��
rem 2013/01/14 2012/12/31 �N�E���̌J�艺��������p�^�[��
rem 2013/01/15 2013/01/01 
rem 2013/02/14 2013/01/31 ���̌J�艺��������p�^�[��
rem 2013/02/15 2013/02/01 
rem 2013/03/14 2013/02/28 ���̌J�艺��������p�^�[��
rem 2013/03/15 2013/03/01 
rem 2013/12/14 2013/11/30 ���̌J�艺��������p�^�[��
rem 2013/12/15 2013/12/01 
rem 2013/12/31 2013/12/17 
set DEBUG_GETOLDDT=0
set DTO_Y=%DT_Y%
set DTO_M=%DT_M%
set DTO_D=%DT_D%
rem ���������Z����ƌJ�艺�����N����ꍇ���炩���߉��Z
if %DTO_D% GTR 14 goto :getolddt_1
if %DT_M% EQU  1 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU  2 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU  3 set /a DTO_D=%DTO_D%+28
if %DT_M% EQU  4 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU  5 set /a DTO_D=%DTO_D%+30
if %DT_M% EQU  6 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU  7 set /a DTO_D=%DTO_D%+30
if %DT_M% EQU  8 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU  9 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU 10 set /a DTO_D=%DTO_D%+30
if %DT_M% EQU 11 set /a DTO_D=%DTO_D%+31
if %DT_M% EQU 12 set /a DTO_D=%DTO_D%+30
rem ���������Z����ƌJ�艺�����N����ꍇ�͂��炩���߉��Z
if %DTO_M% GTR 1 goto :getolddt_2
set /a DTO_M=%DTO_M%+12
rem �N�������Z
set /a DTO_Y=%DTO_Y%-1
:getolddt_2
rem ���������Z
set /a DTO_M=%DTO_M%-1
if %DTO_M% LSS 10 set DTO_M=0%DTO_M%
:getolddt_1
rem ���������Z
set /a DTO_D=%DTO_D%-14
if %DTO_D% LSS 10 set DTO_D=0%DTO_D%
if %DEBUG_GETOLDDT%==1 echo now:%DT_Y%/%DT_M%/%DT_D% old:%DTO_Y%/%DTO_M%/%DTO_D%

