
:getolddt_start
rem ２週間前の日付を取得
rem テスト
rem input      期待値     備考
rem ---------- ---------- ------------------------------------
rem 2013/01/01 2012/12/18 年・月の繰り下げがあるパターン
rem 2013/01/14 2012/12/31 年・月の繰り下げがあるパターン
rem 2013/01/15 2013/01/01 
rem 2013/02/14 2013/01/31 月の繰り下げがあるパターン
rem 2013/02/15 2013/02/01 
rem 2013/03/14 2013/02/28 月の繰り下げがあるパターン
rem 2013/03/15 2013/03/01 
rem 2013/12/14 2013/11/30 月の繰り下げがあるパターン
rem 2013/12/15 2013/12/01 
rem 2013/12/31 2013/12/17 
set DEBUG_GETOLDDT=0
set DTO_Y=%DT_Y%
set DTO_M=%DT_M%
set DTO_D=%DT_D%
rem 日を引き算すると繰り下げが起こる場合あらかじめ加算
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
rem 月を引き算すると繰り下げが起こる場合はあらかじめ加算
if %DTO_M% GTR 1 goto :getolddt_2
set /a DTO_M=%DTO_M%+12
rem 年を引き算
set /a DTO_Y=%DTO_Y%-1
:getolddt_2
rem 月を引き算
set /a DTO_M=%DTO_M%-1
if %DTO_M% LSS 10 set DTO_M=0%DTO_M%
:getolddt_1
rem 日を引き算
set /a DTO_D=%DTO_D%-14
if %DTO_D% LSS 10 set DTO_D=0%DTO_D%
if %DEBUG_GETOLDDT%==1 echo now:%DT_Y%/%DT_M%/%DT_D% old:%DTO_Y%/%DTO_M%/%DTO_D%

